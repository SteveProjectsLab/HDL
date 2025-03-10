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

-- DATE "02/08/2025 10:08:06"

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
	PCB_MOSI : BUFFER std_logic;
	PCB_SCK : BUFFER std_logic;
	LED : BUFFER std_logic_vector(3 DOWNTO 0);
	FPGA_CLK1_50 : IN std_logic;
	PCB_RS : BUFFER std_logic;
	PCB_RW : BUFFER std_logic;
	PCB_E : BUFFER std_logic;
	PCB_MISO : BUFFER std_logic;
	PCB_DB : BUFFER std_logic_vector(7 DOWNTO 0);
	PCB_BT0 : IN std_logic;
	PCB_BT1 : IN std_logic;
	PCB_BT2 : IN std_logic;
	PCB_BT3 : IN std_logic
	);
END top;

-- Design Ports Information
-- LED[0]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[1]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[2]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[3]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCB_RS	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCB_RW	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCB_E	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCB_DB[0]	=>  Location: PIN_Y18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCB_DB[1]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCB_DB[2]	=>  Location: PIN_AG25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCB_DB[3]	=>  Location: PIN_AG26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCB_DB[4]	=>  Location: PIN_AE25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCB_DB[5]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCB_DB[6]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCB_DB[7]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCB_MISO	=>  Location: PIN_AA11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCB_MOSI	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCB_SCK	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FPGA_CLK1_50	=>  Location: PIN_V11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PCB_BT2	=>  Location: PIN_AF22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCB_BT3	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCB_BT0	=>  Location: PIN_AD5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCB_BT1	=>  Location: PIN_AH23,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_PCB_MOSI : std_logic;
SIGNAL ww_PCB_SCK : std_logic;
SIGNAL ww_LED : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_FPGA_CLK1_50 : std_logic;
SIGNAL ww_PCB_RS : std_logic;
SIGNAL ww_PCB_RW : std_logic;
SIGNAL ww_PCB_E : std_logic;
SIGNAL ww_PCB_MISO : std_logic;
SIGNAL ww_PCB_DB : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_PCB_BT0 : std_logic;
SIGNAL ww_PCB_BT1 : std_logic;
SIGNAL ww_PCB_BT2 : std_logic;
SIGNAL ww_PCB_BT3 : std_logic;
SIGNAL \PCB_MISO~input_o\ : std_logic;
SIGNAL \PCB_MOSI~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \FPGA_CLK1_50~input_o\ : std_logic;
SIGNAL \FPGA_CLK1_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \PCB_SCK~input_o\ : std_logic;
SIGNAL \spi0|spi|sck_synchronizer[3]~feeder_combout\ : std_logic;
SIGNAL \spi0|spi|sck_synchronizer[4]~feeder_combout\ : std_logic;
SIGNAL \spi0|spi|sck_synchronizer[4]~DUPLICATE_q\ : std_logic;
SIGNAL \spi0|spi|sck_synchronizer[5]~DUPLICATE_q\ : std_logic;
SIGNAL \spi0|spi|flag2~q\ : std_logic;
SIGNAL \spi0|spi|flag2~0_combout\ : std_logic;
SIGNAL \spi0|spi|flag2~DUPLICATE_q\ : std_logic;
SIGNAL \spi0|spi|flag~q\ : std_logic;
SIGNAL \spi0|spi|flag~0_combout\ : std_logic;
SIGNAL \spi0|spi|flag~DUPLICATE_q\ : std_logic;
SIGNAL \spi0|spi|process_0~0_combout\ : std_logic;
SIGNAL \spi0|spi|rdcnt[0]~3_combout\ : std_logic;
SIGNAL \spi0|spi|rdcnt[1]~2_combout\ : std_logic;
SIGNAL \spi0|spi|rdcnt[2]~1_combout\ : std_logic;
SIGNAL \spi0|spi|rdcnt[3]~0_combout\ : std_logic;
SIGNAL \spi0|spi|read_me~0_combout\ : std_logic;
SIGNAL \spi0|spi|read_me~q\ : std_logic;
SIGNAL \spi0|state~0_combout\ : std_logic;
SIGNAL \spi0|state~feeder_combout\ : std_logic;
SIGNAL \spi0|state~q\ : std_logic;
SIGNAL \tim_100kHz|Add0~33_sumout\ : std_logic;
SIGNAL \tim_100kHz|Add0~34\ : std_logic;
SIGNAL \tim_100kHz|Add0~1_sumout\ : std_logic;
SIGNAL \tim_100kHz|Add0~2\ : std_logic;
SIGNAL \tim_100kHz|Add0~29_sumout\ : std_logic;
SIGNAL \tim_100kHz|Add0~30\ : std_logic;
SIGNAL \tim_100kHz|Add0~5_sumout\ : std_logic;
SIGNAL \tim_100kHz|Add0~6\ : std_logic;
SIGNAL \tim_100kHz|Add0~25_sumout\ : std_logic;
SIGNAL \tim_100kHz|Add0~26\ : std_logic;
SIGNAL \tim_100kHz|Add0~21_sumout\ : std_logic;
SIGNAL \tim_100kHz|Add0~22\ : std_logic;
SIGNAL \tim_100kHz|Add0~17_sumout\ : std_logic;
SIGNAL \tim_100kHz|Add0~18\ : std_logic;
SIGNAL \tim_100kHz|Add0~13_sumout\ : std_logic;
SIGNAL \tim_100kHz|Add0~14\ : std_logic;
SIGNAL \tim_100kHz|Add0~9_sumout\ : std_logic;
SIGNAL \tim_100kHz|Equal0~0_combout\ : std_logic;
SIGNAL \tim_100kHz|Equal0~1_combout\ : std_logic;
SIGNAL \tim_100kHz|clock_signal~0_combout\ : std_logic;
SIGNAL \tim_100kHz|clock_signal~feeder_combout\ : std_logic;
SIGNAL \tim_100kHz|clock_signal~q\ : std_logic;
SIGNAL \PCB_BT3~input_o\ : std_logic;
SIGNAL \PCB_BT0~input_o\ : std_logic;
SIGNAL \PCB_BT2~input_o\ : std_logic;
SIGNAL \PCB_BT1~input_o\ : std_logic;
SIGNAL \btn_controller|and_buttons~0_combout\ : std_logic;
SIGNAL \btn_controller|and_buttons~q\ : std_logic;
SIGNAL \btn_controller|Add0~77_sumout\ : std_logic;
SIGNAL \btn_controller|delay~20_combout\ : std_logic;
SIGNAL \btn_controller|delay[13]~1_combout\ : std_logic;
SIGNAL \btn_controller|Add0~78\ : std_logic;
SIGNAL \btn_controller|Add0~81_sumout\ : std_logic;
SIGNAL \btn_controller|delay~21_combout\ : std_logic;
SIGNAL \btn_controller|Add0~82\ : std_logic;
SIGNAL \btn_controller|Add0~85_sumout\ : std_logic;
SIGNAL \btn_controller|delay~22_combout\ : std_logic;
SIGNAL \btn_controller|Add0~86\ : std_logic;
SIGNAL \btn_controller|Add0~89_sumout\ : std_logic;
SIGNAL \btn_controller|delay~23_combout\ : std_logic;
SIGNAL \btn_controller|Add0~90\ : std_logic;
SIGNAL \btn_controller|Add0~93_sumout\ : std_logic;
SIGNAL \btn_controller|delay~24_combout\ : std_logic;
SIGNAL \btn_controller|delay[4]~DUPLICATE_q\ : std_logic;
SIGNAL \btn_controller|Add0~94\ : std_logic;
SIGNAL \btn_controller|Add0~97_sumout\ : std_logic;
SIGNAL \btn_controller|delay~25_combout\ : std_logic;
SIGNAL \btn_controller|delay[5]~DUPLICATE_q\ : std_logic;
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
SIGNAL \btn_controller|delay[9]~DUPLICATE_q\ : std_logic;
SIGNAL \btn_controller|Add0~114\ : std_logic;
SIGNAL \btn_controller|Add0~117_sumout\ : std_logic;
SIGNAL \btn_controller|delay~30_combout\ : std_logic;
SIGNAL \btn_controller|Add0~118\ : std_logic;
SIGNAL \btn_controller|Add0~121_sumout\ : std_logic;
SIGNAL \btn_controller|delay~31_combout\ : std_logic;
SIGNAL \btn_controller|Equal0~4_combout\ : std_logic;
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
SIGNAL \btn_controller|Add0~62\ : std_logic;
SIGNAL \btn_controller|Add0~65_sumout\ : std_logic;
SIGNAL \btn_controller|delay~17_combout\ : std_logic;
SIGNAL \btn_controller|Add0~66\ : std_logic;
SIGNAL \btn_controller|Add0~69_sumout\ : std_logic;
SIGNAL \btn_controller|delay~18_combout\ : std_logic;
SIGNAL \btn_controller|delay[16]~DUPLICATE_q\ : std_logic;
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
SIGNAL \btn_controller|Add0~42\ : std_logic;
SIGNAL \btn_controller|Add0~45_sumout\ : std_logic;
SIGNAL \btn_controller|delay~12_combout\ : std_logic;
SIGNAL \btn_controller|delay[22]~DUPLICATE_q\ : std_logic;
SIGNAL \btn_controller|delay[23]~DUPLICATE_q\ : std_logic;
SIGNAL \btn_controller|Add0~46\ : std_logic;
SIGNAL \btn_controller|Add0~49_sumout\ : std_logic;
SIGNAL \btn_controller|delay~13_combout\ : std_logic;
SIGNAL \btn_controller|delay[21]~DUPLICATE_q\ : std_logic;
SIGNAL \btn_controller|Equal0~1_combout\ : std_logic;
SIGNAL \btn_controller|Add0~50\ : std_logic;
SIGNAL \btn_controller|Add0~5_sumout\ : std_logic;
SIGNAL \btn_controller|delay~2_combout\ : std_logic;
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
SIGNAL \btn_controller|Add0~22\ : std_logic;
SIGNAL \btn_controller|Add0~25_sumout\ : std_logic;
SIGNAL \btn_controller|delay~7_combout\ : std_logic;
SIGNAL \btn_controller|Equal0~0_combout\ : std_logic;
SIGNAL \btn_controller|delay[0]~DUPLICATE_q\ : std_logic;
SIGNAL \btn_controller|delay[3]~DUPLICATE_q\ : std_logic;
SIGNAL \btn_controller|delay[2]~DUPLICATE_q\ : std_logic;
SIGNAL \btn_controller|delay[1]~DUPLICATE_q\ : std_logic;
SIGNAL \btn_controller|Equal0~3_combout\ : std_logic;
SIGNAL \btn_controller|delay[17]~DUPLICATE_q\ : std_logic;
SIGNAL \btn_controller|delay[14]~DUPLICATE_q\ : std_logic;
SIGNAL \btn_controller|delay[15]~DUPLICATE_q\ : std_logic;
SIGNAL \btn_controller|Equal0~2_combout\ : std_logic;
SIGNAL \btn_controller|Add0~26\ : std_logic;
SIGNAL \btn_controller|Add0~1_sumout\ : std_logic;
SIGNAL \btn_controller|delay~0_combout\ : std_logic;
SIGNAL \btn_controller|Equal0~5_combout\ : std_logic;
SIGNAL \btn_controller|state~0_combout\ : std_logic;
SIGNAL \btn_controller|state~q\ : std_logic;
SIGNAL \btn_controller|output~0_combout\ : std_logic;
SIGNAL \btn_controller|output~q\ : std_logic;
SIGNAL \main_fsm|state.WAIT_INPUT~DUPLICATE_q\ : std_logic;
SIGNAL \main_fsm|state.SEND~q\ : std_logic;
SIGNAL \main_fsm|state.WAIT_2~q\ : std_logic;
SIGNAL \main_fsm|state.START~0_combout\ : std_logic;
SIGNAL \main_fsm|state.START~q\ : std_logic;
SIGNAL \main_fsm|state.DISPL_CLEAR~0_combout\ : std_logic;
SIGNAL \main_fsm|state.DISPL_CLEAR~q\ : std_logic;
SIGNAL \main_fsm|delay[3]~0_combout\ : std_logic;
SIGNAL \main_fsm|Selector37~0_combout\ : std_logic;
SIGNAL \main_fsm|state.WAIT_INPUT~q\ : std_logic;
SIGNAL \main_fsm|Selector39~0_combout\ : std_logic;
SIGNAL \main_fsm|state.PRSD_MSG~q\ : std_logic;
SIGNAL \main_fsm|delay[1]~3_combout\ : std_logic;
SIGNAL \main_fsm|delay[1]~4_combout\ : std_logic;
SIGNAL \main_fsm|Add0~77_sumout\ : std_logic;
SIGNAL \main_fsm|delay[0]~5_combout\ : std_logic;
SIGNAL \main_fsm|Add0~78\ : std_logic;
SIGNAL \main_fsm|Add0~81_sumout\ : std_logic;
SIGNAL \main_fsm|delay[1]~6_combout\ : std_logic;
SIGNAL \main_fsm|delay[1]~DUPLICATE_q\ : std_logic;
SIGNAL \main_fsm|Add0~82\ : std_logic;
SIGNAL \main_fsm|Add0~85_sumout\ : std_logic;
SIGNAL \main_fsm|Selector32~0_combout\ : std_logic;
SIGNAL \main_fsm|Selector32~1_combout\ : std_logic;
SIGNAL \main_fsm|Add0~86\ : std_logic;
SIGNAL \main_fsm|Add0~89_sumout\ : std_logic;
SIGNAL \main_fsm|delay[3]~7_combout\ : std_logic;
SIGNAL \main_fsm|Add0~90\ : std_logic;
SIGNAL \main_fsm|Add0~93_sumout\ : std_logic;
SIGNAL \main_fsm|delay[15]~9_combout\ : std_logic;
SIGNAL \main_fsm|delay[15]~8_combout\ : std_logic;
SIGNAL \main_fsm|delay[4]~10_combout\ : std_logic;
SIGNAL \main_fsm|delay[4]~DUPLICATE_q\ : std_logic;
SIGNAL \main_fsm|Add0~94\ : std_logic;
SIGNAL \main_fsm|Add0~69_sumout\ : std_logic;
SIGNAL \main_fsm|delay[3]~1_combout\ : std_logic;
SIGNAL \main_fsm|delay[3]~2_combout\ : std_logic;
SIGNAL \main_fsm|delay[5]~DUPLICATE_q\ : std_logic;
SIGNAL \main_fsm|Add0~70\ : std_logic;
SIGNAL \main_fsm|Add0~97_sumout\ : std_logic;
SIGNAL \main_fsm|delay[6]~11_combout\ : std_logic;
SIGNAL \main_fsm|Equal10~3_combout\ : std_logic;
SIGNAL \main_fsm|Add0~98\ : std_logic;
SIGNAL \main_fsm|Add0~49_sumout\ : std_logic;
SIGNAL \main_fsm|Add0~50\ : std_logic;
SIGNAL \main_fsm|Add0~101_sumout\ : std_logic;
SIGNAL \main_fsm|delay[8]~12_combout\ : std_logic;
SIGNAL \main_fsm|Add0~102\ : std_logic;
SIGNAL \main_fsm|Add0~105_sumout\ : std_logic;
SIGNAL \main_fsm|delay[9]~13_combout\ : std_logic;
SIGNAL \main_fsm|delay[9]~DUPLICATE_q\ : std_logic;
SIGNAL \main_fsm|Add0~106\ : std_logic;
SIGNAL \main_fsm|Add0~109_sumout\ : std_logic;
SIGNAL \main_fsm|delay[10]~14_combout\ : std_logic;
SIGNAL \main_fsm|Add0~110\ : std_logic;
SIGNAL \main_fsm|Add0~1_sumout\ : std_logic;
SIGNAL \main_fsm|Add0~2\ : std_logic;
SIGNAL \main_fsm|Add0~65_sumout\ : std_logic;
SIGNAL \main_fsm|delay[12]~DUPLICATE_q\ : std_logic;
SIGNAL \main_fsm|Add0~66\ : std_logic;
SIGNAL \main_fsm|Add0~113_sumout\ : std_logic;
SIGNAL \main_fsm|delay[13]~15_combout\ : std_logic;
SIGNAL \main_fsm|Add0~114\ : std_logic;
SIGNAL \main_fsm|Add0~117_sumout\ : std_logic;
SIGNAL \main_fsm|delay[14]~16_combout\ : std_logic;
SIGNAL \main_fsm|delay[14]~DUPLICATE_q\ : std_logic;
SIGNAL \main_fsm|Add0~118\ : std_logic;
SIGNAL \main_fsm|Add0~121_sumout\ : std_logic;
SIGNAL \main_fsm|delay[15]~17_combout\ : std_logic;
SIGNAL \main_fsm|Equal10~4_combout\ : std_logic;
SIGNAL \main_fsm|delay[29]~DUPLICATE_q\ : std_logic;
SIGNAL \main_fsm|Add0~122\ : std_logic;
SIGNAL \main_fsm|Add0~61_sumout\ : std_logic;
SIGNAL \main_fsm|Add0~62\ : std_logic;
SIGNAL \main_fsm|Add0~57_sumout\ : std_logic;
SIGNAL \main_fsm|Add0~58\ : std_logic;
SIGNAL \main_fsm|Add0~53_sumout\ : std_logic;
SIGNAL \main_fsm|Add0~54\ : std_logic;
SIGNAL \main_fsm|Add0~25_sumout\ : std_logic;
SIGNAL \main_fsm|delay[19]~DUPLICATE_q\ : std_logic;
SIGNAL \main_fsm|Add0~26\ : std_logic;
SIGNAL \main_fsm|Add0~17_sumout\ : std_logic;
SIGNAL \main_fsm|Add0~18\ : std_logic;
SIGNAL \main_fsm|Add0~13_sumout\ : std_logic;
SIGNAL \main_fsm|Add0~14\ : std_logic;
SIGNAL \main_fsm|Add0~9_sumout\ : std_logic;
SIGNAL \main_fsm|Add0~10\ : std_logic;
SIGNAL \main_fsm|Add0~5_sumout\ : std_logic;
SIGNAL \main_fsm|Add0~6\ : std_logic;
SIGNAL \main_fsm|Add0~73_sumout\ : std_logic;
SIGNAL \main_fsm|delay[24]~DUPLICATE_q\ : std_logic;
SIGNAL \main_fsm|Add0~74\ : std_logic;
SIGNAL \main_fsm|Add0~45_sumout\ : std_logic;
SIGNAL \main_fsm|Add0~46\ : std_logic;
SIGNAL \main_fsm|Add0~41_sumout\ : std_logic;
SIGNAL \main_fsm|Add0~42\ : std_logic;
SIGNAL \main_fsm|Add0~37_sumout\ : std_logic;
SIGNAL \main_fsm|Add0~38\ : std_logic;
SIGNAL \main_fsm|Add0~33_sumout\ : std_logic;
SIGNAL \main_fsm|Add0~34\ : std_logic;
SIGNAL \main_fsm|Add0~29_sumout\ : std_logic;
SIGNAL \main_fsm|delay[7]~DUPLICATE_q\ : std_logic;
SIGNAL \main_fsm|Equal10~1_combout\ : std_logic;
SIGNAL \main_fsm|Equal10~2_combout\ : std_logic;
SIGNAL \main_fsm|delay[22]~DUPLICATE_q\ : std_logic;
SIGNAL \main_fsm|Add0~30\ : std_logic;
SIGNAL \main_fsm|Add0~21_sumout\ : std_logic;
SIGNAL \main_fsm|Equal10~0_combout\ : std_logic;
SIGNAL \main_fsm|Equal10~5_combout\ : std_logic;
SIGNAL \main_fsm|Selector53~0_combout\ : std_logic;
SIGNAL \main_fsm|spi_rqst~q\ : std_logic;
SIGNAL \spi0|flag~0_combout\ : std_logic;
SIGNAL \spi0|flag~q\ : std_logic;
SIGNAL \main_fsm|last_btn_pressed[10]~feeder_combout\ : std_logic;
SIGNAL \main_fsm|spi_msg[10]~0_combout\ : std_logic;
SIGNAL \spi0|current_msg~0_combout\ : std_logic;
SIGNAL \spi0|spi|spi_value[15]~feeder_combout\ : std_logic;
SIGNAL \spi0|spi|spi_value[14]~feeder_combout\ : std_logic;
SIGNAL \spi0|spi|spi_value[13]~feeder_combout\ : std_logic;
SIGNAL \spi0|spi|spi_value[12]~feeder_combout\ : std_logic;
SIGNAL \spi0|current_msg~1_combout\ : std_logic;
SIGNAL \spi0|data_in[10]~feeder_combout\ : std_logic;
SIGNAL \spi0|spi|spi_value[11]~feeder_combout\ : std_logic;
SIGNAL \spi0|spi|spi_value[10]~feeder_combout\ : std_logic;
SIGNAL \spi0|spi|spi_value[9]~feeder_combout\ : std_logic;
SIGNAL \spi0|spi|spi_value[8]~feeder_combout\ : std_logic;
SIGNAL \spi0|spi|spi_value[7]~feeder_combout\ : std_logic;
SIGNAL \spi0|spi|spi_value[6]~feeder_combout\ : std_logic;
SIGNAL \spi0|spi|spi_value[5]~feeder_combout\ : std_logic;
SIGNAL \spi0|spi|spi_value[4]~feeder_combout\ : std_logic;
SIGNAL \spi0|spi|spi_value[3]~feeder_combout\ : std_logic;
SIGNAL \spi0|spi|spi_value[2]~feeder_combout\ : std_logic;
SIGNAL \btn_controller|btn_num~2_combout\ : std_logic;
SIGNAL \btn_controller|btn_num[0]~1_combout\ : std_logic;
SIGNAL \main_fsm|last_btn_pressed[1]~0_combout\ : std_logic;
SIGNAL \main_fsm|spi_msg[1]~1_combout\ : std_logic;
SIGNAL \spi0|current_msg~2_combout\ : std_logic;
SIGNAL \spi0|data_in[1]~feeder_combout\ : std_logic;
SIGNAL \spi0|spi|spi_value[1]~feeder_combout\ : std_logic;
SIGNAL \spi0|spi|process_0~1_combout\ : std_logic;
SIGNAL \spi0|spi|spi_value~1_combout\ : std_logic;
SIGNAL \btn_controller|btn_num~0_combout\ : std_logic;
SIGNAL \main_fsm|last_btn_pressed[0]~1_combout\ : std_logic;
SIGNAL \main_fsm|spi_msg[0]~2_combout\ : std_logic;
SIGNAL \spi0|current_msg~3_combout\ : std_logic;
SIGNAL \spi0|data_in[0]~feeder_combout\ : std_logic;
SIGNAL \spi0|spi|wrcnt[0]~3_combout\ : std_logic;
SIGNAL \spi0|spi|wrcnt[1]~2_combout\ : std_logic;
SIGNAL \spi0|spi|wrcnt[1]~DUPLICATE_q\ : std_logic;
SIGNAL \spi0|spi|wrcnt[2]~1_combout\ : std_logic;
SIGNAL \spi0|spi|wrcnt[3]~0_combout\ : std_logic;
SIGNAL \spi0|spi|feed_me~0_combout\ : std_logic;
SIGNAL \spi0|spi|feed_me~q\ : std_logic;
SIGNAL \spi0|spi|spi_value[1]~0_combout\ : std_logic;
SIGNAL \spi0|spi|MISO~q\ : std_logic;
SIGNAL \spi0|led0~0_combout\ : std_logic;
SIGNAL \spi0|led0~q\ : std_logic;
SIGNAL \btn_controller|led1~q\ : std_logic;
SIGNAL \lcd_controller|Add0~125_sumout\ : std_logic;
SIGNAL \lcd_controller|LessThan7~0_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan1~0_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan7~1_combout\ : std_logic;
SIGNAL \lcd_controller|Add0~46\ : std_logic;
SIGNAL \lcd_controller|Add0~49_sumout\ : std_logic;
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
SIGNAL \lcd_controller|busy~2_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan6~2_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan6~1_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan6~3_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan3~3_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan3~0_combout\ : std_logic;
SIGNAL \lcd_controller|lcd_data[1]~2_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan0~1_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan0~5_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan9~1_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan9~2_combout\ : std_logic;
SIGNAL \lcd_controller|Add0~58\ : std_logic;
SIGNAL \lcd_controller|Add0~1_sumout\ : std_logic;
SIGNAL \lcd_controller|LessThan9~0_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan9~4_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan9~3_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan9~5_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan9~6_combout\ : std_logic;
SIGNAL \lcd_controller|Selector34~0_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan6~0_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan3~2_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan8~0_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan8~1_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan8~2_combout\ : std_logic;
SIGNAL \lcd_controller|lcd_data[1]~1_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan3~10_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan3~11_combout\ : std_logic;
SIGNAL \lcd_controller|busy~4_combout\ : std_logic;
SIGNAL \lcd_controller|Selector33~4_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan3~5_combout\ : std_logic;
SIGNAL \lcd_controller|busy~6_combout\ : std_logic;
SIGNAL \lcd_controller|Selector33~0_combout\ : std_logic;
SIGNAL \lcd_controller|Selector33~1_combout\ : std_logic;
SIGNAL \lcd_controller|Selector33~2_combout\ : std_logic;
SIGNAL \lcd_controller|Selector33~3_combout\ : std_logic;
SIGNAL \lcd_controller|Selector33~5_combout\ : std_logic;
SIGNAL \lcd_controller|state.initialize~DUPLICATE_q\ : std_logic;
SIGNAL \lcd_controller|lcd_data[1]~3_combout\ : std_logic;
SIGNAL \main_fsm|lcd_enable~q\ : std_logic;
SIGNAL \main_fsm|Selector52~0_combout\ : std_logic;
SIGNAL \main_fsm|lcd_enable~DUPLICATE_q\ : std_logic;
SIGNAL \lcd_controller|Selector34~1_combout\ : std_logic;
SIGNAL \lcd_controller|state.ready~q\ : std_logic;
SIGNAL \lcd_controller|Selector35~0_combout\ : std_logic;
SIGNAL \lcd_controller|state.send~q\ : std_logic;
SIGNAL \lcd_controller|clk_count[1]~3_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan2~0_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan2~1_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan5~0_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan5~1_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan6~4_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan1~1_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan1~2_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan3~6_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan3~7_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan3~4_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan3~13_combout\ : std_logic;
SIGNAL \lcd_controller|clk_count[1]~0_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan4~0_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan4~1_combout\ : std_logic;
SIGNAL \lcd_controller|clk_count[1]~1_combout\ : std_logic;
SIGNAL \lcd_controller|clk_count[1]~2_combout\ : std_logic;
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
SIGNAL \lcd_controller|Add0~45_sumout\ : std_logic;
SIGNAL \lcd_controller|LessThan0~3_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan0~4_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan0~6_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan0~0_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan0~2_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan0~7_combout\ : std_logic;
SIGNAL \lcd_controller|rs~1_combout\ : std_logic;
SIGNAL \lcd_controller|state.power_up~q\ : std_logic;
SIGNAL \lcd_controller|lcd_data[1]~0_combout\ : std_logic;
SIGNAL \main_fsm|lcd_bus[4]~feeder_combout\ : std_logic;
SIGNAL \main_fsm|Selector50~0_combout\ : std_logic;
SIGNAL \lcd_controller|rs~0_combout\ : std_logic;
SIGNAL \lcd_controller|rs~q\ : std_logic;
SIGNAL \lcd_controller|LessThan3~1_combout\ : std_logic;
SIGNAL \lcd_controller|Selector46~1_combout\ : std_logic;
SIGNAL \lcd_controller|state.initialize~q\ : std_logic;
SIGNAL \lcd_controller|Selector46~0_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan12~0_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan12~1_combout\ : std_logic;
SIGNAL \lcd_controller|Selector46~5_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan10~0_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan10~1_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan11~0_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan11~1_combout\ : std_logic;
SIGNAL \lcd_controller|Selector46~6_combout\ : std_logic;
SIGNAL \lcd_controller|Selector46~7_combout\ : std_logic;
SIGNAL \lcd_controller|busy~3_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan2~2_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan4~2_combout\ : std_logic;
SIGNAL \lcd_controller|Selector46~2_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan5~2_combout\ : std_logic;
SIGNAL \lcd_controller|Selector46~4_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan3~8_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan1~3_combout\ : std_logic;
SIGNAL \lcd_controller|Selector46~3_combout\ : std_logic;
SIGNAL \lcd_controller|Selector46~8_combout\ : std_logic;
SIGNAL \lcd_controller|e~q\ : std_logic;
SIGNAL \lcd_controller|Selector45~1_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan3~9_combout\ : std_logic;
SIGNAL \lcd_controller|busy~5_combout\ : std_logic;
SIGNAL \main_fsm|Selector51~0_combout\ : std_logic;
SIGNAL \lcd_controller|Selector45~0_combout\ : std_logic;
SIGNAL \lcd_controller|Selector45~2_combout\ : std_logic;
SIGNAL \lcd_controller|lcd_data[1]~4_combout\ : std_logic;
SIGNAL \lcd_controller|Selector44~2_combout\ : std_logic;
SIGNAL \lcd_controller|Selector44~3_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan4~3_combout\ : std_logic;
SIGNAL \lcd_controller|Selector44~0_combout\ : std_logic;
SIGNAL \main_fsm|Selector50~1_combout\ : std_logic;
SIGNAL \lcd_controller|Selector44~1_combout\ : std_logic;
SIGNAL \lcd_controller|Selector44~4_combout\ : std_logic;
SIGNAL \lcd_controller|Selector44~5_combout\ : std_logic;
SIGNAL \lcd_controller|Selector43~0_combout\ : std_logic;
SIGNAL \lcd_controller|Selector43~1_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan3~12_combout\ : std_logic;
SIGNAL \lcd_controller|Selector42~0_combout\ : std_logic;
SIGNAL \lcd_controller|Selector42~1_combout\ : std_logic;
SIGNAL \lcd_controller|Selector41~0_combout\ : std_logic;
SIGNAL \lcd_controller|Selector41~1_combout\ : std_logic;
SIGNAL \lcd_controller|clk_count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \btn_controller|btn_num\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \tim_100kHz|counter\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \btn_controller|delay\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \main_fsm|delay\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \spi0|spi|spi_value\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \main_fsm|lcd_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \lcd_controller|lcd_data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \spi0|spi|rdcnt\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \spi0|spi|sck_synchronizer\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \spi0|data_in\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \spi0|current_msg\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \spi0|spi|wrcnt\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \main_fsm|spi_msg\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \main_fsm|last_btn_pressed\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \lcd_controller|ALT_INV_clk_count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \btn_controller|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \btn_controller|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \btn_controller|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \btn_controller|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \btn_controller|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \main_fsm|ALT_INV_delay\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \tim_100kHz|ALT_INV_counter\ : std_logic_vector(8 DOWNTO 0);
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
SIGNAL \lcd_controller|ALT_INV_Selector44~0_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_busy~6_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_LessThan4~3_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_lcd_data[1]~3_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_lcd_data[1]~2_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_lcd_data[1]~1_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_Selector45~1_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_busy~5_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_busy~4_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_LessThan3~11_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_LessThan3~10_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_LessThan3~9_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_Selector45~0_combout\ : std_logic;
SIGNAL \main_fsm|ALT_INV_lcd_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \lcd_controller|ALT_INV_Selector46~7_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_Selector46~6_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_LessThan11~1_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_LessThan11~0_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_Selector46~5_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_LessThan9~6_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_LessThan9~5_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_LessThan9~4_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_LessThan9~3_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_LessThan10~1_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_LessThan10~0_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_LessThan12~1_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_LessThan12~0_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_LessThan9~2_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_LessThan9~1_combout\ : std_logic;
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
SIGNAL \lcd_controller|ALT_INV_lcd_data[1]~0_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_state.power_up~q\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_LessThan0~7_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_LessThan0~6_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_LessThan9~0_combout\ : std_logic;
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
SIGNAL \tim_100kHz|ALT_INV_clock_signal~q\ : std_logic;
SIGNAL \btn_controller|ALT_INV_state~q\ : std_logic;
SIGNAL \spi0|ALT_INV_state~q\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_e~q\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_rs~q\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_clk_count[1]~3_combout\ : std_logic;
SIGNAL \spi0|spi|ALT_INV_spi_value\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \spi0|spi|ALT_INV_feed_me~q\ : std_logic;
SIGNAL \main_fsm|ALT_INV_Add0~121_sumout\ : std_logic;
SIGNAL \spi0|spi|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \spi0|spi|ALT_INV_flag2~q\ : std_logic;
SIGNAL \spi0|spi|ALT_INV_flag~q\ : std_logic;
SIGNAL \spi0|spi|ALT_INV_sck_synchronizer\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \spi0|spi|ALT_INV_rdcnt\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \btn_controller|ALT_INV_btn_num\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \lcd_controller|ALT_INV_clk_count[1]~1_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_clk_count[1]~0_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_LessThan3~13_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_Selector33~4_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_Selector33~3_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_Selector33~2_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_Selector33~1_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_Selector34~0_combout\ : std_logic;
SIGNAL \main_fsm|ALT_INV_state.SEND~q\ : std_logic;
SIGNAL \main_fsm|ALT_INV_Equal10~5_combout\ : std_logic;
SIGNAL \main_fsm|ALT_INV_Equal10~4_combout\ : std_logic;
SIGNAL \main_fsm|ALT_INV_Equal10~3_combout\ : std_logic;
SIGNAL \main_fsm|ALT_INV_Equal10~2_combout\ : std_logic;
SIGNAL \main_fsm|ALT_INV_Equal10~1_combout\ : std_logic;
SIGNAL \main_fsm|ALT_INV_Equal10~0_combout\ : std_logic;
SIGNAL \main_fsm|ALT_INV_state.DISPL_CLEAR~q\ : std_logic;
SIGNAL \main_fsm|ALT_INV_state.PRSD_MSG~q\ : std_logic;
SIGNAL \tim_100kHz|ALT_INV_clock_signal~0_combout\ : std_logic;
SIGNAL \tim_100kHz|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \tim_100kHz|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \btn_controller|ALT_INV_Equal0~5_combout\ : std_logic;
SIGNAL \btn_controller|ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \btn_controller|ALT_INV_delay\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \btn_controller|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \btn_controller|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \btn_controller|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \btn_controller|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \btn_controller|ALT_INV_and_buttons~q\ : std_logic;
SIGNAL \spi0|ALT_INV_state~0_combout\ : std_logic;
SIGNAL \spi0|spi|ALT_INV_read_me~q\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_Selector41~0_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_Selector42~0_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_LessThan3~12_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_Selector43~0_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_Selector44~5_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_Selector33~0_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_Selector44~3_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_Selector44~2_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_Selector44~1_combout\ : std_logic;
SIGNAL \ALT_INV_PCB_BT1~input_o\ : std_logic;
SIGNAL \ALT_INV_PCB_BT0~input_o\ : std_logic;
SIGNAL \ALT_INV_PCB_BT3~input_o\ : std_logic;
SIGNAL \ALT_INV_PCB_BT2~input_o\ : std_logic;
SIGNAL \main_fsm|ALT_INV_last_btn_pressed\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \main_fsm|ALT_INV_spi_msg\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \spi0|ALT_INV_current_msg\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \spi0|ALT_INV_data_in\ : std_logic_vector(12 DOWNTO 1);
SIGNAL \main_fsm|ALT_INV_spi_rqst~q\ : std_logic;
SIGNAL \spi0|ALT_INV_flag~q\ : std_logic;
SIGNAL \spi0|spi|ALT_INV_wrcnt\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \spi0|spi|ALT_INV_process_0~1_combout\ : std_logic;
SIGNAL \main_fsm|ALT_INV_delay[15]~9_combout\ : std_logic;
SIGNAL \main_fsm|ALT_INV_delay[15]~8_combout\ : std_logic;
SIGNAL \main_fsm|ALT_INV_Selector32~0_combout\ : std_logic;
SIGNAL \main_fsm|ALT_INV_delay[1]~4_combout\ : std_logic;
SIGNAL \main_fsm|ALT_INV_delay[1]~3_combout\ : std_logic;
SIGNAL \main_fsm|ALT_INV_delay[3]~0_combout\ : std_logic;
SIGNAL \main_fsm|ALT_INV_state.WAIT_2~q\ : std_logic;
SIGNAL \main_fsm|ALT_INV_state.START~q\ : std_logic;
SIGNAL \main_fsm|ALT_INV_state.WAIT_INPUT~q\ : std_logic;
SIGNAL \btn_controller|ALT_INV_output~q\ : std_logic;
SIGNAL \spi0|spi|ALT_INV_wrcnt[1]~DUPLICATE_q\ : std_logic;
SIGNAL \main_fsm|ALT_INV_state.WAIT_INPUT~DUPLICATE_q\ : std_logic;
SIGNAL \spi0|spi|ALT_INV_flag2~DUPLICATE_q\ : std_logic;
SIGNAL \spi0|spi|ALT_INV_flag~DUPLICATE_q\ : std_logic;
SIGNAL \spi0|spi|ALT_INV_sck_synchronizer[5]~DUPLICATE_q\ : std_logic;
SIGNAL \spi0|spi|ALT_INV_sck_synchronizer[4]~DUPLICATE_q\ : std_logic;
SIGNAL \main_fsm|ALT_INV_delay[14]~DUPLICATE_q\ : std_logic;
SIGNAL \main_fsm|ALT_INV_delay[9]~DUPLICATE_q\ : std_logic;
SIGNAL \main_fsm|ALT_INV_delay[4]~DUPLICATE_q\ : std_logic;
SIGNAL \main_fsm|ALT_INV_delay[1]~DUPLICATE_q\ : std_logic;
SIGNAL \btn_controller|ALT_INV_delay[9]~DUPLICATE_q\ : std_logic;
SIGNAL \btn_controller|ALT_INV_delay[5]~DUPLICATE_q\ : std_logic;
SIGNAL \btn_controller|ALT_INV_delay[4]~DUPLICATE_q\ : std_logic;
SIGNAL \btn_controller|ALT_INV_delay[3]~DUPLICATE_q\ : std_logic;
SIGNAL \btn_controller|ALT_INV_delay[2]~DUPLICATE_q\ : std_logic;
SIGNAL \btn_controller|ALT_INV_delay[1]~DUPLICATE_q\ : std_logic;
SIGNAL \btn_controller|ALT_INV_delay[0]~DUPLICATE_q\ : std_logic;
SIGNAL \btn_controller|ALT_INV_delay[17]~DUPLICATE_q\ : std_logic;
SIGNAL \btn_controller|ALT_INV_delay[16]~DUPLICATE_q\ : std_logic;
SIGNAL \btn_controller|ALT_INV_delay[15]~DUPLICATE_q\ : std_logic;
SIGNAL \btn_controller|ALT_INV_delay[14]~DUPLICATE_q\ : std_logic;
SIGNAL \btn_controller|ALT_INV_delay[13]~DUPLICATE_q\ : std_logic;
SIGNAL \btn_controller|ALT_INV_delay[12]~DUPLICATE_q\ : std_logic;
SIGNAL \btn_controller|ALT_INV_delay[23]~DUPLICATE_q\ : std_logic;
SIGNAL \btn_controller|ALT_INV_delay[22]~DUPLICATE_q\ : std_logic;
SIGNAL \btn_controller|ALT_INV_delay[21]~DUPLICATE_q\ : std_logic;
SIGNAL \btn_controller|ALT_INV_delay[20]~DUPLICATE_q\ : std_logic;
SIGNAL \btn_controller|ALT_INV_delay[18]~DUPLICATE_q\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_state.initialize~DUPLICATE_q\ : std_logic;
SIGNAL \main_fsm|ALT_INV_lcd_enable~DUPLICATE_q\ : std_logic;
SIGNAL \main_fsm|ALT_INV_delay[24]~DUPLICATE_q\ : std_logic;
SIGNAL \main_fsm|ALT_INV_delay[5]~DUPLICATE_q\ : std_logic;
SIGNAL \main_fsm|ALT_INV_delay[12]~DUPLICATE_q\ : std_logic;
SIGNAL \main_fsm|ALT_INV_delay[7]~DUPLICATE_q\ : std_logic;
SIGNAL \main_fsm|ALT_INV_delay[29]~DUPLICATE_q\ : std_logic;
SIGNAL \main_fsm|ALT_INV_delay[19]~DUPLICATE_q\ : std_logic;
SIGNAL \main_fsm|ALT_INV_delay[22]~DUPLICATE_q\ : std_logic;

BEGIN

PCB_MOSI <= ww_PCB_MOSI;
PCB_SCK <= ww_PCB_SCK;
LED <= ww_LED;
ww_FPGA_CLK1_50 <= FPGA_CLK1_50;
PCB_RS <= ww_PCB_RS;
PCB_RW <= ww_PCB_RW;
PCB_E <= ww_PCB_E;
PCB_MISO <= ww_PCB_MISO;
PCB_DB <= ww_PCB_DB;
ww_PCB_BT0 <= PCB_BT0;
ww_PCB_BT1 <= PCB_BT1;
ww_PCB_BT2 <= PCB_BT2;
ww_PCB_BT3 <= PCB_BT3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\lcd_controller|ALT_INV_clk_count\(11) <= NOT \lcd_controller|clk_count\(11);
\lcd_controller|ALT_INV_clk_count\(12) <= NOT \lcd_controller|clk_count\(12);
\lcd_controller|ALT_INV_clk_count\(13) <= NOT \lcd_controller|clk_count\(13);
\lcd_controller|ALT_INV_clk_count\(21) <= NOT \lcd_controller|clk_count\(21);
\btn_controller|ALT_INV_Add0~17_sumout\ <= NOT \btn_controller|Add0~17_sumout\;
\btn_controller|ALT_INV_Add0~13_sumout\ <= NOT \btn_controller|Add0~13_sumout\;
\btn_controller|ALT_INV_Add0~9_sumout\ <= NOT \btn_controller|Add0~9_sumout\;
\btn_controller|ALT_INV_Add0~5_sumout\ <= NOT \btn_controller|Add0~5_sumout\;
\btn_controller|ALT_INV_Add0~1_sumout\ <= NOT \btn_controller|Add0~1_sumout\;
\main_fsm|ALT_INV_delay\(24) <= NOT \main_fsm|delay\(24);
\main_fsm|ALT_INV_delay\(5) <= NOT \main_fsm|delay\(5);
\main_fsm|ALT_INV_delay\(12) <= NOT \main_fsm|delay\(12);
\main_fsm|ALT_INV_delay\(16) <= NOT \main_fsm|delay\(16);
\main_fsm|ALT_INV_delay\(17) <= NOT \main_fsm|delay\(17);
\main_fsm|ALT_INV_delay\(18) <= NOT \main_fsm|delay\(18);
\main_fsm|ALT_INV_delay\(7) <= NOT \main_fsm|delay\(7);
\main_fsm|ALT_INV_delay\(25) <= NOT \main_fsm|delay\(25);
\main_fsm|ALT_INV_delay\(26) <= NOT \main_fsm|delay\(26);
\main_fsm|ALT_INV_delay\(27) <= NOT \main_fsm|delay\(27);
\main_fsm|ALT_INV_delay\(28) <= NOT \main_fsm|delay\(28);
\main_fsm|ALT_INV_delay\(29) <= NOT \main_fsm|delay\(29);
\main_fsm|ALT_INV_delay\(19) <= NOT \main_fsm|delay\(19);
\main_fsm|ALT_INV_delay\(30) <= NOT \main_fsm|delay\(30);
\main_fsm|ALT_INV_delay\(20) <= NOT \main_fsm|delay\(20);
\main_fsm|ALT_INV_delay\(21) <= NOT \main_fsm|delay\(21);
\main_fsm|ALT_INV_delay\(22) <= NOT \main_fsm|delay\(22);
\main_fsm|ALT_INV_delay\(23) <= NOT \main_fsm|delay\(23);
\main_fsm|ALT_INV_delay\(11) <= NOT \main_fsm|delay\(11);
\tim_100kHz|ALT_INV_counter\(0) <= NOT \tim_100kHz|counter\(0);
\tim_100kHz|ALT_INV_counter\(2) <= NOT \tim_100kHz|counter\(2);
\tim_100kHz|ALT_INV_counter\(4) <= NOT \tim_100kHz|counter\(4);
\tim_100kHz|ALT_INV_counter\(5) <= NOT \tim_100kHz|counter\(5);
\tim_100kHz|ALT_INV_counter\(6) <= NOT \tim_100kHz|counter\(6);
\tim_100kHz|ALT_INV_counter\(7) <= NOT \tim_100kHz|counter\(7);
\tim_100kHz|ALT_INV_counter\(8) <= NOT \tim_100kHz|counter\(8);
\tim_100kHz|ALT_INV_counter\(3) <= NOT \tim_100kHz|counter\(3);
\tim_100kHz|ALT_INV_counter\(1) <= NOT \tim_100kHz|counter\(1);
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
\lcd_controller|ALT_INV_clk_count\(27) <= NOT \lcd_controller|clk_count\(27);
\lcd_controller|ALT_INV_clk_count\(28) <= NOT \lcd_controller|clk_count\(28);
\lcd_controller|ALT_INV_clk_count\(30) <= NOT \lcd_controller|clk_count\(30);
\lcd_controller|ALT_INV_clk_count\(22) <= NOT \lcd_controller|clk_count\(22);
\lcd_controller|ALT_INV_clk_count\(23) <= NOT \lcd_controller|clk_count\(23);
\lcd_controller|ALT_INV_clk_count\(24) <= NOT \lcd_controller|clk_count\(24);
\lcd_controller|ALT_INV_clk_count\(26) <= NOT \lcd_controller|clk_count\(26);
\lcd_controller|ALT_INV_clk_count\(25) <= NOT \lcd_controller|clk_count\(25);
\lcd_controller|ALT_INV_clk_count\(31) <= NOT \lcd_controller|clk_count\(31);
\lcd_controller|ALT_INV_clk_count\(17) <= NOT \lcd_controller|clk_count\(17);
\lcd_controller|ALT_INV_clk_count\(18) <= NOT \lcd_controller|clk_count\(18);
\lcd_controller|ALT_INV_clk_count\(19) <= NOT \lcd_controller|clk_count\(19);
\lcd_controller|ALT_INV_clk_count\(20) <= NOT \lcd_controller|clk_count\(20);
\lcd_controller|ALT_INV_clk_count\(14) <= NOT \lcd_controller|clk_count\(14);
\lcd_controller|ALT_INV_clk_count\(15) <= NOT \lcd_controller|clk_count\(15);
\lcd_controller|ALT_INV_clk_count\(16) <= NOT \lcd_controller|clk_count\(16);
\lcd_controller|ALT_INV_clk_count\(7) <= NOT \lcd_controller|clk_count\(7);
\lcd_controller|ALT_INV_clk_count\(8) <= NOT \lcd_controller|clk_count\(8);
\lcd_controller|ALT_INV_clk_count\(6) <= NOT \lcd_controller|clk_count\(6);
\lcd_controller|ALT_INV_clk_count\(5) <= NOT \lcd_controller|clk_count\(5);
\lcd_controller|ALT_INV_clk_count\(9) <= NOT \lcd_controller|clk_count\(9);
\lcd_controller|ALT_INV_clk_count\(10) <= NOT \lcd_controller|clk_count\(10);
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
\lcd_controller|ALT_INV_Selector44~0_combout\ <= NOT \lcd_controller|Selector44~0_combout\;
\lcd_controller|ALT_INV_busy~6_combout\ <= NOT \lcd_controller|busy~6_combout\;
\lcd_controller|ALT_INV_LessThan4~3_combout\ <= NOT \lcd_controller|LessThan4~3_combout\;
\lcd_controller|ALT_INV_lcd_data[1]~3_combout\ <= NOT \lcd_controller|lcd_data[1]~3_combout\;
\lcd_controller|ALT_INV_lcd_data[1]~2_combout\ <= NOT \lcd_controller|lcd_data[1]~2_combout\;
\lcd_controller|ALT_INV_lcd_data[1]~1_combout\ <= NOT \lcd_controller|lcd_data[1]~1_combout\;
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
\lcd_controller|ALT_INV_LessThan9~6_combout\ <= NOT \lcd_controller|LessThan9~6_combout\;
\lcd_controller|ALT_INV_LessThan9~5_combout\ <= NOT \lcd_controller|LessThan9~5_combout\;
\lcd_controller|ALT_INV_LessThan9~4_combout\ <= NOT \lcd_controller|LessThan9~4_combout\;
\lcd_controller|ALT_INV_LessThan9~3_combout\ <= NOT \lcd_controller|LessThan9~3_combout\;
\lcd_controller|ALT_INV_LessThan10~1_combout\ <= NOT \lcd_controller|LessThan10~1_combout\;
\lcd_controller|ALT_INV_LessThan10~0_combout\ <= NOT \lcd_controller|LessThan10~0_combout\;
\lcd_controller|ALT_INV_LessThan12~1_combout\ <= NOT \lcd_controller|LessThan12~1_combout\;
\lcd_controller|ALT_INV_LessThan12~0_combout\ <= NOT \lcd_controller|LessThan12~0_combout\;
\lcd_controller|ALT_INV_LessThan9~2_combout\ <= NOT \lcd_controller|LessThan9~2_combout\;
\lcd_controller|ALT_INV_LessThan9~1_combout\ <= NOT \lcd_controller|LessThan9~1_combout\;
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
\lcd_controller|ALT_INV_lcd_data[1]~0_combout\ <= NOT \lcd_controller|lcd_data[1]~0_combout\;
\lcd_controller|ALT_INV_state.power_up~q\ <= NOT \lcd_controller|state.power_up~q\;
\lcd_controller|ALT_INV_LessThan0~7_combout\ <= NOT \lcd_controller|LessThan0~7_combout\;
\lcd_controller|ALT_INV_LessThan0~6_combout\ <= NOT \lcd_controller|LessThan0~6_combout\;
\lcd_controller|ALT_INV_LessThan9~0_combout\ <= NOT \lcd_controller|LessThan9~0_combout\;
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
\tim_100kHz|ALT_INV_clock_signal~q\ <= NOT \tim_100kHz|clock_signal~q\;
\btn_controller|ALT_INV_state~q\ <= NOT \btn_controller|state~q\;
\spi0|ALT_INV_state~q\ <= NOT \spi0|state~q\;
\lcd_controller|ALT_INV_e~q\ <= NOT \lcd_controller|e~q\;
\lcd_controller|ALT_INV_rs~q\ <= NOT \lcd_controller|rs~q\;
\lcd_controller|ALT_INV_clk_count[1]~3_combout\ <= NOT \lcd_controller|clk_count[1]~3_combout\;
\spi0|spi|ALT_INV_spi_value\(0) <= NOT \spi0|spi|spi_value\(0);
\spi0|spi|ALT_INV_feed_me~q\ <= NOT \spi0|spi|feed_me~q\;
\lcd_controller|ALT_INV_clk_count\(0) <= NOT \lcd_controller|clk_count\(0);
\main_fsm|ALT_INV_Add0~121_sumout\ <= NOT \main_fsm|Add0~121_sumout\;
\spi0|spi|ALT_INV_process_0~0_combout\ <= NOT \spi0|spi|process_0~0_combout\;
\spi0|spi|ALT_INV_flag2~q\ <= NOT \spi0|spi|flag2~q\;
\spi0|spi|ALT_INV_flag~q\ <= NOT \spi0|spi|flag~q\;
\spi0|spi|ALT_INV_sck_synchronizer\(5) <= NOT \spi0|spi|sck_synchronizer\(5);
\spi0|spi|ALT_INV_sck_synchronizer\(4) <= NOT \spi0|spi|sck_synchronizer\(4);
\spi0|spi|ALT_INV_sck_synchronizer\(1) <= NOT \spi0|spi|sck_synchronizer\(1);
\spi0|spi|ALT_INV_sck_synchronizer\(0) <= NOT \spi0|spi|sck_synchronizer\(0);
\spi0|spi|ALT_INV_rdcnt\(0) <= NOT \spi0|spi|rdcnt\(0);
\spi0|spi|ALT_INV_rdcnt\(1) <= NOT \spi0|spi|rdcnt\(1);
\spi0|spi|ALT_INV_rdcnt\(2) <= NOT \spi0|spi|rdcnt\(2);
\spi0|spi|ALT_INV_rdcnt\(3) <= NOT \spi0|spi|rdcnt\(3);
\btn_controller|ALT_INV_btn_num\(1) <= NOT \btn_controller|btn_num\(1);
\btn_controller|ALT_INV_btn_num\(0) <= NOT \btn_controller|btn_num\(0);
\lcd_controller|ALT_INV_clk_count[1]~1_combout\ <= NOT \lcd_controller|clk_count[1]~1_combout\;
\lcd_controller|ALT_INV_clk_count[1]~0_combout\ <= NOT \lcd_controller|clk_count[1]~0_combout\;
\lcd_controller|ALT_INV_LessThan3~13_combout\ <= NOT \lcd_controller|LessThan3~13_combout\;
\lcd_controller|ALT_INV_Selector33~4_combout\ <= NOT \lcd_controller|Selector33~4_combout\;
\lcd_controller|ALT_INV_Selector33~3_combout\ <= NOT \lcd_controller|Selector33~3_combout\;
\lcd_controller|ALT_INV_Selector33~2_combout\ <= NOT \lcd_controller|Selector33~2_combout\;
\lcd_controller|ALT_INV_Selector33~1_combout\ <= NOT \lcd_controller|Selector33~1_combout\;
\lcd_controller|ALT_INV_Selector34~0_combout\ <= NOT \lcd_controller|Selector34~0_combout\;
\main_fsm|ALT_INV_state.SEND~q\ <= NOT \main_fsm|state.SEND~q\;
\main_fsm|ALT_INV_Equal10~5_combout\ <= NOT \main_fsm|Equal10~5_combout\;
\main_fsm|ALT_INV_Equal10~4_combout\ <= NOT \main_fsm|Equal10~4_combout\;
\main_fsm|ALT_INV_delay\(15) <= NOT \main_fsm|delay\(15);
\main_fsm|ALT_INV_delay\(14) <= NOT \main_fsm|delay\(14);
\main_fsm|ALT_INV_delay\(13) <= NOT \main_fsm|delay\(13);
\main_fsm|ALT_INV_delay\(10) <= NOT \main_fsm|delay\(10);
\main_fsm|ALT_INV_delay\(9) <= NOT \main_fsm|delay\(9);
\main_fsm|ALT_INV_delay\(8) <= NOT \main_fsm|delay\(8);
\main_fsm|ALT_INV_Equal10~3_combout\ <= NOT \main_fsm|Equal10~3_combout\;
\main_fsm|ALT_INV_delay\(6) <= NOT \main_fsm|delay\(6);
\main_fsm|ALT_INV_delay\(4) <= NOT \main_fsm|delay\(4);
\main_fsm|ALT_INV_delay\(3) <= NOT \main_fsm|delay\(3);
\main_fsm|ALT_INV_delay\(2) <= NOT \main_fsm|delay\(2);
\main_fsm|ALT_INV_delay\(1) <= NOT \main_fsm|delay\(1);
\main_fsm|ALT_INV_delay\(0) <= NOT \main_fsm|delay\(0);
\main_fsm|ALT_INV_Equal10~2_combout\ <= NOT \main_fsm|Equal10~2_combout\;
\main_fsm|ALT_INV_Equal10~1_combout\ <= NOT \main_fsm|Equal10~1_combout\;
\main_fsm|ALT_INV_Equal10~0_combout\ <= NOT \main_fsm|Equal10~0_combout\;
\main_fsm|ALT_INV_state.DISPL_CLEAR~q\ <= NOT \main_fsm|state.DISPL_CLEAR~q\;
\main_fsm|ALT_INV_state.PRSD_MSG~q\ <= NOT \main_fsm|state.PRSD_MSG~q\;
\tim_100kHz|ALT_INV_clock_signal~0_combout\ <= NOT \tim_100kHz|clock_signal~0_combout\;
\tim_100kHz|ALT_INV_Equal0~1_combout\ <= NOT \tim_100kHz|Equal0~1_combout\;
\tim_100kHz|ALT_INV_Equal0~0_combout\ <= NOT \tim_100kHz|Equal0~0_combout\;
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
\btn_controller|ALT_INV_and_buttons~q\ <= NOT \btn_controller|and_buttons~q\;
\spi0|ALT_INV_state~0_combout\ <= NOT \spi0|state~0_combout\;
\spi0|spi|ALT_INV_read_me~q\ <= NOT \spi0|spi|read_me~q\;
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
\ALT_INV_PCB_BT1~input_o\ <= NOT \PCB_BT1~input_o\;
\ALT_INV_PCB_BT0~input_o\ <= NOT \PCB_BT0~input_o\;
\ALT_INV_PCB_BT3~input_o\ <= NOT \PCB_BT3~input_o\;
\ALT_INV_PCB_BT2~input_o\ <= NOT \PCB_BT2~input_o\;
\main_fsm|ALT_INV_last_btn_pressed\(0) <= NOT \main_fsm|last_btn_pressed\(0);
\main_fsm|ALT_INV_spi_msg\(0) <= NOT \main_fsm|spi_msg\(0);
\main_fsm|ALT_INV_last_btn_pressed\(1) <= NOT \main_fsm|last_btn_pressed\(1);
\spi0|ALT_INV_current_msg\(0) <= NOT \spi0|current_msg\(0);
\main_fsm|ALT_INV_spi_msg\(1) <= NOT \main_fsm|spi_msg\(1);
\spi0|ALT_INV_current_msg\(1) <= NOT \spi0|current_msg\(1);
\spi0|ALT_INV_data_in\(1) <= NOT \spi0|data_in\(1);
\spi0|ALT_INV_current_msg\(10) <= NOT \spi0|current_msg\(10);
\spi0|ALT_INV_data_in\(10) <= NOT \spi0|data_in\(10);
\main_fsm|ALT_INV_spi_rqst~q\ <= NOT \main_fsm|spi_rqst~q\;
\main_fsm|ALT_INV_last_btn_pressed\(10) <= NOT \main_fsm|last_btn_pressed\(10);
\spi0|ALT_INV_flag~q\ <= NOT \spi0|flag~q\;
\main_fsm|ALT_INV_spi_msg\(10) <= NOT \main_fsm|spi_msg\(10);
\spi0|spi|ALT_INV_wrcnt\(0) <= NOT \spi0|spi|wrcnt\(0);
\spi0|spi|ALT_INV_wrcnt\(1) <= NOT \spi0|spi|wrcnt\(1);
\spi0|spi|ALT_INV_wrcnt\(2) <= NOT \spi0|spi|wrcnt\(2);
\spi0|spi|ALT_INV_wrcnt\(3) <= NOT \spi0|spi|wrcnt\(3);
\spi0|spi|ALT_INV_sck_synchronizer\(2) <= NOT \spi0|spi|sck_synchronizer\(2);
\spi0|ALT_INV_data_in\(12) <= NOT \spi0|data_in\(12);
\spi0|spi|ALT_INV_sck_synchronizer\(3) <= NOT \spi0|spi|sck_synchronizer\(3);
\spi0|spi|ALT_INV_process_0~1_combout\ <= NOT \spi0|spi|process_0~1_combout\;
\main_fsm|ALT_INV_delay[15]~9_combout\ <= NOT \main_fsm|delay[15]~9_combout\;
\main_fsm|ALT_INV_delay[15]~8_combout\ <= NOT \main_fsm|delay[15]~8_combout\;
\main_fsm|ALT_INV_Selector32~0_combout\ <= NOT \main_fsm|Selector32~0_combout\;
\main_fsm|ALT_INV_delay[1]~4_combout\ <= NOT \main_fsm|delay[1]~4_combout\;
\main_fsm|ALT_INV_delay[1]~3_combout\ <= NOT \main_fsm|delay[1]~3_combout\;
\main_fsm|ALT_INV_delay[3]~0_combout\ <= NOT \main_fsm|delay[3]~0_combout\;
\main_fsm|ALT_INV_state.WAIT_2~q\ <= NOT \main_fsm|state.WAIT_2~q\;
\main_fsm|ALT_INV_state.START~q\ <= NOT \main_fsm|state.START~q\;
\main_fsm|ALT_INV_state.WAIT_INPUT~q\ <= NOT \main_fsm|state.WAIT_INPUT~q\;
\btn_controller|ALT_INV_output~q\ <= NOT \btn_controller|output~q\;
\spi0|spi|ALT_INV_wrcnt[1]~DUPLICATE_q\ <= NOT \spi0|spi|wrcnt[1]~DUPLICATE_q\;
\main_fsm|ALT_INV_state.WAIT_INPUT~DUPLICATE_q\ <= NOT \main_fsm|state.WAIT_INPUT~DUPLICATE_q\;
\spi0|spi|ALT_INV_flag2~DUPLICATE_q\ <= NOT \spi0|spi|flag2~DUPLICATE_q\;
\spi0|spi|ALT_INV_flag~DUPLICATE_q\ <= NOT \spi0|spi|flag~DUPLICATE_q\;
\spi0|spi|ALT_INV_sck_synchronizer[5]~DUPLICATE_q\ <= NOT \spi0|spi|sck_synchronizer[5]~DUPLICATE_q\;
\spi0|spi|ALT_INV_sck_synchronizer[4]~DUPLICATE_q\ <= NOT \spi0|spi|sck_synchronizer[4]~DUPLICATE_q\;
\main_fsm|ALT_INV_delay[14]~DUPLICATE_q\ <= NOT \main_fsm|delay[14]~DUPLICATE_q\;
\main_fsm|ALT_INV_delay[9]~DUPLICATE_q\ <= NOT \main_fsm|delay[9]~DUPLICATE_q\;
\main_fsm|ALT_INV_delay[4]~DUPLICATE_q\ <= NOT \main_fsm|delay[4]~DUPLICATE_q\;
\main_fsm|ALT_INV_delay[1]~DUPLICATE_q\ <= NOT \main_fsm|delay[1]~DUPLICATE_q\;
\btn_controller|ALT_INV_delay[9]~DUPLICATE_q\ <= NOT \btn_controller|delay[9]~DUPLICATE_q\;
\btn_controller|ALT_INV_delay[5]~DUPLICATE_q\ <= NOT \btn_controller|delay[5]~DUPLICATE_q\;
\btn_controller|ALT_INV_delay[4]~DUPLICATE_q\ <= NOT \btn_controller|delay[4]~DUPLICATE_q\;
\btn_controller|ALT_INV_delay[3]~DUPLICATE_q\ <= NOT \btn_controller|delay[3]~DUPLICATE_q\;
\btn_controller|ALT_INV_delay[2]~DUPLICATE_q\ <= NOT \btn_controller|delay[2]~DUPLICATE_q\;
\btn_controller|ALT_INV_delay[1]~DUPLICATE_q\ <= NOT \btn_controller|delay[1]~DUPLICATE_q\;
\btn_controller|ALT_INV_delay[0]~DUPLICATE_q\ <= NOT \btn_controller|delay[0]~DUPLICATE_q\;
\btn_controller|ALT_INV_delay[17]~DUPLICATE_q\ <= NOT \btn_controller|delay[17]~DUPLICATE_q\;
\btn_controller|ALT_INV_delay[16]~DUPLICATE_q\ <= NOT \btn_controller|delay[16]~DUPLICATE_q\;
\btn_controller|ALT_INV_delay[15]~DUPLICATE_q\ <= NOT \btn_controller|delay[15]~DUPLICATE_q\;
\btn_controller|ALT_INV_delay[14]~DUPLICATE_q\ <= NOT \btn_controller|delay[14]~DUPLICATE_q\;
\btn_controller|ALT_INV_delay[13]~DUPLICATE_q\ <= NOT \btn_controller|delay[13]~DUPLICATE_q\;
\btn_controller|ALT_INV_delay[12]~DUPLICATE_q\ <= NOT \btn_controller|delay[12]~DUPLICATE_q\;
\btn_controller|ALT_INV_delay[23]~DUPLICATE_q\ <= NOT \btn_controller|delay[23]~DUPLICATE_q\;
\btn_controller|ALT_INV_delay[22]~DUPLICATE_q\ <= NOT \btn_controller|delay[22]~DUPLICATE_q\;
\btn_controller|ALT_INV_delay[21]~DUPLICATE_q\ <= NOT \btn_controller|delay[21]~DUPLICATE_q\;
\btn_controller|ALT_INV_delay[20]~DUPLICATE_q\ <= NOT \btn_controller|delay[20]~DUPLICATE_q\;
\btn_controller|ALT_INV_delay[18]~DUPLICATE_q\ <= NOT \btn_controller|delay[18]~DUPLICATE_q\;
\lcd_controller|ALT_INV_state.initialize~DUPLICATE_q\ <= NOT \lcd_controller|state.initialize~DUPLICATE_q\;
\main_fsm|ALT_INV_lcd_enable~DUPLICATE_q\ <= NOT \main_fsm|lcd_enable~DUPLICATE_q\;
\main_fsm|ALT_INV_delay[24]~DUPLICATE_q\ <= NOT \main_fsm|delay[24]~DUPLICATE_q\;
\main_fsm|ALT_INV_delay[5]~DUPLICATE_q\ <= NOT \main_fsm|delay[5]~DUPLICATE_q\;
\main_fsm|ALT_INV_delay[12]~DUPLICATE_q\ <= NOT \main_fsm|delay[12]~DUPLICATE_q\;
\main_fsm|ALT_INV_delay[7]~DUPLICATE_q\ <= NOT \main_fsm|delay[7]~DUPLICATE_q\;
\main_fsm|ALT_INV_delay[29]~DUPLICATE_q\ <= NOT \main_fsm|delay[29]~DUPLICATE_q\;
\main_fsm|ALT_INV_delay[19]~DUPLICATE_q\ <= NOT \main_fsm|delay[19]~DUPLICATE_q\;
\main_fsm|ALT_INV_delay[22]~DUPLICATE_q\ <= NOT \main_fsm|delay[22]~DUPLICATE_q\;

-- Location: IOOBUF_X89_Y8_N22
\LED[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \spi0|led0~q\,
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
	i => \btn_controller|led1~q\,
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
	i => \lcd_controller|e~q\,
	devoe => ww_devoe,
	o => ww_PCB_E);

-- Location: IOOBUF_X89_Y6_N22
\PCB_DB[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \lcd_controller|lcd_data\(0),
	devoe => ww_devoe,
	o => ww_PCB_DB(0));

-- Location: IOOBUF_X68_Y0_N19
\PCB_DB[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \lcd_controller|lcd_data\(1),
	devoe => ww_devoe,
	o => ww_PCB_DB(1));

-- Location: IOOBUF_X86_Y0_N19
\PCB_DB[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \lcd_controller|lcd_data\(2),
	devoe => ww_devoe,
	o => ww_PCB_DB(2));

-- Location: IOOBUF_X82_Y0_N76
\PCB_DB[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \lcd_controller|lcd_data\(3),
	devoe => ww_devoe,
	o => ww_PCB_DB(3));

-- Location: IOOBUF_X89_Y6_N39
\PCB_DB[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \lcd_controller|lcd_data\(4),
	devoe => ww_devoe,
	o => ww_PCB_DB(4));

-- Location: IOOBUF_X86_Y0_N36
\PCB_DB[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \lcd_controller|lcd_data\(4),
	devoe => ww_devoe,
	o => ww_PCB_DB(5));

-- Location: IOOBUF_X64_Y0_N19
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

-- Location: IOOBUF_X64_Y0_N2
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

-- Location: IOOBUF_X8_Y0_N19
\PCB_MISO~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \spi0|spi|MISO~q\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_PCB_MISO);

-- Location: IOOBUF_X89_Y23_N56
\PCB_MOSI~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_PCB_MOSI);

-- Location: IOOBUF_X89_Y23_N39
\PCB_SCK~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_PCB_SCK);

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

-- Location: IOIBUF_X89_Y23_N38
\PCB_SCK~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PCB_SCK,
	o => \PCB_SCK~input_o\);

-- Location: FF_X83_Y6_N41
\spi0|spi|sck_synchronizer[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \PCB_SCK~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|sck_synchronizer\(0));

-- Location: FF_X83_Y6_N53
\spi0|spi|sck_synchronizer[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \spi0|spi|sck_synchronizer\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|sck_synchronizer\(1));

-- Location: FF_X83_Y6_N59
\spi0|spi|sck_synchronizer[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \spi0|spi|sck_synchronizer\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|sck_synchronizer\(2));

-- Location: LABCELL_X83_Y6_N0
\spi0|spi|sck_synchronizer[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|spi|sck_synchronizer[3]~feeder_combout\ = \spi0|spi|sck_synchronizer\(2)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi0|spi|ALT_INV_sck_synchronizer\(2),
	combout => \spi0|spi|sck_synchronizer[3]~feeder_combout\);

-- Location: FF_X83_Y6_N2
\spi0|spi|sck_synchronizer[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|spi|sck_synchronizer[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|sck_synchronizer\(3));

-- Location: LABCELL_X83_Y6_N3
\spi0|spi|sck_synchronizer[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|spi|sck_synchronizer[4]~feeder_combout\ = \spi0|spi|sck_synchronizer\(3)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi|ALT_INV_sck_synchronizer\(3),
	combout => \spi0|spi|sck_synchronizer[4]~feeder_combout\);

-- Location: FF_X83_Y6_N4
\spi0|spi|sck_synchronizer[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|spi|sck_synchronizer[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|sck_synchronizer[4]~DUPLICATE_q\);

-- Location: FF_X83_Y6_N26
\spi0|spi|sck_synchronizer[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \spi0|spi|sck_synchronizer[4]~DUPLICATE_q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|sck_synchronizer[5]~DUPLICATE_q\);

-- Location: FF_X83_Y6_N17
\spi0|spi|flag2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|spi|flag2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|flag2~q\);

-- Location: LABCELL_X83_Y6_N15
\spi0|spi|flag2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|spi|flag2~0_combout\ = ( \spi0|spi|sck_synchronizer\(0) & ( ((!\spi0|spi|sck_synchronizer[5]~DUPLICATE_q\ & (!\spi0|spi|sck_synchronizer[4]~DUPLICATE_q\ & \spi0|spi|sck_synchronizer\(1)))) # (\spi0|spi|flag2~q\) ) ) # ( 
-- !\spi0|spi|sck_synchronizer\(0) & ( ((\spi0|spi|sck_synchronizer[5]~DUPLICATE_q\ & (\spi0|spi|sck_synchronizer[4]~DUPLICATE_q\ & !\spi0|spi|sck_synchronizer\(1)))) # (\spi0|spi|flag2~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000011111111000100001111111100001000111111110000100011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi|ALT_INV_sck_synchronizer[5]~DUPLICATE_q\,
	datab => \spi0|spi|ALT_INV_sck_synchronizer[4]~DUPLICATE_q\,
	datac => \spi0|spi|ALT_INV_sck_synchronizer\(1),
	datad => \spi0|spi|ALT_INV_flag2~q\,
	dataf => \spi0|spi|ALT_INV_sck_synchronizer\(0),
	combout => \spi0|spi|flag2~0_combout\);

-- Location: FF_X83_Y6_N16
\spi0|spi|flag2~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|spi|flag2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|flag2~DUPLICATE_q\);

-- Location: FF_X83_Y6_N46
\spi0|spi|flag\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|spi|flag~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|flag~q\);

-- Location: LABCELL_X83_Y6_N45
\spi0|spi|flag~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|spi|flag~0_combout\ = ( \spi0|spi|sck_synchronizer\(0) & ( ((!\spi0|spi|sck_synchronizer[5]~DUPLICATE_q\ & (!\spi0|spi|sck_synchronizer[4]~DUPLICATE_q\ & \spi0|spi|sck_synchronizer\(1)))) # (\spi0|spi|flag~q\) ) ) # ( !\spi0|spi|sck_synchronizer\(0) 
-- & ( (\spi0|spi|flag~q\ & ((!\spi0|spi|sck_synchronizer[5]~DUPLICATE_q\) # ((!\spi0|spi|sck_synchronizer[4]~DUPLICATE_q\) # (\spi0|spi|sck_synchronizer\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011101111000000001110111100001000111111110000100011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi|ALT_INV_sck_synchronizer[5]~DUPLICATE_q\,
	datab => \spi0|spi|ALT_INV_sck_synchronizer[4]~DUPLICATE_q\,
	datac => \spi0|spi|ALT_INV_sck_synchronizer\(1),
	datad => \spi0|spi|ALT_INV_flag~q\,
	dataf => \spi0|spi|ALT_INV_sck_synchronizer\(0),
	combout => \spi0|spi|flag~0_combout\);

-- Location: FF_X83_Y6_N47
\spi0|spi|flag~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|spi|flag~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|flag~DUPLICATE_q\);

-- Location: LABCELL_X83_Y6_N51
\spi0|spi|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|spi|process_0~0_combout\ = ( !\spi0|spi|sck_synchronizer\(0) & ( \spi0|spi|sck_synchronizer[5]~DUPLICATE_q\ & ( (\spi0|spi|sck_synchronizer[4]~DUPLICATE_q\ & (!\spi0|spi|sck_synchronizer\(1) & ((!\spi0|spi|flag2~DUPLICATE_q\) # 
-- (\spi0|spi|flag~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001011000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi|ALT_INV_flag2~DUPLICATE_q\,
	datab => \spi0|spi|ALT_INV_flag~DUPLICATE_q\,
	datac => \spi0|spi|ALT_INV_sck_synchronizer[4]~DUPLICATE_q\,
	datad => \spi0|spi|ALT_INV_sck_synchronizer\(1),
	datae => \spi0|spi|ALT_INV_sck_synchronizer\(0),
	dataf => \spi0|spi|ALT_INV_sck_synchronizer[5]~DUPLICATE_q\,
	combout => \spi0|spi|process_0~0_combout\);

-- Location: LABCELL_X83_Y6_N42
\spi0|spi|rdcnt[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|spi|rdcnt[0]~3_combout\ = ( \spi0|spi|process_0~0_combout\ & ( !\spi0|spi|rdcnt\(0) ) ) # ( !\spi0|spi|process_0~0_combout\ & ( \spi0|spi|rdcnt\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \spi0|spi|ALT_INV_rdcnt\(0),
	dataf => \spi0|spi|ALT_INV_process_0~0_combout\,
	combout => \spi0|spi|rdcnt[0]~3_combout\);

-- Location: FF_X83_Y6_N43
\spi0|spi|rdcnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|spi|rdcnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|rdcnt\(0));

-- Location: LABCELL_X83_Y6_N12
\spi0|spi|rdcnt[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|spi|rdcnt[1]~2_combout\ = ( \spi0|spi|process_0~0_combout\ & ( !\spi0|spi|rdcnt\(0) $ (!\spi0|spi|rdcnt\(1)) ) ) # ( !\spi0|spi|process_0~0_combout\ & ( \spi0|spi|rdcnt\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|spi|ALT_INV_rdcnt\(0),
	datad => \spi0|spi|ALT_INV_rdcnt\(1),
	dataf => \spi0|spi|ALT_INV_process_0~0_combout\,
	combout => \spi0|spi|rdcnt[1]~2_combout\);

-- Location: FF_X83_Y6_N14
\spi0|spi|rdcnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|spi|rdcnt[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|rdcnt\(1));

-- Location: MLABCELL_X82_Y6_N48
\spi0|spi|rdcnt[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|spi|rdcnt[2]~1_combout\ = ( \spi0|spi|rdcnt\(2) & ( \spi0|spi|process_0~0_combout\ & ( (!\spi0|spi|rdcnt\(0)) # (!\spi0|spi|rdcnt\(1)) ) ) ) # ( !\spi0|spi|rdcnt\(2) & ( \spi0|spi|process_0~0_combout\ & ( (\spi0|spi|rdcnt\(0) & \spi0|spi|rdcnt\(1)) 
-- ) ) ) # ( \spi0|spi|rdcnt\(2) & ( !\spi0|spi|process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000011111111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|spi|ALT_INV_rdcnt\(0),
	datad => \spi0|spi|ALT_INV_rdcnt\(1),
	datae => \spi0|spi|ALT_INV_rdcnt\(2),
	dataf => \spi0|spi|ALT_INV_process_0~0_combout\,
	combout => \spi0|spi|rdcnt[2]~1_combout\);

-- Location: FF_X82_Y6_N50
\spi0|spi|rdcnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|spi|rdcnt[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|rdcnt\(2));

-- Location: MLABCELL_X82_Y6_N27
\spi0|spi|rdcnt[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|spi|rdcnt[3]~0_combout\ = ( \spi0|spi|rdcnt\(3) & ( \spi0|spi|rdcnt\(0) & ( (!\spi0|spi|rdcnt\(1)) # ((!\spi0|spi|process_0~0_combout\) # (!\spi0|spi|rdcnt\(2))) ) ) ) # ( !\spi0|spi|rdcnt\(3) & ( \spi0|spi|rdcnt\(0) & ( (\spi0|spi|rdcnt\(1) & 
-- (\spi0|spi|process_0~0_combout\ & \spi0|spi|rdcnt\(2))) ) ) ) # ( \spi0|spi|rdcnt\(3) & ( !\spi0|spi|rdcnt\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000111111111111111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi0|spi|ALT_INV_rdcnt\(1),
	datac => \spi0|spi|ALT_INV_process_0~0_combout\,
	datad => \spi0|spi|ALT_INV_rdcnt\(2),
	datae => \spi0|spi|ALT_INV_rdcnt\(3),
	dataf => \spi0|spi|ALT_INV_rdcnt\(0),
	combout => \spi0|spi|rdcnt[3]~0_combout\);

-- Location: FF_X82_Y6_N28
\spi0|spi|rdcnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|spi|rdcnt[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|rdcnt\(3));

-- Location: MLABCELL_X82_Y6_N0
\spi0|spi|read_me~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|spi|read_me~0_combout\ = ( !\spi0|spi|read_me~q\ & ( \spi0|spi|rdcnt\(1) & ( (\spi0|spi|rdcnt\(2) & (\spi0|spi|rdcnt\(3) & (\spi0|spi|process_0~0_combout\ & \spi0|spi|rdcnt\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi|ALT_INV_rdcnt\(2),
	datab => \spi0|spi|ALT_INV_rdcnt\(3),
	datac => \spi0|spi|ALT_INV_process_0~0_combout\,
	datad => \spi0|spi|ALT_INV_rdcnt\(0),
	datae => \spi0|spi|ALT_INV_read_me~q\,
	dataf => \spi0|spi|ALT_INV_rdcnt\(1),
	combout => \spi0|spi|read_me~0_combout\);

-- Location: FF_X82_Y6_N1
\spi0|spi|read_me\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|spi|read_me~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|read_me~q\);

-- Location: LABCELL_X83_Y8_N30
\spi0|state~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|state~0_combout\ = ( \spi0|state~q\ & ( !\spi0|spi|read_me~q\ ) ) # ( !\spi0|state~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \spi0|spi|ALT_INV_read_me~q\,
	dataf => \spi0|ALT_INV_state~q\,
	combout => \spi0|state~0_combout\);

-- Location: LABCELL_X83_Y8_N51
\spi0|state~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|state~feeder_combout\ = \spi0|state~0_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|ALT_INV_state~0_combout\,
	combout => \spi0|state~feeder_combout\);

-- Location: FF_X83_Y8_N53
\spi0|state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|state~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|state~q\);

-- Location: LABCELL_X81_Y6_N30
\tim_100kHz|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \tim_100kHz|Add0~33_sumout\ = SUM(( \tim_100kHz|counter\(0) ) + ( VCC ) + ( !VCC ))
-- \tim_100kHz|Add0~34\ = CARRY(( \tim_100kHz|counter\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \tim_100kHz|ALT_INV_counter\(0),
	cin => GND,
	sumout => \tim_100kHz|Add0~33_sumout\,
	cout => \tim_100kHz|Add0~34\);

-- Location: FF_X81_Y6_N32
\tim_100kHz|counter[0]\ : dffeas
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
	q => \tim_100kHz|counter\(0));

-- Location: LABCELL_X81_Y6_N33
\tim_100kHz|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \tim_100kHz|Add0~1_sumout\ = SUM(( \tim_100kHz|counter\(1) ) + ( GND ) + ( \tim_100kHz|Add0~34\ ))
-- \tim_100kHz|Add0~2\ = CARRY(( \tim_100kHz|counter\(1) ) + ( GND ) + ( \tim_100kHz|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \tim_100kHz|ALT_INV_counter\(1),
	cin => \tim_100kHz|Add0~34\,
	sumout => \tim_100kHz|Add0~1_sumout\,
	cout => \tim_100kHz|Add0~2\);

-- Location: FF_X81_Y6_N35
\tim_100kHz|counter[1]\ : dffeas
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
	q => \tim_100kHz|counter\(1));

-- Location: LABCELL_X81_Y6_N36
\tim_100kHz|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \tim_100kHz|Add0~29_sumout\ = SUM(( \tim_100kHz|counter\(2) ) + ( GND ) + ( \tim_100kHz|Add0~2\ ))
-- \tim_100kHz|Add0~30\ = CARRY(( \tim_100kHz|counter\(2) ) + ( GND ) + ( \tim_100kHz|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \tim_100kHz|ALT_INV_counter\(2),
	cin => \tim_100kHz|Add0~2\,
	sumout => \tim_100kHz|Add0~29_sumout\,
	cout => \tim_100kHz|Add0~30\);

-- Location: FF_X81_Y6_N38
\tim_100kHz|counter[2]\ : dffeas
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
	q => \tim_100kHz|counter\(2));

-- Location: LABCELL_X81_Y6_N39
\tim_100kHz|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \tim_100kHz|Add0~5_sumout\ = SUM(( \tim_100kHz|counter\(3) ) + ( GND ) + ( \tim_100kHz|Add0~30\ ))
-- \tim_100kHz|Add0~6\ = CARRY(( \tim_100kHz|counter\(3) ) + ( GND ) + ( \tim_100kHz|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \tim_100kHz|ALT_INV_counter\(3),
	cin => \tim_100kHz|Add0~30\,
	sumout => \tim_100kHz|Add0~5_sumout\,
	cout => \tim_100kHz|Add0~6\);

-- Location: FF_X81_Y6_N41
\tim_100kHz|counter[3]\ : dffeas
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
	q => \tim_100kHz|counter\(3));

-- Location: LABCELL_X81_Y6_N42
\tim_100kHz|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \tim_100kHz|Add0~25_sumout\ = SUM(( \tim_100kHz|counter\(4) ) + ( GND ) + ( \tim_100kHz|Add0~6\ ))
-- \tim_100kHz|Add0~26\ = CARRY(( \tim_100kHz|counter\(4) ) + ( GND ) + ( \tim_100kHz|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \tim_100kHz|ALT_INV_counter\(4),
	cin => \tim_100kHz|Add0~6\,
	sumout => \tim_100kHz|Add0~25_sumout\,
	cout => \tim_100kHz|Add0~26\);

-- Location: FF_X81_Y6_N44
\tim_100kHz|counter[4]\ : dffeas
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
	q => \tim_100kHz|counter\(4));

-- Location: LABCELL_X81_Y6_N45
\tim_100kHz|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \tim_100kHz|Add0~21_sumout\ = SUM(( \tim_100kHz|counter\(5) ) + ( GND ) + ( \tim_100kHz|Add0~26\ ))
-- \tim_100kHz|Add0~22\ = CARRY(( \tim_100kHz|counter\(5) ) + ( GND ) + ( \tim_100kHz|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \tim_100kHz|ALT_INV_counter\(5),
	cin => \tim_100kHz|Add0~26\,
	sumout => \tim_100kHz|Add0~21_sumout\,
	cout => \tim_100kHz|Add0~22\);

-- Location: FF_X81_Y6_N47
\tim_100kHz|counter[5]\ : dffeas
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
	q => \tim_100kHz|counter\(5));

-- Location: LABCELL_X81_Y6_N48
\tim_100kHz|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \tim_100kHz|Add0~17_sumout\ = SUM(( \tim_100kHz|counter\(6) ) + ( GND ) + ( \tim_100kHz|Add0~22\ ))
-- \tim_100kHz|Add0~18\ = CARRY(( \tim_100kHz|counter\(6) ) + ( GND ) + ( \tim_100kHz|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \tim_100kHz|ALT_INV_counter\(6),
	cin => \tim_100kHz|Add0~22\,
	sumout => \tim_100kHz|Add0~17_sumout\,
	cout => \tim_100kHz|Add0~18\);

-- Location: FF_X81_Y6_N50
\tim_100kHz|counter[6]\ : dffeas
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
	q => \tim_100kHz|counter\(6));

-- Location: LABCELL_X81_Y6_N51
\tim_100kHz|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \tim_100kHz|Add0~13_sumout\ = SUM(( \tim_100kHz|counter\(7) ) + ( GND ) + ( \tim_100kHz|Add0~18\ ))
-- \tim_100kHz|Add0~14\ = CARRY(( \tim_100kHz|counter\(7) ) + ( GND ) + ( \tim_100kHz|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \tim_100kHz|ALT_INV_counter\(7),
	cin => \tim_100kHz|Add0~18\,
	sumout => \tim_100kHz|Add0~13_sumout\,
	cout => \tim_100kHz|Add0~14\);

-- Location: FF_X81_Y6_N53
\tim_100kHz|counter[7]\ : dffeas
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
	q => \tim_100kHz|counter\(7));

-- Location: LABCELL_X81_Y6_N54
\tim_100kHz|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \tim_100kHz|Add0~9_sumout\ = SUM(( \tim_100kHz|counter\(8) ) + ( GND ) + ( \tim_100kHz|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \tim_100kHz|ALT_INV_counter\(8),
	cin => \tim_100kHz|Add0~14\,
	sumout => \tim_100kHz|Add0~9_sumout\);

-- Location: FF_X81_Y6_N56
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

-- Location: LABCELL_X81_Y6_N24
\tim_100kHz|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \tim_100kHz|Equal0~0_combout\ = ( \tim_100kHz|counter\(5) & ( !\tim_100kHz|counter\(0) & ( (!\tim_100kHz|counter\(2) & (\tim_100kHz|counter\(6) & \tim_100kHz|counter\(4))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \tim_100kHz|ALT_INV_counter\(2),
	datac => \tim_100kHz|ALT_INV_counter\(6),
	datad => \tim_100kHz|ALT_INV_counter\(4),
	datae => \tim_100kHz|ALT_INV_counter\(5),
	dataf => \tim_100kHz|ALT_INV_counter\(0),
	combout => \tim_100kHz|Equal0~0_combout\);

-- Location: LABCELL_X81_Y6_N6
\tim_100kHz|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \tim_100kHz|Equal0~1_combout\ = ( !\tim_100kHz|counter\(8) & ( \tim_100kHz|Equal0~0_combout\ & ( (\tim_100kHz|counter\(1) & (\tim_100kHz|counter\(7) & \tim_100kHz|counter\(3))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \tim_100kHz|ALT_INV_counter\(1),
	datac => \tim_100kHz|ALT_INV_counter\(7),
	datad => \tim_100kHz|ALT_INV_counter\(3),
	datae => \tim_100kHz|ALT_INV_counter\(8),
	dataf => \tim_100kHz|ALT_INV_Equal0~0_combout\,
	combout => \tim_100kHz|Equal0~1_combout\);

-- Location: LABCELL_X81_Y6_N21
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

-- Location: LABCELL_X81_Y6_N15
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

-- Location: FF_X81_Y6_N17
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

-- Location: LABCELL_X77_Y6_N0
\btn_controller|and_buttons~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|and_buttons~0_combout\ = ( \PCB_BT1~input_o\ & ( \btn_controller|state~q\ & ( \btn_controller|and_buttons~q\ ) ) ) # ( !\PCB_BT1~input_o\ & ( \btn_controller|state~q\ & ( \btn_controller|and_buttons~q\ ) ) ) # ( \PCB_BT1~input_o\ & ( 
-- !\btn_controller|state~q\ & ( (!\PCB_BT3~input_o\) # ((!\PCB_BT0~input_o\) # (!\PCB_BT2~input_o\)) ) ) ) # ( !\PCB_BT1~input_o\ & ( !\btn_controller|state~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111101111111000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_PCB_BT3~input_o\,
	datab => \ALT_INV_PCB_BT0~input_o\,
	datac => \ALT_INV_PCB_BT2~input_o\,
	datad => \btn_controller|ALT_INV_and_buttons~q\,
	datae => \ALT_INV_PCB_BT1~input_o\,
	dataf => \btn_controller|ALT_INV_state~q\,
	combout => \btn_controller|and_buttons~0_combout\);

-- Location: FF_X80_Y6_N35
\btn_controller|and_buttons\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	asdata => \btn_controller|and_buttons~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_controller|and_buttons~q\);

-- Location: MLABCELL_X78_Y7_N0
\btn_controller|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|Add0~77_sumout\ = SUM(( !\btn_controller|delay\(0) ) + ( VCC ) + ( !VCC ))
-- \btn_controller|Add0~78\ = CARRY(( !\btn_controller|delay\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \btn_controller|ALT_INV_delay\(0),
	cin => GND,
	sumout => \btn_controller|Add0~77_sumout\,
	cout => \btn_controller|Add0~78\);

-- Location: LABCELL_X77_Y7_N33
\btn_controller|delay~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|delay~20_combout\ = (!\btn_controller|Add0~77_sumout\) # ((\btn_controller|and_buttons~q\ & !\btn_controller|state~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111101010000111111110101000011111111010100001111111101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \btn_controller|ALT_INV_and_buttons~q\,
	datac => \btn_controller|ALT_INV_state~q\,
	datad => \btn_controller|ALT_INV_Add0~77_sumout\,
	combout => \btn_controller|delay~20_combout\);

-- Location: LABCELL_X77_Y6_N42
\btn_controller|delay[13]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|delay[13]~1_combout\ = ( \btn_controller|Equal0~5_combout\ & ( (\btn_controller|and_buttons~q\ & !\btn_controller|state~q\) ) ) # ( !\btn_controller|Equal0~5_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \btn_controller|ALT_INV_and_buttons~q\,
	datac => \btn_controller|ALT_INV_state~q\,
	dataf => \btn_controller|ALT_INV_Equal0~5_combout\,
	combout => \btn_controller|delay[13]~1_combout\);

-- Location: FF_X77_Y7_N34
\btn_controller|delay[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \btn_controller|delay~20_combout\,
	ena => \btn_controller|delay[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_controller|delay\(0));

-- Location: MLABCELL_X78_Y7_N3
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

-- Location: LABCELL_X77_Y7_N12
\btn_controller|delay~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|delay~21_combout\ = ( \btn_controller|Add0~81_sumout\ & ( (\btn_controller|and_buttons~q\ & !\btn_controller|state~q\) ) ) # ( !\btn_controller|Add0~81_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111010001000100010011111111111111110100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \btn_controller|ALT_INV_and_buttons~q\,
	datab => \btn_controller|ALT_INV_state~q\,
	datae => \btn_controller|ALT_INV_Add0~81_sumout\,
	combout => \btn_controller|delay~21_combout\);

-- Location: FF_X77_Y7_N13
\btn_controller|delay[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \btn_controller|delay~21_combout\,
	ena => \btn_controller|delay[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_controller|delay\(1));

-- Location: MLABCELL_X78_Y7_N6
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

-- Location: LABCELL_X77_Y7_N27
\btn_controller|delay~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|delay~22_combout\ = ( \btn_controller|Add0~85_sumout\ & ( (\btn_controller|and_buttons~q\ & !\btn_controller|state~q\) ) ) # ( !\btn_controller|Add0~85_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111101010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \btn_controller|ALT_INV_and_buttons~q\,
	datac => \btn_controller|ALT_INV_state~q\,
	dataf => \btn_controller|ALT_INV_Add0~85_sumout\,
	combout => \btn_controller|delay~22_combout\);

-- Location: FF_X77_Y7_N28
\btn_controller|delay[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \btn_controller|delay~22_combout\,
	ena => \btn_controller|delay[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_controller|delay\(2));

-- Location: MLABCELL_X78_Y7_N9
\btn_controller|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|Add0~89_sumout\ = SUM(( !\btn_controller|delay\(3) ) + ( VCC ) + ( \btn_controller|Add0~86\ ))
-- \btn_controller|Add0~90\ = CARRY(( !\btn_controller|delay\(3) ) + ( VCC ) + ( \btn_controller|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \btn_controller|ALT_INV_delay\(3),
	cin => \btn_controller|Add0~86\,
	sumout => \btn_controller|Add0~89_sumout\,
	cout => \btn_controller|Add0~90\);

-- Location: LABCELL_X77_Y7_N42
\btn_controller|delay~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|delay~23_combout\ = (!\btn_controller|Add0~89_sumout\) # ((\btn_controller|and_buttons~q\ & !\btn_controller|state~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010011110100111101001111010011110100111101001111010011110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \btn_controller|ALT_INV_and_buttons~q\,
	datab => \btn_controller|ALT_INV_state~q\,
	datac => \btn_controller|ALT_INV_Add0~89_sumout\,
	combout => \btn_controller|delay~23_combout\);

-- Location: FF_X77_Y7_N43
\btn_controller|delay[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \btn_controller|delay~23_combout\,
	ena => \btn_controller|delay[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_controller|delay\(3));

-- Location: MLABCELL_X78_Y7_N12
\btn_controller|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|Add0~93_sumout\ = SUM(( \btn_controller|delay[4]~DUPLICATE_q\ ) + ( VCC ) + ( \btn_controller|Add0~90\ ))
-- \btn_controller|Add0~94\ = CARRY(( \btn_controller|delay[4]~DUPLICATE_q\ ) + ( VCC ) + ( \btn_controller|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \btn_controller|ALT_INV_delay[4]~DUPLICATE_q\,
	cin => \btn_controller|Add0~90\,
	sumout => \btn_controller|Add0~93_sumout\,
	cout => \btn_controller|Add0~94\);

-- Location: LABCELL_X77_Y7_N21
\btn_controller|delay~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|delay~24_combout\ = ( \btn_controller|Add0~93_sumout\ ) # ( !\btn_controller|Add0~93_sumout\ & ( (\btn_controller|and_buttons~q\ & !\btn_controller|state~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \btn_controller|ALT_INV_and_buttons~q\,
	datac => \btn_controller|ALT_INV_state~q\,
	dataf => \btn_controller|ALT_INV_Add0~93_sumout\,
	combout => \btn_controller|delay~24_combout\);

-- Location: FF_X77_Y7_N22
\btn_controller|delay[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \btn_controller|delay~24_combout\,
	ena => \btn_controller|delay[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_controller|delay[4]~DUPLICATE_q\);

-- Location: MLABCELL_X78_Y7_N15
\btn_controller|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|Add0~97_sumout\ = SUM(( \btn_controller|delay[5]~DUPLICATE_q\ ) + ( VCC ) + ( \btn_controller|Add0~94\ ))
-- \btn_controller|Add0~98\ = CARRY(( \btn_controller|delay[5]~DUPLICATE_q\ ) + ( VCC ) + ( \btn_controller|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \btn_controller|ALT_INV_delay[5]~DUPLICATE_q\,
	cin => \btn_controller|Add0~94\,
	sumout => \btn_controller|Add0~97_sumout\,
	cout => \btn_controller|Add0~98\);

-- Location: LABCELL_X77_Y7_N6
\btn_controller|delay~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|delay~25_combout\ = ( \btn_controller|Add0~97_sumout\ & ( (!\btn_controller|and_buttons~q\) # (\btn_controller|state~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001111111100000000000000001100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \btn_controller|ALT_INV_and_buttons~q\,
	datad => \btn_controller|ALT_INV_state~q\,
	datae => \btn_controller|ALT_INV_Add0~97_sumout\,
	combout => \btn_controller|delay~25_combout\);

-- Location: FF_X77_Y7_N7
\btn_controller|delay[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \btn_controller|delay~25_combout\,
	ena => \btn_controller|delay[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_controller|delay[5]~DUPLICATE_q\);

-- Location: MLABCELL_X78_Y7_N18
\btn_controller|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|Add0~101_sumout\ = SUM(( \btn_controller|delay\(6) ) + ( VCC ) + ( \btn_controller|Add0~98\ ))
-- \btn_controller|Add0~102\ = CARRY(( \btn_controller|delay\(6) ) + ( VCC ) + ( \btn_controller|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \btn_controller|ALT_INV_delay\(6),
	cin => \btn_controller|Add0~98\,
	sumout => \btn_controller|Add0~101_sumout\,
	cout => \btn_controller|Add0~102\);

-- Location: LABCELL_X79_Y6_N54
\btn_controller|delay~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|delay~26_combout\ = ( \btn_controller|Add0~101_sumout\ & ( \btn_controller|and_buttons~q\ & ( \btn_controller|state~q\ ) ) ) # ( \btn_controller|Add0~101_sumout\ & ( !\btn_controller|and_buttons~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \btn_controller|ALT_INV_state~q\,
	datae => \btn_controller|ALT_INV_Add0~101_sumout\,
	dataf => \btn_controller|ALT_INV_and_buttons~q\,
	combout => \btn_controller|delay~26_combout\);

-- Location: FF_X79_Y6_N56
\btn_controller|delay[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \btn_controller|delay~26_combout\,
	ena => \btn_controller|delay[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_controller|delay\(6));

-- Location: MLABCELL_X78_Y7_N21
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

-- Location: LABCELL_X79_Y6_N27
\btn_controller|delay~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|delay~27_combout\ = ( \btn_controller|and_buttons~q\ & ( (\btn_controller|state~q\ & \btn_controller|Add0~105_sumout\) ) ) # ( !\btn_controller|and_buttons~q\ & ( \btn_controller|Add0~105_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \btn_controller|ALT_INV_state~q\,
	datad => \btn_controller|ALT_INV_Add0~105_sumout\,
	dataf => \btn_controller|ALT_INV_and_buttons~q\,
	combout => \btn_controller|delay~27_combout\);

-- Location: FF_X79_Y6_N29
\btn_controller|delay[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \btn_controller|delay~27_combout\,
	ena => \btn_controller|delay[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_controller|delay\(7));

-- Location: MLABCELL_X78_Y7_N24
\btn_controller|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|Add0~109_sumout\ = SUM(( !\btn_controller|delay\(8) ) + ( VCC ) + ( \btn_controller|Add0~106\ ))
-- \btn_controller|Add0~110\ = CARRY(( !\btn_controller|delay\(8) ) + ( VCC ) + ( \btn_controller|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \btn_controller|ALT_INV_delay\(8),
	cin => \btn_controller|Add0~106\,
	sumout => \btn_controller|Add0~109_sumout\,
	cout => \btn_controller|Add0~110\);

-- Location: LABCELL_X79_Y6_N42
\btn_controller|delay~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|delay~28_combout\ = ( !\btn_controller|Add0~109_sumout\ & ( \btn_controller|and_buttons~q\ & ( \btn_controller|state~q\ ) ) ) # ( !\btn_controller|Add0~109_sumout\ & ( !\btn_controller|and_buttons~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000001010101010101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \btn_controller|ALT_INV_state~q\,
	datae => \btn_controller|ALT_INV_Add0~109_sumout\,
	dataf => \btn_controller|ALT_INV_and_buttons~q\,
	combout => \btn_controller|delay~28_combout\);

-- Location: FF_X79_Y6_N44
\btn_controller|delay[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \btn_controller|delay~28_combout\,
	ena => \btn_controller|delay[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_controller|delay\(8));

-- Location: MLABCELL_X78_Y7_N27
\btn_controller|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|Add0~113_sumout\ = SUM(( !\btn_controller|delay[9]~DUPLICATE_q\ ) + ( VCC ) + ( \btn_controller|Add0~110\ ))
-- \btn_controller|Add0~114\ = CARRY(( !\btn_controller|delay[9]~DUPLICATE_q\ ) + ( VCC ) + ( \btn_controller|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \btn_controller|ALT_INV_delay[9]~DUPLICATE_q\,
	cin => \btn_controller|Add0~110\,
	sumout => \btn_controller|Add0~113_sumout\,
	cout => \btn_controller|Add0~114\);

-- Location: LABCELL_X79_Y6_N15
\btn_controller|delay~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|delay~29_combout\ = ( !\btn_controller|Add0~113_sumout\ & ( \btn_controller|and_buttons~q\ & ( \btn_controller|state~q\ ) ) ) # ( !\btn_controller|Add0~113_sumout\ & ( !\btn_controller|and_buttons~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000001010101010101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \btn_controller|ALT_INV_state~q\,
	datae => \btn_controller|ALT_INV_Add0~113_sumout\,
	dataf => \btn_controller|ALT_INV_and_buttons~q\,
	combout => \btn_controller|delay~29_combout\);

-- Location: FF_X79_Y6_N16
\btn_controller|delay[9]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \btn_controller|delay~29_combout\,
	ena => \btn_controller|delay[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_controller|delay[9]~DUPLICATE_q\);

-- Location: MLABCELL_X78_Y7_N30
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

-- Location: LABCELL_X79_Y6_N3
\btn_controller|delay~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|delay~30_combout\ = ( !\btn_controller|Add0~117_sumout\ & ( \btn_controller|and_buttons~q\ & ( \btn_controller|state~q\ ) ) ) # ( !\btn_controller|Add0~117_sumout\ & ( !\btn_controller|and_buttons~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000001010101010101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \btn_controller|ALT_INV_state~q\,
	datae => \btn_controller|ALT_INV_Add0~117_sumout\,
	dataf => \btn_controller|ALT_INV_and_buttons~q\,
	combout => \btn_controller|delay~30_combout\);

-- Location: FF_X79_Y6_N5
\btn_controller|delay[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \btn_controller|delay~30_combout\,
	ena => \btn_controller|delay[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_controller|delay\(10));

-- Location: FF_X79_Y6_N17
\btn_controller|delay[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \btn_controller|delay~29_combout\,
	ena => \btn_controller|delay[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_controller|delay\(9));

-- Location: MLABCELL_X78_Y7_N33
\btn_controller|Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|Add0~121_sumout\ = SUM(( \btn_controller|delay\(11) ) + ( VCC ) + ( \btn_controller|Add0~118\ ))
-- \btn_controller|Add0~122\ = CARRY(( \btn_controller|delay\(11) ) + ( VCC ) + ( \btn_controller|Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \btn_controller|ALT_INV_delay\(11),
	cin => \btn_controller|Add0~118\,
	sumout => \btn_controller|Add0~121_sumout\,
	cout => \btn_controller|Add0~122\);

-- Location: LABCELL_X79_Y6_N18
\btn_controller|delay~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|delay~31_combout\ = ( \btn_controller|Add0~121_sumout\ & ( \btn_controller|and_buttons~q\ & ( \btn_controller|state~q\ ) ) ) # ( \btn_controller|Add0~121_sumout\ & ( !\btn_controller|and_buttons~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \btn_controller|ALT_INV_state~q\,
	datae => \btn_controller|ALT_INV_Add0~121_sumout\,
	dataf => \btn_controller|ALT_INV_and_buttons~q\,
	combout => \btn_controller|delay~31_combout\);

-- Location: FF_X79_Y6_N19
\btn_controller|delay[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \btn_controller|delay~31_combout\,
	ena => \btn_controller|delay[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_controller|delay\(11));

-- Location: LABCELL_X79_Y6_N30
\btn_controller|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|Equal0~4_combout\ = ( !\btn_controller|delay\(7) & ( !\btn_controller|delay\(11) & ( (\btn_controller|delay\(10) & (\btn_controller|delay\(9) & (!\btn_controller|delay\(6) & \btn_controller|delay\(8)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \btn_controller|ALT_INV_delay\(10),
	datab => \btn_controller|ALT_INV_delay\(9),
	datac => \btn_controller|ALT_INV_delay\(6),
	datad => \btn_controller|ALT_INV_delay\(8),
	datae => \btn_controller|ALT_INV_delay\(7),
	dataf => \btn_controller|ALT_INV_delay\(11),
	combout => \btn_controller|Equal0~4_combout\);

-- Location: FF_X77_Y6_N34
\btn_controller|delay[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \btn_controller|delay~10_combout\,
	ena => \btn_controller|delay[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_controller|delay\(20));

-- Location: MLABCELL_X78_Y7_N36
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

-- Location: LABCELL_X77_Y7_N30
\btn_controller|delay~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|delay~14_combout\ = (\btn_controller|Add0~53_sumout\ & ((!\btn_controller|and_buttons~q\) # (\btn_controller|state~q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010111011000000001011101100000000101110110000000010111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \btn_controller|ALT_INV_and_buttons~q\,
	datab => \btn_controller|ALT_INV_state~q\,
	datad => \btn_controller|ALT_INV_Add0~53_sumout\,
	combout => \btn_controller|delay~14_combout\);

-- Location: FF_X77_Y7_N31
\btn_controller|delay[12]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \btn_controller|delay~14_combout\,
	ena => \btn_controller|delay[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_controller|delay[12]~DUPLICATE_q\);

-- Location: MLABCELL_X78_Y7_N39
\btn_controller|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|Add0~57_sumout\ = SUM(( !\btn_controller|delay[13]~DUPLICATE_q\ ) + ( VCC ) + ( \btn_controller|Add0~54\ ))
-- \btn_controller|Add0~58\ = CARRY(( !\btn_controller|delay[13]~DUPLICATE_q\ ) + ( VCC ) + ( \btn_controller|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \btn_controller|ALT_INV_delay[13]~DUPLICATE_q\,
	cin => \btn_controller|Add0~54\,
	sumout => \btn_controller|Add0~57_sumout\,
	cout => \btn_controller|Add0~58\);

-- Location: LABCELL_X77_Y7_N24
\btn_controller|delay~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|delay~15_combout\ = ( !\btn_controller|Add0~57_sumout\ & ( (!\btn_controller|and_buttons~q\) # (\btn_controller|state~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011101110111011101100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \btn_controller|ALT_INV_and_buttons~q\,
	datab => \btn_controller|ALT_INV_state~q\,
	dataf => \btn_controller|ALT_INV_Add0~57_sumout\,
	combout => \btn_controller|delay~15_combout\);

-- Location: FF_X77_Y7_N25
\btn_controller|delay[13]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \btn_controller|delay~15_combout\,
	ena => \btn_controller|delay[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_controller|delay[13]~DUPLICATE_q\);

-- Location: MLABCELL_X78_Y7_N42
\btn_controller|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|Add0~61_sumout\ = SUM(( \btn_controller|delay\(14) ) + ( VCC ) + ( \btn_controller|Add0~58\ ))
-- \btn_controller|Add0~62\ = CARRY(( \btn_controller|delay\(14) ) + ( VCC ) + ( \btn_controller|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \btn_controller|ALT_INV_delay\(14),
	cin => \btn_controller|Add0~58\,
	sumout => \btn_controller|Add0~61_sumout\,
	cout => \btn_controller|Add0~62\);

-- Location: LABCELL_X77_Y7_N51
\btn_controller|delay~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|delay~16_combout\ = ( \btn_controller|Add0~61_sumout\ & ( (!\btn_controller|and_buttons~q\) # (\btn_controller|state~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \btn_controller|ALT_INV_state~q\,
	datac => \btn_controller|ALT_INV_and_buttons~q\,
	dataf => \btn_controller|ALT_INV_Add0~61_sumout\,
	combout => \btn_controller|delay~16_combout\);

-- Location: FF_X77_Y7_N52
\btn_controller|delay[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \btn_controller|delay~16_combout\,
	ena => \btn_controller|delay[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_controller|delay\(14));

-- Location: MLABCELL_X78_Y7_N45
\btn_controller|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|Add0~65_sumout\ = SUM(( \btn_controller|delay\(15) ) + ( VCC ) + ( \btn_controller|Add0~62\ ))
-- \btn_controller|Add0~66\ = CARRY(( \btn_controller|delay\(15) ) + ( VCC ) + ( \btn_controller|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \btn_controller|ALT_INV_delay\(15),
	cin => \btn_controller|Add0~62\,
	sumout => \btn_controller|Add0~65_sumout\,
	cout => \btn_controller|Add0~66\);

-- Location: LABCELL_X77_Y7_N3
\btn_controller|delay~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|delay~17_combout\ = ( \btn_controller|Add0~65_sumout\ & ( (!\btn_controller|and_buttons~q\) # (\btn_controller|state~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \btn_controller|ALT_INV_and_buttons~q\,
	datac => \btn_controller|ALT_INV_state~q\,
	dataf => \btn_controller|ALT_INV_Add0~65_sumout\,
	combout => \btn_controller|delay~17_combout\);

-- Location: FF_X77_Y7_N4
\btn_controller|delay[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \btn_controller|delay~17_combout\,
	ena => \btn_controller|delay[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_controller|delay\(15));

-- Location: MLABCELL_X78_Y7_N48
\btn_controller|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|Add0~69_sumout\ = SUM(( \btn_controller|delay[16]~DUPLICATE_q\ ) + ( VCC ) + ( \btn_controller|Add0~66\ ))
-- \btn_controller|Add0~70\ = CARRY(( \btn_controller|delay[16]~DUPLICATE_q\ ) + ( VCC ) + ( \btn_controller|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \btn_controller|ALT_INV_delay[16]~DUPLICATE_q\,
	cin => \btn_controller|Add0~66\,
	sumout => \btn_controller|Add0~69_sumout\,
	cout => \btn_controller|Add0~70\);

-- Location: LABCELL_X77_Y7_N45
\btn_controller|delay~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|delay~18_combout\ = ( \btn_controller|Add0~69_sumout\ & ( (!\btn_controller|and_buttons~q\) # (\btn_controller|state~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \btn_controller|ALT_INV_and_buttons~q\,
	datac => \btn_controller|ALT_INV_state~q\,
	dataf => \btn_controller|ALT_INV_Add0~69_sumout\,
	combout => \btn_controller|delay~18_combout\);

-- Location: FF_X77_Y7_N46
\btn_controller|delay[16]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \btn_controller|delay~18_combout\,
	ena => \btn_controller|delay[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_controller|delay[16]~DUPLICATE_q\);

-- Location: MLABCELL_X78_Y7_N51
\btn_controller|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|Add0~73_sumout\ = SUM(( \btn_controller|delay\(17) ) + ( VCC ) + ( \btn_controller|Add0~70\ ))
-- \btn_controller|Add0~74\ = CARRY(( \btn_controller|delay\(17) ) + ( VCC ) + ( \btn_controller|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \btn_controller|ALT_INV_delay\(17),
	cin => \btn_controller|Add0~70\,
	sumout => \btn_controller|Add0~73_sumout\,
	cout => \btn_controller|Add0~74\);

-- Location: LABCELL_X77_Y7_N18
\btn_controller|delay~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|delay~19_combout\ = ( \btn_controller|Add0~73_sumout\ & ( (!\btn_controller|and_buttons~q\) # (\btn_controller|state~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \btn_controller|ALT_INV_and_buttons~q\,
	datab => \btn_controller|ALT_INV_state~q\,
	dataf => \btn_controller|ALT_INV_Add0~73_sumout\,
	combout => \btn_controller|delay~19_combout\);

-- Location: FF_X77_Y7_N19
\btn_controller|delay[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \btn_controller|delay~19_combout\,
	ena => \btn_controller|delay[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_controller|delay\(17));

-- Location: MLABCELL_X78_Y7_N54
\btn_controller|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|Add0~29_sumout\ = SUM(( \btn_controller|delay[18]~DUPLICATE_q\ ) + ( VCC ) + ( \btn_controller|Add0~74\ ))
-- \btn_controller|Add0~30\ = CARRY(( \btn_controller|delay[18]~DUPLICATE_q\ ) + ( VCC ) + ( \btn_controller|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \btn_controller|ALT_INV_delay[18]~DUPLICATE_q\,
	cin => \btn_controller|Add0~74\,
	sumout => \btn_controller|Add0~29_sumout\,
	cout => \btn_controller|Add0~30\);

-- Location: LABCELL_X77_Y6_N15
\btn_controller|delay~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|delay~8_combout\ = ( \btn_controller|Add0~29_sumout\ & ( (!\btn_controller|and_buttons~q\) # (\btn_controller|state~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \btn_controller|ALT_INV_and_buttons~q\,
	datac => \btn_controller|ALT_INV_state~q\,
	dataf => \btn_controller|ALT_INV_Add0~29_sumout\,
	combout => \btn_controller|delay~8_combout\);

-- Location: FF_X77_Y6_N16
\btn_controller|delay[18]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \btn_controller|delay~8_combout\,
	ena => \btn_controller|delay[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_controller|delay[18]~DUPLICATE_q\);

-- Location: MLABCELL_X78_Y7_N57
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

-- Location: LABCELL_X77_Y6_N12
\btn_controller|delay~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|delay~9_combout\ = ( \btn_controller|Add0~33_sumout\ & ( (!\btn_controller|and_buttons~q\) # (\btn_controller|state~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \btn_controller|ALT_INV_and_buttons~q\,
	datab => \btn_controller|ALT_INV_state~q\,
	dataf => \btn_controller|ALT_INV_Add0~33_sumout\,
	combout => \btn_controller|delay~9_combout\);

-- Location: FF_X77_Y6_N14
\btn_controller|delay[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \btn_controller|delay~9_combout\,
	ena => \btn_controller|delay[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_controller|delay\(19));

-- Location: MLABCELL_X78_Y6_N0
\btn_controller|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|Add0~37_sumout\ = SUM(( \btn_controller|delay\(20) ) + ( VCC ) + ( \btn_controller|Add0~34\ ))
-- \btn_controller|Add0~38\ = CARRY(( \btn_controller|delay\(20) ) + ( VCC ) + ( \btn_controller|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \btn_controller|ALT_INV_delay\(20),
	cin => \btn_controller|Add0~34\,
	sumout => \btn_controller|Add0~37_sumout\,
	cout => \btn_controller|Add0~38\);

-- Location: LABCELL_X77_Y6_N33
\btn_controller|delay~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|delay~10_combout\ = ( \btn_controller|Add0~37_sumout\ & ( \btn_controller|state~q\ ) ) # ( \btn_controller|Add0~37_sumout\ & ( !\btn_controller|state~q\ & ( !\btn_controller|and_buttons~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \btn_controller|ALT_INV_and_buttons~q\,
	datae => \btn_controller|ALT_INV_Add0~37_sumout\,
	dataf => \btn_controller|ALT_INV_state~q\,
	combout => \btn_controller|delay~10_combout\);

-- Location: FF_X77_Y6_N35
\btn_controller|delay[20]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \btn_controller|delay~10_combout\,
	ena => \btn_controller|delay[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_controller|delay[20]~DUPLICATE_q\);

-- Location: FF_X77_Y6_N40
\btn_controller|delay[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \btn_controller|delay~12_combout\,
	ena => \btn_controller|delay[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_controller|delay\(22));

-- Location: MLABCELL_X78_Y6_N3
\btn_controller|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|Add0~41_sumout\ = SUM(( \btn_controller|delay\(21) ) + ( VCC ) + ( \btn_controller|Add0~38\ ))
-- \btn_controller|Add0~42\ = CARRY(( \btn_controller|delay\(21) ) + ( VCC ) + ( \btn_controller|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \btn_controller|ALT_INV_delay\(21),
	cin => \btn_controller|Add0~38\,
	sumout => \btn_controller|Add0~41_sumout\,
	cout => \btn_controller|Add0~42\);

-- Location: MLABCELL_X78_Y6_N57
\btn_controller|delay~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|delay~11_combout\ = ( \btn_controller|state~q\ & ( \btn_controller|Add0~41_sumout\ ) ) # ( !\btn_controller|state~q\ & ( (!\btn_controller|and_buttons~q\ & \btn_controller|Add0~41_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \btn_controller|ALT_INV_and_buttons~q\,
	datad => \btn_controller|ALT_INV_Add0~41_sumout\,
	dataf => \btn_controller|ALT_INV_state~q\,
	combout => \btn_controller|delay~11_combout\);

-- Location: FF_X78_Y6_N58
\btn_controller|delay[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \btn_controller|delay~11_combout\,
	ena => \btn_controller|delay[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_controller|delay\(21));

-- Location: MLABCELL_X78_Y6_N6
\btn_controller|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|Add0~45_sumout\ = SUM(( \btn_controller|delay\(22) ) + ( VCC ) + ( \btn_controller|Add0~42\ ))
-- \btn_controller|Add0~46\ = CARRY(( \btn_controller|delay\(22) ) + ( VCC ) + ( \btn_controller|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \btn_controller|ALT_INV_delay\(22),
	cin => \btn_controller|Add0~42\,
	sumout => \btn_controller|Add0~45_sumout\,
	cout => \btn_controller|Add0~46\);

-- Location: LABCELL_X77_Y6_N39
\btn_controller|delay~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|delay~12_combout\ = ( \btn_controller|Add0~45_sumout\ & ( (!\btn_controller|and_buttons~q\) # (\btn_controller|state~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \btn_controller|ALT_INV_and_buttons~q\,
	datac => \btn_controller|ALT_INV_state~q\,
	dataf => \btn_controller|ALT_INV_Add0~45_sumout\,
	combout => \btn_controller|delay~12_combout\);

-- Location: FF_X77_Y6_N41
\btn_controller|delay[22]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \btn_controller|delay~12_combout\,
	ena => \btn_controller|delay[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_controller|delay[22]~DUPLICATE_q\);

-- Location: FF_X77_Y6_N37
\btn_controller|delay[23]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \btn_controller|delay~13_combout\,
	ena => \btn_controller|delay[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_controller|delay[23]~DUPLICATE_q\);

-- Location: MLABCELL_X78_Y6_N9
\btn_controller|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|Add0~49_sumout\ = SUM(( \btn_controller|delay[23]~DUPLICATE_q\ ) + ( VCC ) + ( \btn_controller|Add0~46\ ))
-- \btn_controller|Add0~50\ = CARRY(( \btn_controller|delay[23]~DUPLICATE_q\ ) + ( VCC ) + ( \btn_controller|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \btn_controller|ALT_INV_delay[23]~DUPLICATE_q\,
	cin => \btn_controller|Add0~46\,
	sumout => \btn_controller|Add0~49_sumout\,
	cout => \btn_controller|Add0~50\);

-- Location: LABCELL_X77_Y6_N36
\btn_controller|delay~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|delay~13_combout\ = ( \btn_controller|Add0~49_sumout\ & ( (!\btn_controller|and_buttons~q\) # (\btn_controller|state~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \btn_controller|ALT_INV_and_buttons~q\,
	datab => \btn_controller|ALT_INV_state~q\,
	dataf => \btn_controller|ALT_INV_Add0~49_sumout\,
	combout => \btn_controller|delay~13_combout\);

-- Location: FF_X77_Y6_N38
\btn_controller|delay[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \btn_controller|delay~13_combout\,
	ena => \btn_controller|delay[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_controller|delay\(23));

-- Location: FF_X78_Y6_N59
\btn_controller|delay[21]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \btn_controller|delay~11_combout\,
	ena => \btn_controller|delay[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_controller|delay[21]~DUPLICATE_q\);

-- Location: FF_X77_Y6_N17
\btn_controller|delay[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \btn_controller|delay~8_combout\,
	ena => \btn_controller|delay[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_controller|delay\(18));

-- Location: LABCELL_X77_Y6_N6
\btn_controller|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|Equal0~1_combout\ = ( !\btn_controller|delay[21]~DUPLICATE_q\ & ( !\btn_controller|delay\(18) & ( (!\btn_controller|delay[20]~DUPLICATE_q\ & (!\btn_controller|delay[22]~DUPLICATE_q\ & (!\btn_controller|delay\(23) & 
-- !\btn_controller|delay\(19)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \btn_controller|ALT_INV_delay[20]~DUPLICATE_q\,
	datab => \btn_controller|ALT_INV_delay[22]~DUPLICATE_q\,
	datac => \btn_controller|ALT_INV_delay\(23),
	datad => \btn_controller|ALT_INV_delay\(19),
	datae => \btn_controller|ALT_INV_delay[21]~DUPLICATE_q\,
	dataf => \btn_controller|ALT_INV_delay\(18),
	combout => \btn_controller|Equal0~1_combout\);

-- Location: MLABCELL_X78_Y6_N12
\btn_controller|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|Add0~5_sumout\ = SUM(( \btn_controller|delay\(24) ) + ( VCC ) + ( \btn_controller|Add0~50\ ))
-- \btn_controller|Add0~6\ = CARRY(( \btn_controller|delay\(24) ) + ( VCC ) + ( \btn_controller|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \btn_controller|ALT_INV_delay\(24),
	cin => \btn_controller|Add0~50\,
	sumout => \btn_controller|Add0~5_sumout\,
	cout => \btn_controller|Add0~6\);

-- Location: MLABCELL_X78_Y6_N54
\btn_controller|delay~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|delay~2_combout\ = ( \btn_controller|Add0~5_sumout\ & ( (!\btn_controller|and_buttons~q\) # (\btn_controller|state~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \btn_controller|ALT_INV_and_buttons~q\,
	datab => \btn_controller|ALT_INV_state~q\,
	dataf => \btn_controller|ALT_INV_Add0~5_sumout\,
	combout => \btn_controller|delay~2_combout\);

-- Location: FF_X78_Y6_N56
\btn_controller|delay[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \btn_controller|delay~2_combout\,
	ena => \btn_controller|delay[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_controller|delay\(24));

-- Location: MLABCELL_X78_Y6_N15
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

-- Location: MLABCELL_X78_Y6_N36
\btn_controller|delay~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|delay~3_combout\ = ( \btn_controller|Add0~9_sumout\ & ( (!\btn_controller|and_buttons~q\) # (\btn_controller|state~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \btn_controller|ALT_INV_and_buttons~q\,
	datab => \btn_controller|ALT_INV_state~q\,
	dataf => \btn_controller|ALT_INV_Add0~9_sumout\,
	combout => \btn_controller|delay~3_combout\);

-- Location: FF_X78_Y6_N38
\btn_controller|delay[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \btn_controller|delay~3_combout\,
	ena => \btn_controller|delay[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_controller|delay\(25));

-- Location: MLABCELL_X78_Y6_N18
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

-- Location: MLABCELL_X78_Y6_N51
\btn_controller|delay~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|delay~4_combout\ = ( \btn_controller|Add0~13_sumout\ & ( (!\btn_controller|and_buttons~q\) # (\btn_controller|state~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \btn_controller|ALT_INV_and_buttons~q\,
	datab => \btn_controller|ALT_INV_state~q\,
	dataf => \btn_controller|ALT_INV_Add0~13_sumout\,
	combout => \btn_controller|delay~4_combout\);

-- Location: FF_X78_Y6_N53
\btn_controller|delay[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \btn_controller|delay~4_combout\,
	ena => \btn_controller|delay[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_controller|delay\(26));

-- Location: MLABCELL_X78_Y6_N21
\btn_controller|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|Add0~17_sumout\ = SUM(( \btn_controller|delay\(27) ) + ( VCC ) + ( \btn_controller|Add0~14\ ))
-- \btn_controller|Add0~18\ = CARRY(( \btn_controller|delay\(27) ) + ( VCC ) + ( \btn_controller|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \btn_controller|ALT_INV_delay\(27),
	cin => \btn_controller|Add0~14\,
	sumout => \btn_controller|Add0~17_sumout\,
	cout => \btn_controller|Add0~18\);

-- Location: MLABCELL_X78_Y6_N45
\btn_controller|delay~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|delay~5_combout\ = ( \btn_controller|Add0~17_sumout\ & ( (!\btn_controller|and_buttons~q\) # (\btn_controller|state~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \btn_controller|ALT_INV_and_buttons~q\,
	datab => \btn_controller|ALT_INV_state~q\,
	dataf => \btn_controller|ALT_INV_Add0~17_sumout\,
	combout => \btn_controller|delay~5_combout\);

-- Location: FF_X78_Y6_N47
\btn_controller|delay[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \btn_controller|delay~5_combout\,
	ena => \btn_controller|delay[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_controller|delay\(27));

-- Location: MLABCELL_X78_Y6_N24
\btn_controller|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|Add0~21_sumout\ = SUM(( \btn_controller|delay\(28) ) + ( VCC ) + ( \btn_controller|Add0~18\ ))
-- \btn_controller|Add0~22\ = CARRY(( \btn_controller|delay\(28) ) + ( VCC ) + ( \btn_controller|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \btn_controller|ALT_INV_delay\(28),
	cin => \btn_controller|Add0~18\,
	sumout => \btn_controller|Add0~21_sumout\,
	cout => \btn_controller|Add0~22\);

-- Location: MLABCELL_X78_Y6_N42
\btn_controller|delay~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|delay~6_combout\ = ( \btn_controller|Add0~21_sumout\ & ( (!\btn_controller|and_buttons~q\) # (\btn_controller|state~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \btn_controller|ALT_INV_and_buttons~q\,
	datac => \btn_controller|ALT_INV_state~q\,
	dataf => \btn_controller|ALT_INV_Add0~21_sumout\,
	combout => \btn_controller|delay~6_combout\);

-- Location: FF_X78_Y6_N44
\btn_controller|delay[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \btn_controller|delay~6_combout\,
	ena => \btn_controller|delay[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_controller|delay\(28));

-- Location: MLABCELL_X78_Y6_N27
\btn_controller|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|Add0~25_sumout\ = SUM(( \btn_controller|delay\(29) ) + ( VCC ) + ( \btn_controller|Add0~22\ ))
-- \btn_controller|Add0~26\ = CARRY(( \btn_controller|delay\(29) ) + ( VCC ) + ( \btn_controller|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \btn_controller|ALT_INV_delay\(29),
	cin => \btn_controller|Add0~22\,
	sumout => \btn_controller|Add0~25_sumout\,
	cout => \btn_controller|Add0~26\);

-- Location: MLABCELL_X78_Y6_N39
\btn_controller|delay~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|delay~7_combout\ = ( \btn_controller|Add0~25_sumout\ & ( (!\btn_controller|and_buttons~q\) # (\btn_controller|state~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \btn_controller|ALT_INV_and_buttons~q\,
	datab => \btn_controller|ALT_INV_state~q\,
	dataf => \btn_controller|ALT_INV_Add0~25_sumout\,
	combout => \btn_controller|delay~7_combout\);

-- Location: FF_X78_Y6_N41
\btn_controller|delay[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \btn_controller|delay~7_combout\,
	ena => \btn_controller|delay[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_controller|delay\(29));

-- Location: LABCELL_X77_Y6_N54
\btn_controller|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|Equal0~0_combout\ = ( !\btn_controller|delay\(25) & ( !\btn_controller|delay\(29) & ( (!\btn_controller|delay\(26) & (!\btn_controller|delay\(24) & (!\btn_controller|delay\(27) & !\btn_controller|delay\(28)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \btn_controller|ALT_INV_delay\(26),
	datab => \btn_controller|ALT_INV_delay\(24),
	datac => \btn_controller|ALT_INV_delay\(27),
	datad => \btn_controller|ALT_INV_delay\(28),
	datae => \btn_controller|ALT_INV_delay\(25),
	dataf => \btn_controller|ALT_INV_delay\(29),
	combout => \btn_controller|Equal0~0_combout\);

-- Location: FF_X77_Y7_N23
\btn_controller|delay[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \btn_controller|delay~24_combout\,
	ena => \btn_controller|delay[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_controller|delay\(4));

-- Location: FF_X77_Y7_N8
\btn_controller|delay[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \btn_controller|delay~25_combout\,
	ena => \btn_controller|delay[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_controller|delay\(5));

-- Location: FF_X77_Y7_N35
\btn_controller|delay[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \btn_controller|delay~20_combout\,
	ena => \btn_controller|delay[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_controller|delay[0]~DUPLICATE_q\);

-- Location: FF_X77_Y7_N44
\btn_controller|delay[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \btn_controller|delay~23_combout\,
	ena => \btn_controller|delay[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_controller|delay[3]~DUPLICATE_q\);

-- Location: FF_X77_Y7_N29
\btn_controller|delay[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \btn_controller|delay~22_combout\,
	ena => \btn_controller|delay[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_controller|delay[2]~DUPLICATE_q\);

-- Location: FF_X77_Y7_N14
\btn_controller|delay[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \btn_controller|delay~21_combout\,
	ena => \btn_controller|delay[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_controller|delay[1]~DUPLICATE_q\);

-- Location: LABCELL_X77_Y7_N54
\btn_controller|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|Equal0~3_combout\ = ( \btn_controller|delay[2]~DUPLICATE_q\ & ( \btn_controller|delay[1]~DUPLICATE_q\ & ( (!\btn_controller|delay\(4) & (!\btn_controller|delay\(5) & (\btn_controller|delay[0]~DUPLICATE_q\ & 
-- \btn_controller|delay[3]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \btn_controller|ALT_INV_delay\(4),
	datab => \btn_controller|ALT_INV_delay\(5),
	datac => \btn_controller|ALT_INV_delay[0]~DUPLICATE_q\,
	datad => \btn_controller|ALT_INV_delay[3]~DUPLICATE_q\,
	datae => \btn_controller|ALT_INV_delay[2]~DUPLICATE_q\,
	dataf => \btn_controller|ALT_INV_delay[1]~DUPLICATE_q\,
	combout => \btn_controller|Equal0~3_combout\);

-- Location: FF_X77_Y7_N20
\btn_controller|delay[17]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \btn_controller|delay~19_combout\,
	ena => \btn_controller|delay[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_controller|delay[17]~DUPLICATE_q\);

-- Location: FF_X77_Y7_N32
\btn_controller|delay[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \btn_controller|delay~14_combout\,
	ena => \btn_controller|delay[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_controller|delay\(12));

-- Location: FF_X77_Y7_N53
\btn_controller|delay[14]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \btn_controller|delay~16_combout\,
	ena => \btn_controller|delay[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_controller|delay[14]~DUPLICATE_q\);

-- Location: FF_X77_Y7_N47
\btn_controller|delay[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \btn_controller|delay~18_combout\,
	ena => \btn_controller|delay[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_controller|delay\(16));

-- Location: FF_X77_Y7_N5
\btn_controller|delay[15]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \btn_controller|delay~17_combout\,
	ena => \btn_controller|delay[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_controller|delay[15]~DUPLICATE_q\);

-- Location: FF_X77_Y7_N26
\btn_controller|delay[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \btn_controller|delay~15_combout\,
	ena => \btn_controller|delay[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_controller|delay\(13));

-- Location: LABCELL_X77_Y7_N36
\btn_controller|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|Equal0~2_combout\ = ( !\btn_controller|delay[15]~DUPLICATE_q\ & ( \btn_controller|delay\(13) & ( (!\btn_controller|delay[17]~DUPLICATE_q\ & (!\btn_controller|delay\(12) & (!\btn_controller|delay[14]~DUPLICATE_q\ & 
-- !\btn_controller|delay\(16)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \btn_controller|ALT_INV_delay[17]~DUPLICATE_q\,
	datab => \btn_controller|ALT_INV_delay\(12),
	datac => \btn_controller|ALT_INV_delay[14]~DUPLICATE_q\,
	datad => \btn_controller|ALT_INV_delay\(16),
	datae => \btn_controller|ALT_INV_delay[15]~DUPLICATE_q\,
	dataf => \btn_controller|ALT_INV_delay\(13),
	combout => \btn_controller|Equal0~2_combout\);

-- Location: MLABCELL_X78_Y6_N30
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

-- Location: MLABCELL_X78_Y6_N48
\btn_controller|delay~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|delay~0_combout\ = ( \btn_controller|Add0~1_sumout\ & ( (!\btn_controller|and_buttons~q\) # (\btn_controller|state~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \btn_controller|ALT_INV_and_buttons~q\,
	datab => \btn_controller|ALT_INV_state~q\,
	dataf => \btn_controller|ALT_INV_Add0~1_sumout\,
	combout => \btn_controller|delay~0_combout\);

-- Location: FF_X78_Y6_N49
\btn_controller|delay[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \btn_controller|delay~0_combout\,
	ena => \btn_controller|delay[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_controller|delay\(30));

-- Location: LABCELL_X77_Y6_N24
\btn_controller|Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|Equal0~5_combout\ = ( \btn_controller|Equal0~2_combout\ & ( !\btn_controller|delay\(30) & ( (\btn_controller|Equal0~4_combout\ & (\btn_controller|Equal0~1_combout\ & (\btn_controller|Equal0~0_combout\ & \btn_controller|Equal0~3_combout\))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \btn_controller|ALT_INV_Equal0~4_combout\,
	datab => \btn_controller|ALT_INV_Equal0~1_combout\,
	datac => \btn_controller|ALT_INV_Equal0~0_combout\,
	datad => \btn_controller|ALT_INV_Equal0~3_combout\,
	datae => \btn_controller|ALT_INV_Equal0~2_combout\,
	dataf => \btn_controller|ALT_INV_delay\(30),
	combout => \btn_controller|Equal0~5_combout\);

-- Location: LABCELL_X77_Y6_N21
\btn_controller|state~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|state~0_combout\ = ( \btn_controller|Equal0~5_combout\ & ( (!\btn_controller|state~q\ & \btn_controller|and_buttons~q\) ) ) # ( !\btn_controller|Equal0~5_combout\ & ( (\btn_controller|and_buttons~q\) # (\btn_controller|state~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010111110101111100001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \btn_controller|ALT_INV_state~q\,
	datac => \btn_controller|ALT_INV_and_buttons~q\,
	dataf => \btn_controller|ALT_INV_Equal0~5_combout\,
	combout => \btn_controller|state~0_combout\);

-- Location: FF_X77_Y6_N50
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

-- Location: LABCELL_X77_Y7_N48
\btn_controller|output~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|output~0_combout\ = ( !\btn_controller|state~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \btn_controller|ALT_INV_state~q\,
	combout => \btn_controller|output~0_combout\);

-- Location: FF_X82_Y7_N38
\btn_controller|output\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	asdata => \btn_controller|output~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_controller|output~q\);

-- Location: FF_X82_Y7_N31
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

-- Location: FF_X82_Y7_N53
\main_fsm|state.SEND\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	asdata => \main_fsm|state.PRSD_MSG~q\,
	sload => VCC,
	ena => \main_fsm|Equal10~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_fsm|state.SEND~q\);

-- Location: FF_X82_Y7_N50
\main_fsm|state.WAIT_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	asdata => \main_fsm|state.SEND~q\,
	sload => VCC,
	ena => \main_fsm|Equal10~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_fsm|state.WAIT_2~q\);

-- Location: MLABCELL_X82_Y7_N3
\main_fsm|state.START~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \main_fsm|state.START~0_combout\ = ( \btn_controller|output~q\ & ( ((\main_fsm|Equal10~5_combout\ & !\main_fsm|state.WAIT_INPUT~q\)) # (\main_fsm|state.START~q\) ) ) # ( !\btn_controller|output~q\ & ( ((\main_fsm|state.WAIT_INPUT~q\) # 
-- (\main_fsm|Equal10~5_combout\)) # (\main_fsm|state.START~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111101111111011111110111111101110101011101010111010101110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \main_fsm|ALT_INV_state.START~q\,
	datab => \main_fsm|ALT_INV_Equal10~5_combout\,
	datac => \main_fsm|ALT_INV_state.WAIT_INPUT~q\,
	dataf => \btn_controller|ALT_INV_output~q\,
	combout => \main_fsm|state.START~0_combout\);

-- Location: FF_X82_Y7_N41
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

-- Location: MLABCELL_X82_Y7_N42
\main_fsm|state.DISPL_CLEAR~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \main_fsm|state.DISPL_CLEAR~0_combout\ = ( !\main_fsm|state.START~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \main_fsm|ALT_INV_state.START~q\,
	combout => \main_fsm|state.DISPL_CLEAR~0_combout\);

-- Location: FF_X82_Y7_N43
\main_fsm|state.DISPL_CLEAR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \main_fsm|state.DISPL_CLEAR~0_combout\,
	ena => \main_fsm|Equal10~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_fsm|state.DISPL_CLEAR~q\);

-- Location: MLABCELL_X82_Y7_N0
\main_fsm|delay[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \main_fsm|delay[3]~0_combout\ = ( !\main_fsm|state.DISPL_CLEAR~q\ & ( !\main_fsm|state.WAIT_2~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \main_fsm|ALT_INV_state.WAIT_2~q\,
	dataf => \main_fsm|ALT_INV_state.DISPL_CLEAR~q\,
	combout => \main_fsm|delay[3]~0_combout\);

-- Location: LABCELL_X83_Y7_N51
\main_fsm|Selector37~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \main_fsm|Selector37~0_combout\ = ( \main_fsm|Equal10~5_combout\ & ( \main_fsm|delay[3]~0_combout\ & ( (\main_fsm|state.WAIT_INPUT~DUPLICATE_q\ & \btn_controller|output~q\) ) ) ) # ( !\main_fsm|Equal10~5_combout\ & ( \main_fsm|delay[3]~0_combout\ & ( 
-- (\main_fsm|state.WAIT_INPUT~DUPLICATE_q\ & \btn_controller|output~q\) ) ) ) # ( \main_fsm|Equal10~5_combout\ & ( !\main_fsm|delay[3]~0_combout\ ) ) # ( !\main_fsm|Equal10~5_combout\ & ( !\main_fsm|delay[3]~0_combout\ & ( 
-- \main_fsm|state.WAIT_INPUT~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011111111111111111100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \main_fsm|ALT_INV_state.WAIT_INPUT~DUPLICATE_q\,
	datac => \btn_controller|ALT_INV_output~q\,
	datae => \main_fsm|ALT_INV_Equal10~5_combout\,
	dataf => \main_fsm|ALT_INV_delay[3]~0_combout\,
	combout => \main_fsm|Selector37~0_combout\);

-- Location: FF_X82_Y7_N32
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

-- Location: LABCELL_X81_Y7_N39
\main_fsm|Selector39~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \main_fsm|Selector39~0_combout\ = ( \btn_controller|output~q\ & ( \main_fsm|state.WAIT_INPUT~q\ & ( (\main_fsm|state.PRSD_MSG~q\ & !\main_fsm|Equal10~5_combout\) ) ) ) # ( !\btn_controller|output~q\ & ( \main_fsm|state.WAIT_INPUT~q\ ) ) # ( 
-- \btn_controller|output~q\ & ( !\main_fsm|state.WAIT_INPUT~q\ & ( (\main_fsm|state.PRSD_MSG~q\ & !\main_fsm|Equal10~5_combout\) ) ) ) # ( !\btn_controller|output~q\ & ( !\main_fsm|state.WAIT_INPUT~q\ & ( (\main_fsm|state.PRSD_MSG~q\ & 
-- !\main_fsm|Equal10~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000011111111111111110101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \main_fsm|ALT_INV_state.PRSD_MSG~q\,
	datac => \main_fsm|ALT_INV_Equal10~5_combout\,
	datae => \btn_controller|ALT_INV_output~q\,
	dataf => \main_fsm|ALT_INV_state.WAIT_INPUT~q\,
	combout => \main_fsm|Selector39~0_combout\);

-- Location: FF_X81_Y7_N38
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

-- Location: MLABCELL_X82_Y7_N45
\main_fsm|delay[1]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \main_fsm|delay[1]~3_combout\ = ( \main_fsm|state.WAIT_INPUT~DUPLICATE_q\ & ( (\main_fsm|Equal10~5_combout\ & ((!\main_fsm|delay[3]~0_combout\) # (\btn_controller|output~q\))) ) ) # ( !\main_fsm|state.WAIT_INPUT~DUPLICATE_q\ & ( 
-- (!\main_fsm|delay[3]~0_combout\ & \main_fsm|Equal10~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000011110000101000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \main_fsm|ALT_INV_delay[3]~0_combout\,
	datac => \main_fsm|ALT_INV_Equal10~5_combout\,
	datad => \btn_controller|ALT_INV_output~q\,
	dataf => \main_fsm|ALT_INV_state.WAIT_INPUT~DUPLICATE_q\,
	combout => \main_fsm|delay[1]~3_combout\);

-- Location: MLABCELL_X82_Y7_N6
\main_fsm|delay[1]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \main_fsm|delay[1]~4_combout\ = ( \main_fsm|state.START~q\ & ( (\main_fsm|state.WAIT_INPUT~DUPLICATE_q\ & !\btn_controller|output~q\) ) ) # ( !\main_fsm|state.START~q\ & ( (!\main_fsm|state.WAIT_INPUT~DUPLICATE_q\ & (\main_fsm|Equal10~5_combout\)) # 
-- (\main_fsm|state.WAIT_INPUT~DUPLICATE_q\ & ((!\btn_controller|output~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111001001110010011100100111001001010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \main_fsm|ALT_INV_state.WAIT_INPUT~DUPLICATE_q\,
	datab => \main_fsm|ALT_INV_Equal10~5_combout\,
	datac => \btn_controller|ALT_INV_output~q\,
	dataf => \main_fsm|ALT_INV_state.START~q\,
	combout => \main_fsm|delay[1]~4_combout\);

-- Location: LABCELL_X81_Y8_N0
\main_fsm|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \main_fsm|Add0~77_sumout\ = SUM(( !\main_fsm|delay\(0) ) + ( VCC ) + ( !VCC ))
-- \main_fsm|Add0~78\ = CARRY(( !\main_fsm|delay\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \main_fsm|ALT_INV_delay\(0),
	cin => GND,
	sumout => \main_fsm|Add0~77_sumout\,
	cout => \main_fsm|Add0~78\);

-- Location: MLABCELL_X82_Y8_N36
\main_fsm|delay[0]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \main_fsm|delay[0]~5_combout\ = ( \main_fsm|delay[1]~4_combout\ & ( \main_fsm|Add0~77_sumout\ & ( ((\main_fsm|Equal10~5_combout\ & ((\main_fsm|state.PRSD_MSG~q\) # (\main_fsm|state.SEND~q\)))) # (\main_fsm|delay[1]~3_combout\) ) ) ) # ( 
-- !\main_fsm|delay[1]~4_combout\ & ( \main_fsm|Add0~77_sumout\ & ( ((\main_fsm|Equal10~5_combout\ & ((\main_fsm|state.PRSD_MSG~q\) # (\main_fsm|state.SEND~q\)))) # (\main_fsm|delay[1]~3_combout\) ) ) ) # ( \main_fsm|delay[1]~4_combout\ & ( 
-- !\main_fsm|Add0~77_sumout\ & ( ((\main_fsm|Equal10~5_combout\ & ((\main_fsm|state.PRSD_MSG~q\) # (\main_fsm|state.SEND~q\)))) # (\main_fsm|delay[1]~3_combout\) ) ) ) # ( !\main_fsm|delay[1]~4_combout\ & ( !\main_fsm|Add0~77_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000111110011111100011111001111110001111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \main_fsm|ALT_INV_state.SEND~q\,
	datab => \main_fsm|ALT_INV_Equal10~5_combout\,
	datac => \main_fsm|ALT_INV_delay[1]~3_combout\,
	datad => \main_fsm|ALT_INV_state.PRSD_MSG~q\,
	datae => \main_fsm|ALT_INV_delay[1]~4_combout\,
	dataf => \main_fsm|ALT_INV_Add0~77_sumout\,
	combout => \main_fsm|delay[0]~5_combout\);

-- Location: FF_X82_Y8_N38
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

-- Location: LABCELL_X81_Y8_N3
\main_fsm|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \main_fsm|Add0~81_sumout\ = SUM(( !\main_fsm|delay[1]~DUPLICATE_q\ ) + ( VCC ) + ( \main_fsm|Add0~78\ ))
-- \main_fsm|Add0~82\ = CARRY(( !\main_fsm|delay[1]~DUPLICATE_q\ ) + ( VCC ) + ( \main_fsm|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \main_fsm|ALT_INV_delay[1]~DUPLICATE_q\,
	cin => \main_fsm|Add0~78\,
	sumout => \main_fsm|Add0~81_sumout\,
	cout => \main_fsm|Add0~82\);

-- Location: MLABCELL_X82_Y8_N39
\main_fsm|delay[1]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \main_fsm|delay[1]~6_combout\ = ( \main_fsm|Add0~81_sumout\ & ( \main_fsm|delay[1]~4_combout\ & ( ((\main_fsm|Equal10~5_combout\ & ((\main_fsm|state.PRSD_MSG~q\) # (\main_fsm|state.SEND~q\)))) # (\main_fsm|delay[1]~3_combout\) ) ) ) # ( 
-- !\main_fsm|Add0~81_sumout\ & ( \main_fsm|delay[1]~4_combout\ & ( ((\main_fsm|Equal10~5_combout\ & ((\main_fsm|state.PRSD_MSG~q\) # (\main_fsm|state.SEND~q\)))) # (\main_fsm|delay[1]~3_combout\) ) ) ) # ( \main_fsm|Add0~81_sumout\ & ( 
-- !\main_fsm|delay[1]~4_combout\ & ( ((\main_fsm|Equal10~5_combout\ & ((\main_fsm|state.PRSD_MSG~q\) # (\main_fsm|state.SEND~q\)))) # (\main_fsm|delay[1]~3_combout\) ) ) ) # ( !\main_fsm|Add0~81_sumout\ & ( !\main_fsm|delay[1]~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000100111111111100010011111111110001001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \main_fsm|ALT_INV_state.SEND~q\,
	datab => \main_fsm|ALT_INV_Equal10~5_combout\,
	datac => \main_fsm|ALT_INV_state.PRSD_MSG~q\,
	datad => \main_fsm|ALT_INV_delay[1]~3_combout\,
	datae => \main_fsm|ALT_INV_Add0~81_sumout\,
	dataf => \main_fsm|ALT_INV_delay[1]~4_combout\,
	combout => \main_fsm|delay[1]~6_combout\);

-- Location: FF_X82_Y8_N40
\main_fsm|delay[1]~DUPLICATE\ : dffeas
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
	q => \main_fsm|delay[1]~DUPLICATE_q\);

-- Location: LABCELL_X81_Y8_N6
\main_fsm|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \main_fsm|Add0~85_sumout\ = SUM(( !\main_fsm|delay\(2) ) + ( VCC ) + ( \main_fsm|Add0~82\ ))
-- \main_fsm|Add0~86\ = CARRY(( !\main_fsm|delay\(2) ) + ( VCC ) + ( \main_fsm|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \main_fsm|ALT_INV_delay\(2),
	cin => \main_fsm|Add0~82\,
	sumout => \main_fsm|Add0~85_sumout\,
	cout => \main_fsm|Add0~86\);

-- Location: LABCELL_X83_Y8_N33
\main_fsm|Selector32~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \main_fsm|Selector32~0_combout\ = ( \main_fsm|state.START~q\ & ( (!\main_fsm|state.PRSD_MSG~q\ & ((!\main_fsm|state.WAIT_INPUT~DUPLICATE_q\) # (!\btn_controller|output~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111010000000001111101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \main_fsm|ALT_INV_state.WAIT_INPUT~DUPLICATE_q\,
	datac => \btn_controller|ALT_INV_output~q\,
	datad => \main_fsm|ALT_INV_state.PRSD_MSG~q\,
	dataf => \main_fsm|ALT_INV_state.START~q\,
	combout => \main_fsm|Selector32~0_combout\);

-- Location: MLABCELL_X82_Y8_N42
\main_fsm|Selector32~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \main_fsm|Selector32~1_combout\ = ( \main_fsm|Selector32~0_combout\ & ( (!\main_fsm|Equal10~5_combout\ & ((!\main_fsm|Add0~85_sumout\) # ((\main_fsm|delay[3]~0_combout\ & !\main_fsm|state.SEND~q\)))) # (\main_fsm|Equal10~5_combout\ & 
-- (((!\main_fsm|state.SEND~q\)))) ) ) # ( !\main_fsm|Selector32~0_combout\ & ( (!\main_fsm|Equal10~5_combout\ & ((!\main_fsm|Add0~85_sumout\))) # (\main_fsm|Equal10~5_combout\ & (!\main_fsm|state.SEND~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101001010000111110100101000011111010011100001111101001110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \main_fsm|ALT_INV_Equal10~5_combout\,
	datab => \main_fsm|ALT_INV_delay[3]~0_combout\,
	datac => \main_fsm|ALT_INV_state.SEND~q\,
	datad => \main_fsm|ALT_INV_Add0~85_sumout\,
	dataf => \main_fsm|ALT_INV_Selector32~0_combout\,
	combout => \main_fsm|Selector32~1_combout\);

-- Location: FF_X82_Y8_N44
\main_fsm|delay[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \main_fsm|Selector32~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_fsm|delay\(2));

-- Location: LABCELL_X81_Y8_N9
\main_fsm|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \main_fsm|Add0~89_sumout\ = SUM(( !\main_fsm|delay\(3) ) + ( VCC ) + ( \main_fsm|Add0~86\ ))
-- \main_fsm|Add0~90\ = CARRY(( !\main_fsm|delay\(3) ) + ( VCC ) + ( \main_fsm|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \main_fsm|ALT_INV_delay\(3),
	cin => \main_fsm|Add0~86\,
	sumout => \main_fsm|Add0~89_sumout\,
	cout => \main_fsm|Add0~90\);

-- Location: MLABCELL_X82_Y8_N45
\main_fsm|delay[3]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \main_fsm|delay[3]~7_combout\ = ( \main_fsm|Add0~89_sumout\ & ( ((\main_fsm|delay[3]~0_combout\ & (\main_fsm|state.WAIT_INPUT~q\ & !\btn_controller|output~q\))) # (\main_fsm|Equal10~5_combout\) ) ) # ( !\main_fsm|Add0~89_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111101010111010101010101011101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \main_fsm|ALT_INV_Equal10~5_combout\,
	datab => \main_fsm|ALT_INV_delay[3]~0_combout\,
	datac => \main_fsm|ALT_INV_state.WAIT_INPUT~q\,
	datad => \btn_controller|ALT_INV_output~q\,
	dataf => \main_fsm|ALT_INV_Add0~89_sumout\,
	combout => \main_fsm|delay[3]~7_combout\);

-- Location: FF_X82_Y8_N47
\main_fsm|delay[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \main_fsm|delay[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_fsm|delay\(3));

-- Location: LABCELL_X81_Y8_N12
\main_fsm|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \main_fsm|Add0~93_sumout\ = SUM(( \main_fsm|delay[4]~DUPLICATE_q\ ) + ( VCC ) + ( \main_fsm|Add0~90\ ))
-- \main_fsm|Add0~94\ = CARRY(( \main_fsm|delay[4]~DUPLICATE_q\ ) + ( VCC ) + ( \main_fsm|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \main_fsm|ALT_INV_delay[4]~DUPLICATE_q\,
	cin => \main_fsm|Add0~90\,
	sumout => \main_fsm|Add0~93_sumout\,
	cout => \main_fsm|Add0~94\);

-- Location: MLABCELL_X82_Y8_N54
\main_fsm|delay[15]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \main_fsm|delay[15]~9_combout\ = ( \main_fsm|delay[3]~0_combout\ & ( \main_fsm|Equal10~5_combout\ & ( (\main_fsm|state.WAIT_INPUT~q\ & \btn_controller|output~q\) ) ) ) # ( !\main_fsm|delay[3]~0_combout\ & ( \main_fsm|Equal10~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \main_fsm|ALT_INV_state.WAIT_INPUT~q\,
	datac => \btn_controller|ALT_INV_output~q\,
	datae => \main_fsm|ALT_INV_delay[3]~0_combout\,
	dataf => \main_fsm|ALT_INV_Equal10~5_combout\,
	combout => \main_fsm|delay[15]~9_combout\);

-- Location: MLABCELL_X82_Y8_N15
\main_fsm|delay[15]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \main_fsm|delay[15]~8_combout\ = ( \main_fsm|state.START~q\ & ( \main_fsm|Equal10~5_combout\ & ( (!\main_fsm|state.PRSD_MSG~q\ & ((!\main_fsm|state.WAIT_INPUT~q\ & ((!\main_fsm|state.SEND~q\))) # (\main_fsm|state.WAIT_INPUT~q\ & 
-- (\btn_controller|output~q\)))) ) ) ) # ( !\main_fsm|state.START~q\ & ( \main_fsm|Equal10~5_combout\ & ( (\btn_controller|output~q\ & (\main_fsm|state.WAIT_INPUT~q\ & !\main_fsm|state.PRSD_MSG~q\)) ) ) ) # ( \main_fsm|state.START~q\ & ( 
-- !\main_fsm|Equal10~5_combout\ & ( (!\main_fsm|state.WAIT_INPUT~q\) # (\btn_controller|output~q\) ) ) ) # ( !\main_fsm|state.START~q\ & ( !\main_fsm|Equal10~5_combout\ & ( (!\main_fsm|state.WAIT_INPUT~q\) # (\btn_controller|output~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110111011101110111011101110100010000000100001101000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \btn_controller|ALT_INV_output~q\,
	datab => \main_fsm|ALT_INV_state.WAIT_INPUT~q\,
	datac => \main_fsm|ALT_INV_state.PRSD_MSG~q\,
	datad => \main_fsm|ALT_INV_state.SEND~q\,
	datae => \main_fsm|ALT_INV_state.START~q\,
	dataf => \main_fsm|ALT_INV_Equal10~5_combout\,
	combout => \main_fsm|delay[15]~8_combout\);

-- Location: MLABCELL_X82_Y8_N27
\main_fsm|delay[4]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \main_fsm|delay[4]~10_combout\ = ( \main_fsm|delay[15]~8_combout\ & ( (!\main_fsm|delay[15]~9_combout\ & (((\main_fsm|state.PRSD_MSG~q\ & \main_fsm|Equal10~5_combout\)) # (\main_fsm|Add0~93_sumout\))) ) ) # ( !\main_fsm|delay[15]~8_combout\ & ( 
-- (\main_fsm|state.PRSD_MSG~q\ & (\main_fsm|Equal10~5_combout\ & !\main_fsm|delay[15]~9_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000000000100010000000000011111000000000001111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \main_fsm|ALT_INV_state.PRSD_MSG~q\,
	datab => \main_fsm|ALT_INV_Equal10~5_combout\,
	datac => \main_fsm|ALT_INV_Add0~93_sumout\,
	datad => \main_fsm|ALT_INV_delay[15]~9_combout\,
	dataf => \main_fsm|ALT_INV_delay[15]~8_combout\,
	combout => \main_fsm|delay[4]~10_combout\);

-- Location: FF_X82_Y8_N28
\main_fsm|delay[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \main_fsm|delay[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_fsm|delay[4]~DUPLICATE_q\);

-- Location: LABCELL_X81_Y8_N15
\main_fsm|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \main_fsm|Add0~69_sumout\ = SUM(( \main_fsm|delay[5]~DUPLICATE_q\ ) + ( VCC ) + ( \main_fsm|Add0~94\ ))
-- \main_fsm|Add0~70\ = CARRY(( \main_fsm|delay[5]~DUPLICATE_q\ ) + ( VCC ) + ( \main_fsm|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \main_fsm|ALT_INV_delay[5]~DUPLICATE_q\,
	cin => \main_fsm|Add0~94\,
	sumout => \main_fsm|Add0~69_sumout\,
	cout => \main_fsm|Add0~70\);

-- Location: MLABCELL_X82_Y7_N33
\main_fsm|delay[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \main_fsm|delay[3]~1_combout\ = ( \btn_controller|output~q\ & ( \main_fsm|Equal10~5_combout\ & ( (\main_fsm|delay[3]~0_combout\ & !\main_fsm|state.WAIT_INPUT~q\) ) ) ) # ( !\btn_controller|output~q\ & ( \main_fsm|Equal10~5_combout\ & ( 
-- \main_fsm|delay[3]~0_combout\ ) ) ) # ( !\btn_controller|output~q\ & ( !\main_fsm|Equal10~5_combout\ & ( (\main_fsm|delay[3]~0_combout\ & \main_fsm|state.WAIT_INPUT~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000000000000000001010101010101010101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \main_fsm|ALT_INV_delay[3]~0_combout\,
	datac => \main_fsm|ALT_INV_state.WAIT_INPUT~q\,
	datae => \btn_controller|ALT_INV_output~q\,
	dataf => \main_fsm|ALT_INV_Equal10~5_combout\,
	combout => \main_fsm|delay[3]~1_combout\);

-- Location: MLABCELL_X82_Y7_N9
\main_fsm|delay[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \main_fsm|delay[3]~2_combout\ = ( \btn_controller|output~q\ & ( (!\main_fsm|Equal10~5_combout\) # ((!\main_fsm|state.WAIT_INPUT~q\ & \main_fsm|delay[3]~0_combout\)) ) ) # ( !\btn_controller|output~q\ & ( (!\main_fsm|Equal10~5_combout\) # 
-- (\main_fsm|delay[3]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011111111110011001111111111001100111111001100110011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \main_fsm|ALT_INV_Equal10~5_combout\,
	datac => \main_fsm|ALT_INV_state.WAIT_INPUT~q\,
	datad => \main_fsm|ALT_INV_delay[3]~0_combout\,
	dataf => \btn_controller|ALT_INV_output~q\,
	combout => \main_fsm|delay[3]~2_combout\);

-- Location: FF_X81_Y8_N17
\main_fsm|delay[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \main_fsm|Add0~69_sumout\,
	sclr => \main_fsm|delay[3]~1_combout\,
	ena => \main_fsm|delay[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_fsm|delay[5]~DUPLICATE_q\);

-- Location: LABCELL_X81_Y8_N18
\main_fsm|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \main_fsm|Add0~97_sumout\ = SUM(( \main_fsm|delay\(6) ) + ( VCC ) + ( \main_fsm|Add0~70\ ))
-- \main_fsm|Add0~98\ = CARRY(( \main_fsm|delay\(6) ) + ( VCC ) + ( \main_fsm|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \main_fsm|ALT_INV_delay\(6),
	cin => \main_fsm|Add0~70\,
	sumout => \main_fsm|Add0~97_sumout\,
	cout => \main_fsm|Add0~98\);

-- Location: MLABCELL_X82_Y8_N18
\main_fsm|delay[6]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \main_fsm|delay[6]~11_combout\ = ( \main_fsm|delay[15]~8_combout\ & ( (!\main_fsm|delay[15]~9_combout\ & (((\main_fsm|state.PRSD_MSG~q\ & \main_fsm|Equal10~5_combout\)) # (\main_fsm|Add0~97_sumout\))) ) ) # ( !\main_fsm|delay[15]~8_combout\ & ( 
-- (\main_fsm|state.PRSD_MSG~q\ & (\main_fsm|Equal10~5_combout\ & !\main_fsm|delay[15]~9_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000000000100010000000000011111000000000001111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \main_fsm|ALT_INV_state.PRSD_MSG~q\,
	datab => \main_fsm|ALT_INV_Equal10~5_combout\,
	datac => \main_fsm|ALT_INV_Add0~97_sumout\,
	datad => \main_fsm|ALT_INV_delay[15]~9_combout\,
	dataf => \main_fsm|ALT_INV_delay[15]~8_combout\,
	combout => \main_fsm|delay[6]~11_combout\);

-- Location: FF_X82_Y8_N20
\main_fsm|delay[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \main_fsm|delay[6]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_fsm|delay\(6));

-- Location: FF_X82_Y8_N29
\main_fsm|delay[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \main_fsm|delay[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_fsm|delay\(4));

-- Location: FF_X82_Y8_N41
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

-- Location: MLABCELL_X82_Y8_N0
\main_fsm|Equal10~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \main_fsm|Equal10~3_combout\ = ( \main_fsm|delay\(0) & ( \main_fsm|delay\(1) & ( (!\main_fsm|delay\(6) & (\main_fsm|delay\(3) & (!\main_fsm|delay\(4) & \main_fsm|delay\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \main_fsm|ALT_INV_delay\(6),
	datab => \main_fsm|ALT_INV_delay\(3),
	datac => \main_fsm|ALT_INV_delay\(4),
	datad => \main_fsm|ALT_INV_delay\(2),
	datae => \main_fsm|ALT_INV_delay\(0),
	dataf => \main_fsm|ALT_INV_delay\(1),
	combout => \main_fsm|Equal10~3_combout\);

-- Location: LABCELL_X81_Y8_N21
\main_fsm|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \main_fsm|Add0~49_sumout\ = SUM(( \main_fsm|delay\(7) ) + ( VCC ) + ( \main_fsm|Add0~98\ ))
-- \main_fsm|Add0~50\ = CARRY(( \main_fsm|delay\(7) ) + ( VCC ) + ( \main_fsm|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \main_fsm|ALT_INV_delay\(7),
	cin => \main_fsm|Add0~98\,
	sumout => \main_fsm|Add0~49_sumout\,
	cout => \main_fsm|Add0~50\);

-- Location: FF_X81_Y8_N23
\main_fsm|delay[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \main_fsm|Add0~49_sumout\,
	sclr => \main_fsm|delay[3]~1_combout\,
	ena => \main_fsm|delay[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_fsm|delay\(7));

-- Location: LABCELL_X81_Y8_N24
\main_fsm|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \main_fsm|Add0~101_sumout\ = SUM(( !\main_fsm|delay\(8) ) + ( VCC ) + ( \main_fsm|Add0~50\ ))
-- \main_fsm|Add0~102\ = CARRY(( !\main_fsm|delay\(8) ) + ( VCC ) + ( \main_fsm|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \main_fsm|ALT_INV_delay\(8),
	cin => \main_fsm|Add0~50\,
	sumout => \main_fsm|Add0~101_sumout\,
	cout => \main_fsm|Add0~102\);

-- Location: MLABCELL_X82_Y8_N24
\main_fsm|delay[8]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \main_fsm|delay[8]~12_combout\ = ( \main_fsm|delay[15]~8_combout\ & ( ((!\main_fsm|Add0~101_sumout\ & ((!\main_fsm|state.PRSD_MSG~q\) # (!\main_fsm|Equal10~5_combout\)))) # (\main_fsm|delay[15]~9_combout\) ) ) # ( !\main_fsm|delay[15]~8_combout\ & ( 
-- (!\main_fsm|state.PRSD_MSG~q\) # ((!\main_fsm|Equal10~5_combout\) # (\main_fsm|delay[15]~9_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011111111111011101111111111100000111111111110000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \main_fsm|ALT_INV_state.PRSD_MSG~q\,
	datab => \main_fsm|ALT_INV_Equal10~5_combout\,
	datac => \main_fsm|ALT_INV_Add0~101_sumout\,
	datad => \main_fsm|ALT_INV_delay[15]~9_combout\,
	dataf => \main_fsm|ALT_INV_delay[15]~8_combout\,
	combout => \main_fsm|delay[8]~12_combout\);

-- Location: FF_X82_Y8_N26
\main_fsm|delay[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \main_fsm|delay[8]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_fsm|delay\(8));

-- Location: LABCELL_X81_Y8_N27
\main_fsm|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \main_fsm|Add0~105_sumout\ = SUM(( !\main_fsm|delay[9]~DUPLICATE_q\ ) + ( VCC ) + ( \main_fsm|Add0~102\ ))
-- \main_fsm|Add0~106\ = CARRY(( !\main_fsm|delay[9]~DUPLICATE_q\ ) + ( VCC ) + ( \main_fsm|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \main_fsm|ALT_INV_delay[9]~DUPLICATE_q\,
	cin => \main_fsm|Add0~102\,
	sumout => \main_fsm|Add0~105_sumout\,
	cout => \main_fsm|Add0~106\);

-- Location: MLABCELL_X82_Y8_N33
\main_fsm|delay[9]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \main_fsm|delay[9]~13_combout\ = ( \main_fsm|delay[15]~9_combout\ ) # ( !\main_fsm|delay[15]~9_combout\ & ( (!\main_fsm|state.PRSD_MSG~q\ & (((!\main_fsm|delay[15]~8_combout\) # (!\main_fsm|Add0~105_sumout\)))) # (\main_fsm|state.PRSD_MSG~q\ & 
-- (!\main_fsm|Equal10~5_combout\ & ((!\main_fsm|delay[15]~8_combout\) # (!\main_fsm|Add0~105_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011100000111011101110000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \main_fsm|ALT_INV_state.PRSD_MSG~q\,
	datab => \main_fsm|ALT_INV_Equal10~5_combout\,
	datac => \main_fsm|ALT_INV_delay[15]~8_combout\,
	datad => \main_fsm|ALT_INV_Add0~105_sumout\,
	dataf => \main_fsm|ALT_INV_delay[15]~9_combout\,
	combout => \main_fsm|delay[9]~13_combout\);

-- Location: FF_X82_Y8_N34
\main_fsm|delay[9]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \main_fsm|delay[9]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_fsm|delay[9]~DUPLICATE_q\);

-- Location: LABCELL_X81_Y8_N30
\main_fsm|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \main_fsm|Add0~109_sumout\ = SUM(( !\main_fsm|delay\(10) ) + ( VCC ) + ( \main_fsm|Add0~106\ ))
-- \main_fsm|Add0~110\ = CARRY(( !\main_fsm|delay\(10) ) + ( VCC ) + ( \main_fsm|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \main_fsm|ALT_INV_delay\(10),
	cin => \main_fsm|Add0~106\,
	sumout => \main_fsm|Add0~109_sumout\,
	cout => \main_fsm|Add0~110\);

-- Location: MLABCELL_X82_Y8_N48
\main_fsm|delay[10]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \main_fsm|delay[10]~14_combout\ = ( \main_fsm|Add0~109_sumout\ & ( ((!\btn_controller|output~q\ & (\main_fsm|state.WAIT_INPUT~q\ & \main_fsm|delay[3]~0_combout\))) # (\main_fsm|Equal10~5_combout\) ) ) # ( !\main_fsm|Add0~109_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100001111001011110000111100101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \btn_controller|ALT_INV_output~q\,
	datab => \main_fsm|ALT_INV_state.WAIT_INPUT~q\,
	datac => \main_fsm|ALT_INV_Equal10~5_combout\,
	datad => \main_fsm|ALT_INV_delay[3]~0_combout\,
	dataf => \main_fsm|ALT_INV_Add0~109_sumout\,
	combout => \main_fsm|delay[10]~14_combout\);

-- Location: FF_X82_Y8_N49
\main_fsm|delay[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \main_fsm|delay[10]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_fsm|delay\(10));

-- Location: LABCELL_X81_Y8_N33
\main_fsm|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \main_fsm|Add0~1_sumout\ = SUM(( \main_fsm|delay\(11) ) + ( VCC ) + ( \main_fsm|Add0~110\ ))
-- \main_fsm|Add0~2\ = CARRY(( \main_fsm|delay\(11) ) + ( VCC ) + ( \main_fsm|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \main_fsm|ALT_INV_delay\(11),
	cin => \main_fsm|Add0~110\,
	sumout => \main_fsm|Add0~1_sumout\,
	cout => \main_fsm|Add0~2\);

-- Location: FF_X81_Y8_N35
\main_fsm|delay[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \main_fsm|Add0~1_sumout\,
	sclr => \main_fsm|delay[3]~1_combout\,
	ena => \main_fsm|delay[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_fsm|delay\(11));

-- Location: LABCELL_X81_Y8_N36
\main_fsm|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \main_fsm|Add0~65_sumout\ = SUM(( \main_fsm|delay[12]~DUPLICATE_q\ ) + ( VCC ) + ( \main_fsm|Add0~2\ ))
-- \main_fsm|Add0~66\ = CARRY(( \main_fsm|delay[12]~DUPLICATE_q\ ) + ( VCC ) + ( \main_fsm|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \main_fsm|ALT_INV_delay[12]~DUPLICATE_q\,
	cin => \main_fsm|Add0~2\,
	sumout => \main_fsm|Add0~65_sumout\,
	cout => \main_fsm|Add0~66\);

-- Location: FF_X81_Y8_N37
\main_fsm|delay[12]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \main_fsm|Add0~65_sumout\,
	sclr => \main_fsm|delay[3]~1_combout\,
	ena => \main_fsm|delay[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_fsm|delay[12]~DUPLICATE_q\);

-- Location: LABCELL_X81_Y8_N39
\main_fsm|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \main_fsm|Add0~113_sumout\ = SUM(( !\main_fsm|delay\(13) ) + ( VCC ) + ( \main_fsm|Add0~66\ ))
-- \main_fsm|Add0~114\ = CARRY(( !\main_fsm|delay\(13) ) + ( VCC ) + ( \main_fsm|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \main_fsm|ALT_INV_delay\(13),
	cin => \main_fsm|Add0~66\,
	sumout => \main_fsm|Add0~113_sumout\,
	cout => \main_fsm|Add0~114\);

-- Location: MLABCELL_X82_Y8_N51
\main_fsm|delay[13]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \main_fsm|delay[13]~15_combout\ = ( \main_fsm|Add0~113_sumout\ & ( ((!\btn_controller|output~q\ & (\main_fsm|state.WAIT_INPUT~q\ & \main_fsm|delay[3]~0_combout\))) # (\main_fsm|Equal10~5_combout\) ) ) # ( !\main_fsm|Add0~113_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100001111001011110000111100101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \btn_controller|ALT_INV_output~q\,
	datab => \main_fsm|ALT_INV_state.WAIT_INPUT~q\,
	datac => \main_fsm|ALT_INV_Equal10~5_combout\,
	datad => \main_fsm|ALT_INV_delay[3]~0_combout\,
	dataf => \main_fsm|ALT_INV_Add0~113_sumout\,
	combout => \main_fsm|delay[13]~15_combout\);

-- Location: FF_X82_Y8_N53
\main_fsm|delay[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \main_fsm|delay[13]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_fsm|delay\(13));

-- Location: LABCELL_X81_Y8_N42
\main_fsm|Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \main_fsm|Add0~117_sumout\ = SUM(( \main_fsm|delay[14]~DUPLICATE_q\ ) + ( VCC ) + ( \main_fsm|Add0~114\ ))
-- \main_fsm|Add0~118\ = CARRY(( \main_fsm|delay[14]~DUPLICATE_q\ ) + ( VCC ) + ( \main_fsm|Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \main_fsm|ALT_INV_delay[14]~DUPLICATE_q\,
	cin => \main_fsm|Add0~114\,
	sumout => \main_fsm|Add0~117_sumout\,
	cout => \main_fsm|Add0~118\);

-- Location: MLABCELL_X82_Y8_N21
\main_fsm|delay[14]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \main_fsm|delay[14]~16_combout\ = ( \main_fsm|delay[15]~8_combout\ & ( (!\main_fsm|delay[15]~9_combout\ & (((\main_fsm|state.PRSD_MSG~q\ & \main_fsm|Equal10~5_combout\)) # (\main_fsm|Add0~117_sumout\))) ) ) # ( !\main_fsm|delay[15]~8_combout\ & ( 
-- (\main_fsm|state.PRSD_MSG~q\ & (\main_fsm|Equal10~5_combout\ & !\main_fsm|delay[15]~9_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000000000100010000000000011111000000000001111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \main_fsm|ALT_INV_state.PRSD_MSG~q\,
	datab => \main_fsm|ALT_INV_Equal10~5_combout\,
	datac => \main_fsm|ALT_INV_Add0~117_sumout\,
	datad => \main_fsm|ALT_INV_delay[15]~9_combout\,
	dataf => \main_fsm|ALT_INV_delay[15]~8_combout\,
	combout => \main_fsm|delay[14]~16_combout\);

-- Location: FF_X82_Y8_N22
\main_fsm|delay[14]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \main_fsm|delay[14]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_fsm|delay[14]~DUPLICATE_q\);

-- Location: LABCELL_X81_Y8_N45
\main_fsm|Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \main_fsm|Add0~121_sumout\ = SUM(( \main_fsm|delay\(15) ) + ( VCC ) + ( \main_fsm|Add0~118\ ))
-- \main_fsm|Add0~122\ = CARRY(( \main_fsm|delay\(15) ) + ( VCC ) + ( \main_fsm|Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \main_fsm|ALT_INV_delay\(15),
	cin => \main_fsm|Add0~118\,
	sumout => \main_fsm|Add0~121_sumout\,
	cout => \main_fsm|Add0~122\);

-- Location: MLABCELL_X82_Y8_N30
\main_fsm|delay[15]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \main_fsm|delay[15]~17_combout\ = ( \main_fsm|delay[15]~8_combout\ & ( (!\main_fsm|delay[15]~9_combout\ & (((\main_fsm|state.PRSD_MSG~q\ & \main_fsm|Equal10~5_combout\)) # (\main_fsm|Add0~121_sumout\))) ) ) # ( !\main_fsm|delay[15]~8_combout\ & ( 
-- (\main_fsm|state.PRSD_MSG~q\ & (\main_fsm|Equal10~5_combout\ & !\main_fsm|delay[15]~9_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000000000100010000000000011111000000000001111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \main_fsm|ALT_INV_state.PRSD_MSG~q\,
	datab => \main_fsm|ALT_INV_Equal10~5_combout\,
	datac => \main_fsm|ALT_INV_Add0~121_sumout\,
	datad => \main_fsm|ALT_INV_delay[15]~9_combout\,
	dataf => \main_fsm|ALT_INV_delay[15]~8_combout\,
	combout => \main_fsm|delay[15]~17_combout\);

-- Location: FF_X82_Y8_N32
\main_fsm|delay[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \main_fsm|delay[15]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_fsm|delay\(15));

-- Location: FF_X82_Y8_N35
\main_fsm|delay[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \main_fsm|delay[9]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_fsm|delay\(9));

-- Location: FF_X82_Y8_N23
\main_fsm|delay[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \main_fsm|delay[14]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_fsm|delay\(14));

-- Location: MLABCELL_X82_Y8_N6
\main_fsm|Equal10~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \main_fsm|Equal10~4_combout\ = ( !\main_fsm|delay\(14) & ( \main_fsm|delay\(8) & ( (\main_fsm|delay\(13) & (!\main_fsm|delay\(15) & (\main_fsm|delay\(9) & \main_fsm|delay\(10)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \main_fsm|ALT_INV_delay\(13),
	datab => \main_fsm|ALT_INV_delay\(15),
	datac => \main_fsm|ALT_INV_delay\(9),
	datad => \main_fsm|ALT_INV_delay\(10),
	datae => \main_fsm|ALT_INV_delay\(14),
	dataf => \main_fsm|ALT_INV_delay\(8),
	combout => \main_fsm|Equal10~4_combout\);

-- Location: FF_X81_Y7_N29
\main_fsm|delay[29]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \main_fsm|Add0~29_sumout\,
	sclr => \main_fsm|delay[3]~1_combout\,
	ena => \main_fsm|delay[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_fsm|delay[29]~DUPLICATE_q\);

-- Location: LABCELL_X81_Y8_N48
\main_fsm|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \main_fsm|Add0~61_sumout\ = SUM(( \main_fsm|delay\(16) ) + ( VCC ) + ( \main_fsm|Add0~122\ ))
-- \main_fsm|Add0~62\ = CARRY(( \main_fsm|delay\(16) ) + ( VCC ) + ( \main_fsm|Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \main_fsm|ALT_INV_delay\(16),
	cin => \main_fsm|Add0~122\,
	sumout => \main_fsm|Add0~61_sumout\,
	cout => \main_fsm|Add0~62\);

-- Location: FF_X81_Y8_N49
\main_fsm|delay[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \main_fsm|Add0~61_sumout\,
	sclr => \main_fsm|delay[3]~1_combout\,
	ena => \main_fsm|delay[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_fsm|delay\(16));

-- Location: LABCELL_X81_Y8_N51
\main_fsm|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \main_fsm|Add0~57_sumout\ = SUM(( \main_fsm|delay\(17) ) + ( VCC ) + ( \main_fsm|Add0~62\ ))
-- \main_fsm|Add0~58\ = CARRY(( \main_fsm|delay\(17) ) + ( VCC ) + ( \main_fsm|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \main_fsm|ALT_INV_delay\(17),
	cin => \main_fsm|Add0~62\,
	sumout => \main_fsm|Add0~57_sumout\,
	cout => \main_fsm|Add0~58\);

-- Location: FF_X81_Y8_N52
\main_fsm|delay[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \main_fsm|Add0~57_sumout\,
	sclr => \main_fsm|delay[3]~1_combout\,
	ena => \main_fsm|delay[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_fsm|delay\(17));

-- Location: LABCELL_X81_Y8_N54
\main_fsm|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \main_fsm|Add0~53_sumout\ = SUM(( \main_fsm|delay\(18) ) + ( VCC ) + ( \main_fsm|Add0~58\ ))
-- \main_fsm|Add0~54\ = CARRY(( \main_fsm|delay\(18) ) + ( VCC ) + ( \main_fsm|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \main_fsm|ALT_INV_delay\(18),
	cin => \main_fsm|Add0~58\,
	sumout => \main_fsm|Add0~53_sumout\,
	cout => \main_fsm|Add0~54\);

-- Location: FF_X81_Y8_N56
\main_fsm|delay[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \main_fsm|Add0~53_sumout\,
	sclr => \main_fsm|delay[3]~1_combout\,
	ena => \main_fsm|delay[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_fsm|delay\(18));

-- Location: LABCELL_X81_Y8_N57
\main_fsm|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \main_fsm|Add0~25_sumout\ = SUM(( \main_fsm|delay[19]~DUPLICATE_q\ ) + ( VCC ) + ( \main_fsm|Add0~54\ ))
-- \main_fsm|Add0~26\ = CARRY(( \main_fsm|delay[19]~DUPLICATE_q\ ) + ( VCC ) + ( \main_fsm|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \main_fsm|ALT_INV_delay[19]~DUPLICATE_q\,
	cin => \main_fsm|Add0~54\,
	sumout => \main_fsm|Add0~25_sumout\,
	cout => \main_fsm|Add0~26\);

-- Location: FF_X81_Y8_N58
\main_fsm|delay[19]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \main_fsm|Add0~25_sumout\,
	sclr => \main_fsm|delay[3]~1_combout\,
	ena => \main_fsm|delay[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_fsm|delay[19]~DUPLICATE_q\);

-- Location: LABCELL_X81_Y7_N0
\main_fsm|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \main_fsm|Add0~17_sumout\ = SUM(( \main_fsm|delay\(20) ) + ( VCC ) + ( \main_fsm|Add0~26\ ))
-- \main_fsm|Add0~18\ = CARRY(( \main_fsm|delay\(20) ) + ( VCC ) + ( \main_fsm|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \main_fsm|ALT_INV_delay\(20),
	cin => \main_fsm|Add0~26\,
	sumout => \main_fsm|Add0~17_sumout\,
	cout => \main_fsm|Add0~18\);

-- Location: FF_X81_Y7_N1
\main_fsm|delay[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \main_fsm|Add0~17_sumout\,
	sclr => \main_fsm|delay[3]~1_combout\,
	ena => \main_fsm|delay[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_fsm|delay\(20));

-- Location: LABCELL_X81_Y7_N3
\main_fsm|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \main_fsm|Add0~13_sumout\ = SUM(( \main_fsm|delay\(21) ) + ( VCC ) + ( \main_fsm|Add0~18\ ))
-- \main_fsm|Add0~14\ = CARRY(( \main_fsm|delay\(21) ) + ( VCC ) + ( \main_fsm|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \main_fsm|ALT_INV_delay\(21),
	cin => \main_fsm|Add0~18\,
	sumout => \main_fsm|Add0~13_sumout\,
	cout => \main_fsm|Add0~14\);

-- Location: FF_X81_Y7_N4
\main_fsm|delay[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \main_fsm|Add0~13_sumout\,
	sclr => \main_fsm|delay[3]~1_combout\,
	ena => \main_fsm|delay[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_fsm|delay\(21));

-- Location: LABCELL_X81_Y7_N6
\main_fsm|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \main_fsm|Add0~9_sumout\ = SUM(( \main_fsm|delay\(22) ) + ( VCC ) + ( \main_fsm|Add0~14\ ))
-- \main_fsm|Add0~10\ = CARRY(( \main_fsm|delay\(22) ) + ( VCC ) + ( \main_fsm|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \main_fsm|ALT_INV_delay\(22),
	cin => \main_fsm|Add0~14\,
	sumout => \main_fsm|Add0~9_sumout\,
	cout => \main_fsm|Add0~10\);

-- Location: FF_X81_Y7_N8
\main_fsm|delay[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \main_fsm|Add0~9_sumout\,
	sclr => \main_fsm|delay[3]~1_combout\,
	ena => \main_fsm|delay[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_fsm|delay\(22));

-- Location: LABCELL_X81_Y7_N9
\main_fsm|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \main_fsm|Add0~5_sumout\ = SUM(( \main_fsm|delay\(23) ) + ( VCC ) + ( \main_fsm|Add0~10\ ))
-- \main_fsm|Add0~6\ = CARRY(( \main_fsm|delay\(23) ) + ( VCC ) + ( \main_fsm|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \main_fsm|ALT_INV_delay\(23),
	cin => \main_fsm|Add0~10\,
	sumout => \main_fsm|Add0~5_sumout\,
	cout => \main_fsm|Add0~6\);

-- Location: FF_X81_Y7_N10
\main_fsm|delay[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \main_fsm|Add0~5_sumout\,
	sclr => \main_fsm|delay[3]~1_combout\,
	ena => \main_fsm|delay[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_fsm|delay\(23));

-- Location: LABCELL_X81_Y7_N12
\main_fsm|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \main_fsm|Add0~73_sumout\ = SUM(( \main_fsm|delay[24]~DUPLICATE_q\ ) + ( VCC ) + ( \main_fsm|Add0~6\ ))
-- \main_fsm|Add0~74\ = CARRY(( \main_fsm|delay[24]~DUPLICATE_q\ ) + ( VCC ) + ( \main_fsm|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \main_fsm|ALT_INV_delay[24]~DUPLICATE_q\,
	cin => \main_fsm|Add0~6\,
	sumout => \main_fsm|Add0~73_sumout\,
	cout => \main_fsm|Add0~74\);

-- Location: FF_X81_Y7_N14
\main_fsm|delay[24]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \main_fsm|Add0~73_sumout\,
	sclr => \main_fsm|delay[3]~1_combout\,
	ena => \main_fsm|delay[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_fsm|delay[24]~DUPLICATE_q\);

-- Location: LABCELL_X81_Y7_N15
\main_fsm|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \main_fsm|Add0~45_sumout\ = SUM(( \main_fsm|delay\(25) ) + ( VCC ) + ( \main_fsm|Add0~74\ ))
-- \main_fsm|Add0~46\ = CARRY(( \main_fsm|delay\(25) ) + ( VCC ) + ( \main_fsm|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \main_fsm|ALT_INV_delay\(25),
	cin => \main_fsm|Add0~74\,
	sumout => \main_fsm|Add0~45_sumout\,
	cout => \main_fsm|Add0~46\);

-- Location: FF_X81_Y7_N16
\main_fsm|delay[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \main_fsm|Add0~45_sumout\,
	sclr => \main_fsm|delay[3]~1_combout\,
	ena => \main_fsm|delay[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_fsm|delay\(25));

-- Location: LABCELL_X81_Y7_N18
\main_fsm|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \main_fsm|Add0~41_sumout\ = SUM(( \main_fsm|delay\(26) ) + ( VCC ) + ( \main_fsm|Add0~46\ ))
-- \main_fsm|Add0~42\ = CARRY(( \main_fsm|delay\(26) ) + ( VCC ) + ( \main_fsm|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \main_fsm|ALT_INV_delay\(26),
	cin => \main_fsm|Add0~46\,
	sumout => \main_fsm|Add0~41_sumout\,
	cout => \main_fsm|Add0~42\);

-- Location: FF_X81_Y7_N19
\main_fsm|delay[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \main_fsm|Add0~41_sumout\,
	sclr => \main_fsm|delay[3]~1_combout\,
	ena => \main_fsm|delay[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_fsm|delay\(26));

-- Location: LABCELL_X81_Y7_N21
\main_fsm|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \main_fsm|Add0~37_sumout\ = SUM(( \main_fsm|delay\(27) ) + ( VCC ) + ( \main_fsm|Add0~42\ ))
-- \main_fsm|Add0~38\ = CARRY(( \main_fsm|delay\(27) ) + ( VCC ) + ( \main_fsm|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \main_fsm|ALT_INV_delay\(27),
	cin => \main_fsm|Add0~42\,
	sumout => \main_fsm|Add0~37_sumout\,
	cout => \main_fsm|Add0~38\);

-- Location: FF_X81_Y7_N22
\main_fsm|delay[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \main_fsm|Add0~37_sumout\,
	sclr => \main_fsm|delay[3]~1_combout\,
	ena => \main_fsm|delay[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_fsm|delay\(27));

-- Location: LABCELL_X81_Y7_N24
\main_fsm|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \main_fsm|Add0~33_sumout\ = SUM(( \main_fsm|delay\(28) ) + ( VCC ) + ( \main_fsm|Add0~38\ ))
-- \main_fsm|Add0~34\ = CARRY(( \main_fsm|delay\(28) ) + ( VCC ) + ( \main_fsm|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \main_fsm|ALT_INV_delay\(28),
	cin => \main_fsm|Add0~38\,
	sumout => \main_fsm|Add0~33_sumout\,
	cout => \main_fsm|Add0~34\);

-- Location: FF_X81_Y7_N25
\main_fsm|delay[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \main_fsm|Add0~33_sumout\,
	sclr => \main_fsm|delay[3]~1_combout\,
	ena => \main_fsm|delay[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_fsm|delay\(28));

-- Location: LABCELL_X81_Y7_N27
\main_fsm|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \main_fsm|Add0~29_sumout\ = SUM(( \main_fsm|delay[29]~DUPLICATE_q\ ) + ( VCC ) + ( \main_fsm|Add0~34\ ))
-- \main_fsm|Add0~30\ = CARRY(( \main_fsm|delay[29]~DUPLICATE_q\ ) + ( VCC ) + ( \main_fsm|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \main_fsm|ALT_INV_delay[29]~DUPLICATE_q\,
	cin => \main_fsm|Add0~34\,
	sumout => \main_fsm|Add0~29_sumout\,
	cout => \main_fsm|Add0~30\);

-- Location: FF_X81_Y7_N28
\main_fsm|delay[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \main_fsm|Add0~29_sumout\,
	sclr => \main_fsm|delay[3]~1_combout\,
	ena => \main_fsm|delay[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_fsm|delay\(29));

-- Location: FF_X81_Y8_N22
\main_fsm|delay[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \main_fsm|Add0~49_sumout\,
	sclr => \main_fsm|delay[3]~1_combout\,
	ena => \main_fsm|delay[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_fsm|delay[7]~DUPLICATE_q\);

-- Location: MLABCELL_X82_Y7_N24
\main_fsm|Equal10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \main_fsm|Equal10~1_combout\ = ( !\main_fsm|delay[7]~DUPLICATE_q\ & ( !\main_fsm|delay\(28) & ( (!\main_fsm|delay\(29) & (!\main_fsm|delay\(26) & (!\main_fsm|delay\(27) & !\main_fsm|delay\(25)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \main_fsm|ALT_INV_delay\(29),
	datab => \main_fsm|ALT_INV_delay\(26),
	datac => \main_fsm|ALT_INV_delay\(27),
	datad => \main_fsm|ALT_INV_delay\(25),
	datae => \main_fsm|ALT_INV_delay[7]~DUPLICATE_q\,
	dataf => \main_fsm|ALT_INV_delay\(28),
	combout => \main_fsm|Equal10~1_combout\);

-- Location: FF_X81_Y8_N16
\main_fsm|delay[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \main_fsm|Add0~69_sumout\,
	sclr => \main_fsm|delay[3]~1_combout\,
	ena => \main_fsm|delay[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_fsm|delay\(5));

-- Location: FF_X81_Y7_N13
\main_fsm|delay[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \main_fsm|Add0~73_sumout\,
	sclr => \main_fsm|delay[3]~1_combout\,
	ena => \main_fsm|delay[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_fsm|delay\(24));

-- Location: FF_X81_Y8_N38
\main_fsm|delay[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \main_fsm|Add0~65_sumout\,
	sclr => \main_fsm|delay[3]~1_combout\,
	ena => \main_fsm|delay[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_fsm|delay\(12));

-- Location: MLABCELL_X82_Y7_N54
\main_fsm|Equal10~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \main_fsm|Equal10~2_combout\ = ( !\main_fsm|delay\(18) & ( !\main_fsm|delay\(17) & ( (!\main_fsm|delay\(16) & (!\main_fsm|delay\(5) & (!\main_fsm|delay\(24) & !\main_fsm|delay\(12)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \main_fsm|ALT_INV_delay\(16),
	datab => \main_fsm|ALT_INV_delay\(5),
	datac => \main_fsm|ALT_INV_delay\(24),
	datad => \main_fsm|ALT_INV_delay\(12),
	datae => \main_fsm|ALT_INV_delay\(18),
	dataf => \main_fsm|ALT_INV_delay\(17),
	combout => \main_fsm|Equal10~2_combout\);

-- Location: FF_X81_Y7_N7
\main_fsm|delay[22]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \main_fsm|Add0~9_sumout\,
	sclr => \main_fsm|delay[3]~1_combout\,
	ena => \main_fsm|delay[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_fsm|delay[22]~DUPLICATE_q\);

-- Location: LABCELL_X81_Y7_N30
\main_fsm|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \main_fsm|Add0~21_sumout\ = SUM(( \main_fsm|delay\(30) ) + ( VCC ) + ( \main_fsm|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \main_fsm|ALT_INV_delay\(30),
	cin => \main_fsm|Add0~30\,
	sumout => \main_fsm|Add0~21_sumout\);

-- Location: FF_X81_Y7_N31
\main_fsm|delay[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \main_fsm|Add0~21_sumout\,
	sclr => \main_fsm|delay[3]~1_combout\,
	ena => \main_fsm|delay[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_fsm|delay\(30));

-- Location: FF_X81_Y8_N59
\main_fsm|delay[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \main_fsm|Add0~25_sumout\,
	sclr => \main_fsm|delay[3]~1_combout\,
	ena => \main_fsm|delay[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_fsm|delay\(19));

-- Location: MLABCELL_X82_Y7_N18
\main_fsm|Equal10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \main_fsm|Equal10~0_combout\ = ( !\main_fsm|delay\(19) & ( !\main_fsm|delay\(23) & ( (!\main_fsm|delay[22]~DUPLICATE_q\ & (!\main_fsm|delay\(21) & (!\main_fsm|delay\(30) & !\main_fsm|delay\(20)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \main_fsm|ALT_INV_delay[22]~DUPLICATE_q\,
	datab => \main_fsm|ALT_INV_delay\(21),
	datac => \main_fsm|ALT_INV_delay\(30),
	datad => \main_fsm|ALT_INV_delay\(20),
	datae => \main_fsm|ALT_INV_delay\(19),
	dataf => \main_fsm|ALT_INV_delay\(23),
	combout => \main_fsm|Equal10~0_combout\);

-- Location: MLABCELL_X82_Y7_N12
\main_fsm|Equal10~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \main_fsm|Equal10~5_combout\ = ( \main_fsm|Equal10~2_combout\ & ( \main_fsm|Equal10~0_combout\ & ( (\main_fsm|Equal10~3_combout\ & (!\main_fsm|delay\(11) & (\main_fsm|Equal10~4_combout\ & \main_fsm|Equal10~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \main_fsm|ALT_INV_Equal10~3_combout\,
	datab => \main_fsm|ALT_INV_delay\(11),
	datac => \main_fsm|ALT_INV_Equal10~4_combout\,
	datad => \main_fsm|ALT_INV_Equal10~1_combout\,
	datae => \main_fsm|ALT_INV_Equal10~2_combout\,
	dataf => \main_fsm|ALT_INV_Equal10~0_combout\,
	combout => \main_fsm|Equal10~5_combout\);

-- Location: MLABCELL_X82_Y7_N39
\main_fsm|Selector53~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \main_fsm|Selector53~0_combout\ = ( \main_fsm|state.WAIT_2~q\ & ( !\main_fsm|Equal10~5_combout\ ) ) # ( !\main_fsm|state.WAIT_2~q\ & ( (\main_fsm|spi_rqst~q\ & !\main_fsm|state.WAIT_INPUT~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \main_fsm|ALT_INV_spi_rqst~q\,
	datab => \main_fsm|ALT_INV_Equal10~5_combout\,
	datac => \main_fsm|ALT_INV_state.WAIT_INPUT~q\,
	dataf => \main_fsm|ALT_INV_state.WAIT_2~q\,
	combout => \main_fsm|Selector53~0_combout\);

-- Location: FF_X82_Y7_N23
\main_fsm|spi_rqst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	asdata => \main_fsm|Selector53~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_fsm|spi_rqst~q\);

-- Location: LABCELL_X83_Y7_N30
\spi0|flag~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|flag~0_combout\ = ( \spi0|flag~q\ & ( \main_fsm|spi_rqst~q\ & ( \spi0|state~q\ ) ) ) # ( !\spi0|flag~q\ & ( \main_fsm|spi_rqst~q\ ) ) # ( \spi0|flag~q\ & ( !\main_fsm|spi_rqst~q\ & ( \spi0|state~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111111111111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|ALT_INV_state~q\,
	datae => \spi0|ALT_INV_flag~q\,
	dataf => \main_fsm|ALT_INV_spi_rqst~q\,
	combout => \spi0|flag~0_combout\);

-- Location: FF_X83_Y7_N32
\spi0|flag\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|flag~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|flag~q\);

-- Location: MLABCELL_X82_Y6_N21
\main_fsm|last_btn_pressed[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \main_fsm|last_btn_pressed[10]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \main_fsm|last_btn_pressed[10]~feeder_combout\);

-- Location: FF_X82_Y6_N22
\main_fsm|last_btn_pressed[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \main_fsm|last_btn_pressed[10]~feeder_combout\,
	ena => \main_fsm|state.PRSD_MSG~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_fsm|last_btn_pressed\(10));

-- Location: LABCELL_X80_Y6_N15
\main_fsm|spi_msg[10]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \main_fsm|spi_msg[10]~0_combout\ = !\main_fsm|last_btn_pressed\(10)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \main_fsm|ALT_INV_last_btn_pressed\(10),
	combout => \main_fsm|spi_msg[10]~0_combout\);

-- Location: FF_X80_Y6_N17
\main_fsm|spi_msg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \main_fsm|spi_msg[10]~0_combout\,
	ena => \main_fsm|state.SEND~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_fsm|spi_msg\(10));

-- Location: MLABCELL_X84_Y8_N42
\spi0|current_msg~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|current_msg~0_combout\ = ( \spi0|flag~q\ & ( \main_fsm|spi_msg\(10) ) ) # ( !\spi0|flag~q\ & ( \main_fsm|spi_msg\(10) ) ) # ( !\spi0|flag~q\ & ( !\main_fsm|spi_msg\(10) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \spi0|ALT_INV_flag~q\,
	dataf => \main_fsm|ALT_INV_spi_msg\(10),
	combout => \spi0|current_msg~0_combout\);

-- Location: FF_X84_Y8_N44
\spi0|current_msg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|current_msg~0_combout\,
	ena => \spi0|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|current_msg\(12));

-- Location: FF_X83_Y8_N38
\spi0|data_in[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \spi0|current_msg\(12),
	sload => VCC,
	ena => \spi0|ALT_INV_state~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|data_in\(12));

-- Location: MLABCELL_X84_Y6_N6
\spi0|spi|spi_value[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|spi|spi_value[15]~feeder_combout\ = ( \spi0|data_in\(12) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \spi0|ALT_INV_data_in\(12),
	combout => \spi0|spi|spi_value[15]~feeder_combout\);

-- Location: MLABCELL_X84_Y6_N0
\spi0|spi|spi_value[14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|spi|spi_value[14]~feeder_combout\ = \spi0|data_in\(12)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|ALT_INV_data_in\(12),
	combout => \spi0|spi|spi_value[14]~feeder_combout\);

-- Location: MLABCELL_X84_Y6_N3
\spi0|spi|spi_value[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|spi|spi_value[13]~feeder_combout\ = ( \spi0|data_in\(12) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \spi0|ALT_INV_data_in\(12),
	combout => \spi0|spi|spi_value[13]~feeder_combout\);

-- Location: MLABCELL_X84_Y6_N18
\spi0|spi|spi_value[12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|spi|spi_value[12]~feeder_combout\ = ( \spi0|data_in\(12) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \spi0|ALT_INV_data_in\(12),
	combout => \spi0|spi|spi_value[12]~feeder_combout\);

-- Location: LABCELL_X83_Y8_N12
\spi0|current_msg~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|current_msg~1_combout\ = ( \main_fsm|spi_msg\(10) & ( \spi0|flag~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|ALT_INV_flag~q\,
	dataf => \main_fsm|ALT_INV_spi_msg\(10),
	combout => \spi0|current_msg~1_combout\);

-- Location: FF_X83_Y8_N14
\spi0|current_msg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|current_msg~1_combout\,
	ena => \spi0|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|current_msg\(10));

-- Location: LABCELL_X83_Y8_N21
\spi0|data_in[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|data_in[10]~feeder_combout\ = \spi0|current_msg\(10)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi0|ALT_INV_current_msg\(10),
	combout => \spi0|data_in[10]~feeder_combout\);

-- Location: FF_X83_Y8_N23
\spi0|data_in[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|data_in[10]~feeder_combout\,
	ena => \spi0|ALT_INV_state~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|data_in\(10));

-- Location: MLABCELL_X84_Y6_N54
\spi0|spi|spi_value[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|spi|spi_value[11]~feeder_combout\ = \spi0|data_in\(10)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi0|ALT_INV_data_in\(10),
	combout => \spi0|spi|spi_value[11]~feeder_combout\);

-- Location: MLABCELL_X84_Y6_N57
\spi0|spi|spi_value[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|spi|spi_value[10]~feeder_combout\ = \spi0|data_in\(10)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi0|ALT_INV_data_in\(10),
	combout => \spi0|spi|spi_value[10]~feeder_combout\);

-- Location: MLABCELL_X84_Y6_N21
\spi0|spi|spi_value[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|spi|spi_value[9]~feeder_combout\ = ( \spi0|data_in\(12) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \spi0|ALT_INV_data_in\(12),
	combout => \spi0|spi|spi_value[9]~feeder_combout\);

-- Location: MLABCELL_X84_Y6_N42
\spi0|spi|spi_value[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|spi|spi_value[8]~feeder_combout\ = ( \spi0|data_in\(10) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \spi0|ALT_INV_data_in\(10),
	combout => \spi0|spi|spi_value[8]~feeder_combout\);

-- Location: MLABCELL_X84_Y6_N36
\spi0|spi|spi_value[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|spi|spi_value[7]~feeder_combout\ = \spi0|data_in\(10)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi0|ALT_INV_data_in\(10),
	combout => \spi0|spi|spi_value[7]~feeder_combout\);

-- Location: MLABCELL_X84_Y6_N45
\spi0|spi|spi_value[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|spi|spi_value[6]~feeder_combout\ = ( \spi0|data_in\(10) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \spi0|ALT_INV_data_in\(10),
	combout => \spi0|spi|spi_value[6]~feeder_combout\);

-- Location: MLABCELL_X84_Y6_N48
\spi0|spi|spi_value[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|spi|spi_value[5]~feeder_combout\ = ( \spi0|data_in\(12) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \spi0|ALT_INV_data_in\(12),
	combout => \spi0|spi|spi_value[5]~feeder_combout\);

-- Location: MLABCELL_X84_Y6_N15
\spi0|spi|spi_value[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|spi|spi_value[4]~feeder_combout\ = ( \spi0|data_in\(10) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \spi0|ALT_INV_data_in\(10),
	combout => \spi0|spi|spi_value[4]~feeder_combout\);

-- Location: MLABCELL_X84_Y6_N51
\spi0|spi|spi_value[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|spi|spi_value[3]~feeder_combout\ = \spi0|data_in\(12)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|ALT_INV_data_in\(12),
	combout => \spi0|spi|spi_value[3]~feeder_combout\);

-- Location: MLABCELL_X84_Y6_N12
\spi0|spi|spi_value[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|spi|spi_value[2]~feeder_combout\ = ( \spi0|data_in\(12) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \spi0|ALT_INV_data_in\(12),
	combout => \spi0|spi|spi_value[2]~feeder_combout\);

-- Location: LABCELL_X77_Y6_N45
\btn_controller|btn_num~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|btn_num~2_combout\ = ( \PCB_BT0~input_o\ & ( \PCB_BT1~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_PCB_BT1~input_o\,
	dataf => \ALT_INV_PCB_BT0~input_o\,
	combout => \btn_controller|btn_num~2_combout\);

-- Location: LABCELL_X77_Y6_N48
\btn_controller|btn_num[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|btn_num[0]~1_combout\ = ( !\btn_controller|state~q\ & ( \btn_controller|and_buttons~q\ & ( (!\PCB_BT2~input_o\) # ((!\PCB_BT0~input_o\) # ((!\PCB_BT3~input_o\) # (!\PCB_BT1~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_PCB_BT2~input_o\,
	datab => \ALT_INV_PCB_BT0~input_o\,
	datac => \ALT_INV_PCB_BT3~input_o\,
	datad => \ALT_INV_PCB_BT1~input_o\,
	datae => \btn_controller|ALT_INV_state~q\,
	dataf => \btn_controller|ALT_INV_and_buttons~q\,
	combout => \btn_controller|btn_num[0]~1_combout\);

-- Location: FF_X80_Y6_N11
\btn_controller|btn_num[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	asdata => \btn_controller|btn_num~2_combout\,
	sload => VCC,
	ena => \btn_controller|btn_num[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_controller|btn_num\(1));

-- Location: MLABCELL_X82_Y6_N54
\main_fsm|last_btn_pressed[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \main_fsm|last_btn_pressed[1]~0_combout\ = !\btn_controller|btn_num\(1)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \btn_controller|ALT_INV_btn_num\(1),
	combout => \main_fsm|last_btn_pressed[1]~0_combout\);

-- Location: FF_X82_Y6_N55
\main_fsm|last_btn_pressed[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \main_fsm|last_btn_pressed[1]~0_combout\,
	ena => \main_fsm|state.PRSD_MSG~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_fsm|last_btn_pressed\(1));

-- Location: MLABCELL_X82_Y6_N42
\main_fsm|spi_msg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \main_fsm|spi_msg[1]~1_combout\ = ( !\main_fsm|last_btn_pressed\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \main_fsm|ALT_INV_last_btn_pressed\(1),
	combout => \main_fsm|spi_msg[1]~1_combout\);

-- Location: FF_X82_Y6_N44
\main_fsm|spi_msg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \main_fsm|spi_msg[1]~1_combout\,
	ena => \main_fsm|state.SEND~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_fsm|spi_msg\(1));

-- Location: LABCELL_X83_Y7_N0
\spi0|current_msg~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|current_msg~2_combout\ = ( \main_fsm|spi_msg\(1) ) # ( !\main_fsm|spi_msg\(1) & ( !\spi0|flag~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|ALT_INV_flag~q\,
	dataf => \main_fsm|ALT_INV_spi_msg\(1),
	combout => \spi0|current_msg~2_combout\);

-- Location: FF_X83_Y7_N1
\spi0|current_msg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|current_msg~2_combout\,
	ena => \spi0|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|current_msg\(1));

-- Location: LABCELL_X83_Y8_N45
\spi0|data_in[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|data_in[1]~feeder_combout\ = ( \spi0|current_msg\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \spi0|ALT_INV_current_msg\(1),
	combout => \spi0|data_in[1]~feeder_combout\);

-- Location: FF_X83_Y8_N46
\spi0|data_in[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|data_in[1]~feeder_combout\,
	ena => \spi0|ALT_INV_state~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|data_in\(1));

-- Location: MLABCELL_X84_Y6_N39
\spi0|spi|spi_value[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|spi|spi_value[1]~feeder_combout\ = ( \spi0|data_in\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \spi0|ALT_INV_data_in\(1),
	combout => \spi0|spi|spi_value[1]~feeder_combout\);

-- Location: FF_X83_Y6_N5
\spi0|spi|sck_synchronizer[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|spi|sck_synchronizer[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|sck_synchronizer\(4));

-- Location: FF_X83_Y6_N25
\spi0|spi|sck_synchronizer[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \spi0|spi|sck_synchronizer[4]~DUPLICATE_q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|sck_synchronizer\(5));

-- Location: LABCELL_X83_Y6_N33
\spi0|spi|process_0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|spi|process_0~1_combout\ = ( \spi0|spi|flag~q\ & ( !\spi0|spi|sck_synchronizer\(5) & ( (\spi0|spi|sck_synchronizer\(1) & (\spi0|spi|sck_synchronizer\(0) & (!\spi0|spi|flag2~q\ & !\spi0|spi|sck_synchronizer\(4)))) ) ) ) # ( !\spi0|spi|flag~q\ & ( 
-- !\spi0|spi|sck_synchronizer\(5) & ( (\spi0|spi|sck_synchronizer\(1) & (\spi0|spi|sck_synchronizer\(0) & !\spi0|spi|sck_synchronizer\(4))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000000000100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi|ALT_INV_sck_synchronizer\(1),
	datab => \spi0|spi|ALT_INV_sck_synchronizer\(0),
	datac => \spi0|spi|ALT_INV_flag2~q\,
	datad => \spi0|spi|ALT_INV_sck_synchronizer\(4),
	datae => \spi0|spi|ALT_INV_flag~q\,
	dataf => \spi0|spi|ALT_INV_sck_synchronizer\(5),
	combout => \spi0|spi|process_0~1_combout\);

-- Location: MLABCELL_X82_Y6_N36
\spi0|spi|spi_value~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|spi|spi_value~1_combout\ = ( !\spi0|spi|process_0~1_combout\ & ( \spi0|spi|spi_value\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \spi0|spi|ALT_INV_spi_value\(0),
	dataf => \spi0|spi|ALT_INV_process_0~1_combout\,
	combout => \spi0|spi|spi_value~1_combout\);

-- Location: LABCELL_X77_Y6_N18
\btn_controller|btn_num~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|btn_num~0_combout\ = ( \PCB_BT2~input_o\ & ( \PCB_BT0~input_o\ ) ) # ( !\PCB_BT2~input_o\ & ( (\PCB_BT0~input_o\ & !\PCB_BT1~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_PCB_BT0~input_o\,
	datac => \ALT_INV_PCB_BT1~input_o\,
	dataf => \ALT_INV_PCB_BT2~input_o\,
	combout => \btn_controller|btn_num~0_combout\);

-- Location: FF_X80_Y6_N38
\btn_controller|btn_num[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	asdata => \btn_controller|btn_num~0_combout\,
	sload => VCC,
	ena => \btn_controller|btn_num[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_controller|btn_num\(0));

-- Location: MLABCELL_X82_Y6_N18
\main_fsm|last_btn_pressed[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \main_fsm|last_btn_pressed[0]~1_combout\ = !\btn_controller|btn_num\(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \btn_controller|ALT_INV_btn_num\(0),
	combout => \main_fsm|last_btn_pressed[0]~1_combout\);

-- Location: FF_X82_Y6_N19
\main_fsm|last_btn_pressed[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \main_fsm|last_btn_pressed[0]~1_combout\,
	ena => \main_fsm|state.PRSD_MSG~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_fsm|last_btn_pressed\(0));

-- Location: LABCELL_X80_Y6_N57
\main_fsm|spi_msg[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \main_fsm|spi_msg[0]~2_combout\ = !\main_fsm|last_btn_pressed\(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \main_fsm|ALT_INV_last_btn_pressed\(0),
	combout => \main_fsm|spi_msg[0]~2_combout\);

-- Location: FF_X80_Y6_N59
\main_fsm|spi_msg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \main_fsm|spi_msg[0]~2_combout\,
	ena => \main_fsm|state.SEND~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_fsm|spi_msg\(0));

-- Location: LABCELL_X83_Y8_N6
\spi0|current_msg~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|current_msg~3_combout\ = ( \main_fsm|spi_msg\(0) ) # ( !\main_fsm|spi_msg\(0) & ( !\spi0|flag~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|ALT_INV_flag~q\,
	dataf => \main_fsm|ALT_INV_spi_msg\(0),
	combout => \spi0|current_msg~3_combout\);

-- Location: FF_X83_Y8_N8
\spi0|current_msg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|current_msg~3_combout\,
	ena => \spi0|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|current_msg\(0));

-- Location: LABCELL_X83_Y8_N0
\spi0|data_in[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|data_in[0]~feeder_combout\ = \spi0|current_msg\(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi0|ALT_INV_current_msg\(0),
	combout => \spi0|data_in[0]~feeder_combout\);

-- Location: FF_X83_Y8_N2
\spi0|data_in[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|data_in[0]~feeder_combout\,
	ena => \spi0|ALT_INV_state~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|data_in\(0));

-- Location: MLABCELL_X82_Y5_N0
\spi0|spi|wrcnt[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|spi|wrcnt[0]~3_combout\ = !\spi0|spi|wrcnt\(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \spi0|spi|ALT_INV_wrcnt\(0),
	combout => \spi0|spi|wrcnt[0]~3_combout\);

-- Location: FF_X82_Y5_N1
\spi0|spi|wrcnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|spi|wrcnt[0]~3_combout\,
	ena => \spi0|spi|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|wrcnt\(0));

-- Location: FF_X83_Y6_N28
\spi0|spi|wrcnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|spi|wrcnt[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|wrcnt\(1));

-- Location: LABCELL_X83_Y6_N27
\spi0|spi|wrcnt[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|spi|wrcnt[1]~2_combout\ = ( \spi0|spi|wrcnt\(1) & ( \spi0|spi|process_0~1_combout\ & ( !\spi0|spi|wrcnt\(0) ) ) ) # ( !\spi0|spi|wrcnt\(1) & ( \spi0|spi|process_0~1_combout\ & ( \spi0|spi|wrcnt\(0) ) ) ) # ( \spi0|spi|wrcnt\(1) & ( 
-- !\spi0|spi|process_0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111101010101010101011010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi|ALT_INV_wrcnt\(0),
	datae => \spi0|spi|ALT_INV_wrcnt\(1),
	dataf => \spi0|spi|ALT_INV_process_0~1_combout\,
	combout => \spi0|spi|wrcnt[1]~2_combout\);

-- Location: FF_X83_Y6_N29
\spi0|spi|wrcnt[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|spi|wrcnt[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|wrcnt[1]~DUPLICATE_q\);

-- Location: LABCELL_X83_Y6_N6
\spi0|spi|wrcnt[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|spi|wrcnt[2]~1_combout\ = ( \spi0|spi|wrcnt\(2) & ( \spi0|spi|process_0~1_combout\ & ( (!\spi0|spi|wrcnt[1]~DUPLICATE_q\) # (!\spi0|spi|wrcnt\(0)) ) ) ) # ( !\spi0|spi|wrcnt\(2) & ( \spi0|spi|process_0~1_combout\ & ( (\spi0|spi|wrcnt[1]~DUPLICATE_q\ 
-- & \spi0|spi|wrcnt\(0)) ) ) ) # ( \spi0|spi|wrcnt\(2) & ( !\spi0|spi|process_0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000101000001011111101011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi|ALT_INV_wrcnt[1]~DUPLICATE_q\,
	datac => \spi0|spi|ALT_INV_wrcnt\(0),
	datae => \spi0|spi|ALT_INV_wrcnt\(2),
	dataf => \spi0|spi|ALT_INV_process_0~1_combout\,
	combout => \spi0|spi|wrcnt[2]~1_combout\);

-- Location: FF_X83_Y6_N8
\spi0|spi|wrcnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|spi|wrcnt[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|wrcnt\(2));

-- Location: LABCELL_X83_Y6_N36
\spi0|spi|wrcnt[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|spi|wrcnt[3]~0_combout\ = ( \spi0|spi|wrcnt\(3) & ( \spi0|spi|process_0~1_combout\ & ( (!\spi0|spi|wrcnt[1]~DUPLICATE_q\) # ((!\spi0|spi|wrcnt\(2)) # (!\spi0|spi|wrcnt\(0))) ) ) ) # ( !\spi0|spi|wrcnt\(3) & ( \spi0|spi|process_0~1_combout\ & ( 
-- (\spi0|spi|wrcnt[1]~DUPLICATE_q\ & (\spi0|spi|wrcnt\(2) & \spi0|spi|wrcnt\(0))) ) ) ) # ( \spi0|spi|wrcnt\(3) & ( !\spi0|spi|process_0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000001000000011111111011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi|ALT_INV_wrcnt[1]~DUPLICATE_q\,
	datab => \spi0|spi|ALT_INV_wrcnt\(2),
	datac => \spi0|spi|ALT_INV_wrcnt\(0),
	datae => \spi0|spi|ALT_INV_wrcnt\(3),
	dataf => \spi0|spi|ALT_INV_process_0~1_combout\,
	combout => \spi0|spi|wrcnt[3]~0_combout\);

-- Location: FF_X83_Y6_N38
\spi0|spi|wrcnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|spi|wrcnt[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|wrcnt\(3));

-- Location: LABCELL_X83_Y6_N54
\spi0|spi|feed_me~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|spi|feed_me~0_combout\ = ( \spi0|spi|feed_me~q\ & ( \spi0|spi|process_0~1_combout\ ) ) # ( !\spi0|spi|feed_me~q\ & ( \spi0|spi|process_0~1_combout\ & ( (\spi0|spi|wrcnt\(3) & (\spi0|spi|wrcnt\(2) & (\spi0|spi|wrcnt\(0) & \spi0|spi|wrcnt\(1)))) ) ) ) 
-- # ( \spi0|spi|feed_me~q\ & ( !\spi0|spi|process_0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi|ALT_INV_wrcnt\(3),
	datab => \spi0|spi|ALT_INV_wrcnt\(2),
	datac => \spi0|spi|ALT_INV_wrcnt\(0),
	datad => \spi0|spi|ALT_INV_wrcnt\(1),
	datae => \spi0|spi|ALT_INV_feed_me~q\,
	dataf => \spi0|spi|ALT_INV_process_0~1_combout\,
	combout => \spi0|spi|feed_me~0_combout\);

-- Location: FF_X83_Y6_N56
\spi0|spi|feed_me\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|spi|feed_me~0_combout\,
	sclr => \spi0|spi|feed_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|feed_me~q\);

-- Location: FF_X82_Y6_N37
\spi0|spi|spi_value[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|spi|spi_value~1_combout\,
	asdata => \spi0|data_in\(0),
	sload => \spi0|spi|feed_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|spi_value\(0));

-- Location: MLABCELL_X84_Y6_N9
\spi0|spi|spi_value[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|spi|spi_value[1]~0_combout\ = ( \spi0|spi|process_0~1_combout\ ) # ( !\spi0|spi|process_0~1_combout\ & ( \spi0|spi|feed_me~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|spi|ALT_INV_feed_me~q\,
	dataf => \spi0|spi|ALT_INV_process_0~1_combout\,
	combout => \spi0|spi|spi_value[1]~0_combout\);

-- Location: FF_X84_Y6_N40
\spi0|spi|spi_value[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|spi|spi_value[1]~feeder_combout\,
	asdata => \spi0|spi|spi_value\(0),
	sload => \spi0|spi|ALT_INV_feed_me~q\,
	ena => \spi0|spi|spi_value[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|spi_value\(1));

-- Location: FF_X84_Y6_N13
\spi0|spi|spi_value[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|spi|spi_value[2]~feeder_combout\,
	asdata => \spi0|spi|spi_value\(1),
	sload => \spi0|spi|ALT_INV_feed_me~q\,
	ena => \spi0|spi|spi_value[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|spi_value\(2));

-- Location: FF_X84_Y6_N52
\spi0|spi|spi_value[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|spi|spi_value[3]~feeder_combout\,
	asdata => \spi0|spi|spi_value\(2),
	sload => \spi0|spi|ALT_INV_feed_me~q\,
	ena => \spi0|spi|spi_value[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|spi_value\(3));

-- Location: FF_X84_Y6_N16
\spi0|spi|spi_value[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|spi|spi_value[4]~feeder_combout\,
	asdata => \spi0|spi|spi_value\(3),
	sload => \spi0|spi|ALT_INV_feed_me~q\,
	ena => \spi0|spi|spi_value[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|spi_value\(4));

-- Location: FF_X84_Y6_N49
\spi0|spi|spi_value[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|spi|spi_value[5]~feeder_combout\,
	asdata => \spi0|spi|spi_value\(4),
	sload => \spi0|spi|ALT_INV_feed_me~q\,
	ena => \spi0|spi|spi_value[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|spi_value\(5));

-- Location: FF_X84_Y6_N46
\spi0|spi|spi_value[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|spi|spi_value[6]~feeder_combout\,
	asdata => \spi0|spi|spi_value\(5),
	sload => \spi0|spi|ALT_INV_feed_me~q\,
	ena => \spi0|spi|spi_value[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|spi_value\(6));

-- Location: FF_X84_Y6_N37
\spi0|spi|spi_value[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|spi|spi_value[7]~feeder_combout\,
	asdata => \spi0|spi|spi_value\(6),
	sload => \spi0|spi|ALT_INV_feed_me~q\,
	ena => \spi0|spi|spi_value[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|spi_value\(7));

-- Location: FF_X84_Y6_N43
\spi0|spi|spi_value[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|spi|spi_value[8]~feeder_combout\,
	asdata => \spi0|spi|spi_value\(7),
	sload => \spi0|spi|ALT_INV_feed_me~q\,
	ena => \spi0|spi|spi_value[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|spi_value\(8));

-- Location: FF_X84_Y6_N22
\spi0|spi|spi_value[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|spi|spi_value[9]~feeder_combout\,
	asdata => \spi0|spi|spi_value\(8),
	sload => \spi0|spi|ALT_INV_feed_me~q\,
	ena => \spi0|spi|spi_value[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|spi_value\(9));

-- Location: FF_X84_Y6_N58
\spi0|spi|spi_value[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|spi|spi_value[10]~feeder_combout\,
	asdata => \spi0|spi|spi_value\(9),
	sload => \spi0|spi|ALT_INV_feed_me~q\,
	ena => \spi0|spi|spi_value[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|spi_value\(10));

-- Location: FF_X84_Y6_N55
\spi0|spi|spi_value[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|spi|spi_value[11]~feeder_combout\,
	asdata => \spi0|spi|spi_value\(10),
	sload => \spi0|spi|ALT_INV_feed_me~q\,
	ena => \spi0|spi|spi_value[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|spi_value\(11));

-- Location: FF_X84_Y6_N19
\spi0|spi|spi_value[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|spi|spi_value[12]~feeder_combout\,
	asdata => \spi0|spi|spi_value\(11),
	sload => \spi0|spi|ALT_INV_feed_me~q\,
	ena => \spi0|spi|spi_value[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|spi_value\(12));

-- Location: FF_X84_Y6_N4
\spi0|spi|spi_value[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|spi|spi_value[13]~feeder_combout\,
	asdata => \spi0|spi|spi_value\(12),
	sload => \spi0|spi|ALT_INV_feed_me~q\,
	ena => \spi0|spi|spi_value[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|spi_value\(13));

-- Location: FF_X84_Y6_N1
\spi0|spi|spi_value[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|spi|spi_value[14]~feeder_combout\,
	asdata => \spi0|spi|spi_value\(13),
	sload => \spi0|spi|ALT_INV_feed_me~q\,
	ena => \spi0|spi|spi_value[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|spi_value\(14));

-- Location: FF_X84_Y6_N7
\spi0|spi|spi_value[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|spi|spi_value[15]~feeder_combout\,
	asdata => \spi0|spi|spi_value\(14),
	sload => \spi0|spi|ALT_INV_feed_me~q\,
	ena => \spi0|spi|spi_value[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|spi_value\(15));

-- Location: FF_X82_Y5_N28
\spi0|spi|MISO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \spi0|spi|spi_value\(15),
	sload => VCC,
	ena => \spi0|spi|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|MISO~q\);

-- Location: MLABCELL_X84_Y8_N48
\spi0|led0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|led0~0_combout\ = !\spi0|state~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|ALT_INV_state~q\,
	combout => \spi0|led0~0_combout\);

-- Location: FF_X84_Y8_N49
\spi0|led0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|led0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|led0~q\);

-- Location: FF_X80_Y6_N25
\btn_controller|led1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	asdata => \btn_controller|state~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_controller|led1~q\);

-- Location: MLABCELL_X82_Y4_N0
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

-- Location: LABCELL_X83_Y4_N54
\lcd_controller|LessThan7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan7~0_combout\ = ( \lcd_controller|Add0~101_sumout\ & ( \lcd_controller|Add0~97_sumout\ & ( (\lcd_controller|Add0~105_sumout\ & (\lcd_controller|Add0~113_sumout\ & (\lcd_controller|Add0~93_sumout\ & 
-- \lcd_controller|Add0~109_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_Add0~105_sumout\,
	datab => \lcd_controller|ALT_INV_Add0~113_sumout\,
	datac => \lcd_controller|ALT_INV_Add0~93_sumout\,
	datad => \lcd_controller|ALT_INV_Add0~109_sumout\,
	datae => \lcd_controller|ALT_INV_Add0~101_sumout\,
	dataf => \lcd_controller|ALT_INV_Add0~97_sumout\,
	combout => \lcd_controller|LessThan7~0_combout\);

-- Location: LABCELL_X83_Y4_N51
\lcd_controller|LessThan1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan1~0_combout\ = ( !\lcd_controller|Add0~81_sumout\ & ( (!\lcd_controller|Add0~89_sumout\ & (!\lcd_controller|Add0~77_sumout\ & !\lcd_controller|Add0~85_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_Add0~89_sumout\,
	datac => \lcd_controller|ALT_INV_Add0~77_sumout\,
	datad => \lcd_controller|ALT_INV_Add0~85_sumout\,
	dataf => \lcd_controller|ALT_INV_Add0~81_sumout\,
	combout => \lcd_controller|LessThan1~0_combout\);

-- Location: LABCELL_X83_Y4_N42
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

-- Location: FF_X82_Y3_N11
\lcd_controller|clk_count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \lcd_controller|Add0~57_sumout\,
	sclr => \lcd_controller|clk_count[1]~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_controller|clk_count\(30));

-- Location: MLABCELL_X82_Y3_N0
\lcd_controller|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Add0~45_sumout\ = SUM(( \lcd_controller|clk_count\(20) ) + ( GND ) + ( \lcd_controller|Add0~42\ ))
-- \lcd_controller|Add0~46\ = CARRY(( \lcd_controller|clk_count\(20) ) + ( GND ) + ( \lcd_controller|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \lcd_controller|ALT_INV_clk_count\(20),
	cin => \lcd_controller|Add0~42\,
	sumout => \lcd_controller|Add0~45_sumout\,
	cout => \lcd_controller|Add0~46\);

-- Location: MLABCELL_X82_Y3_N3
\lcd_controller|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Add0~49_sumout\ = SUM(( \lcd_controller|clk_count\(21) ) + ( GND ) + ( \lcd_controller|Add0~46\ ))
-- \lcd_controller|Add0~50\ = CARRY(( \lcd_controller|clk_count\(21) ) + ( GND ) + ( \lcd_controller|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \lcd_controller|ALT_INV_clk_count\(21),
	cin => \lcd_controller|Add0~46\,
	sumout => \lcd_controller|Add0~49_sumout\,
	cout => \lcd_controller|Add0~50\);

-- Location: FF_X82_Y3_N59
\lcd_controller|clk_count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \lcd_controller|Add0~49_sumout\,
	sclr => \lcd_controller|clk_count[1]~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_controller|clk_count\(21));

-- Location: MLABCELL_X82_Y3_N6
\lcd_controller|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Add0~53_sumout\ = SUM(( \lcd_controller|clk_count\(22) ) + ( GND ) + ( \lcd_controller|Add0~50\ ))
-- \lcd_controller|Add0~54\ = CARRY(( \lcd_controller|clk_count\(22) ) + ( GND ) + ( \lcd_controller|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \lcd_controller|ALT_INV_clk_count\(22),
	cin => \lcd_controller|Add0~50\,
	sumout => \lcd_controller|Add0~53_sumout\,
	cout => \lcd_controller|Add0~54\);

-- Location: FF_X82_Y3_N50
\lcd_controller|clk_count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \lcd_controller|Add0~53_sumout\,
	sclr => \lcd_controller|clk_count[1]~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_controller|clk_count\(22));

-- Location: MLABCELL_X82_Y3_N9
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

-- Location: FF_X82_Y3_N38
\lcd_controller|clk_count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \lcd_controller|Add0~13_sumout\,
	sclr => \lcd_controller|clk_count[1]~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_controller|clk_count\(23));

-- Location: MLABCELL_X82_Y3_N12
\lcd_controller|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Add0~17_sumout\ = SUM(( \lcd_controller|clk_count\(24) ) + ( GND ) + ( \lcd_controller|Add0~14\ ))
-- \lcd_controller|Add0~18\ = CARRY(( \lcd_controller|clk_count\(24) ) + ( GND ) + ( \lcd_controller|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \lcd_controller|ALT_INV_clk_count\(24),
	cin => \lcd_controller|Add0~14\,
	sumout => \lcd_controller|Add0~17_sumout\,
	cout => \lcd_controller|Add0~18\);

-- Location: FF_X82_Y3_N44
\lcd_controller|clk_count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \lcd_controller|Add0~17_sumout\,
	sclr => \lcd_controller|clk_count[1]~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_controller|clk_count\(24));

-- Location: MLABCELL_X82_Y3_N15
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

-- Location: FF_X82_Y3_N53
\lcd_controller|clk_count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \lcd_controller|Add0~21_sumout\,
	sclr => \lcd_controller|clk_count[1]~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_controller|clk_count\(25));

-- Location: MLABCELL_X82_Y3_N18
\lcd_controller|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Add0~25_sumout\ = SUM(( \lcd_controller|clk_count\(26) ) + ( GND ) + ( \lcd_controller|Add0~22\ ))
-- \lcd_controller|Add0~26\ = CARRY(( \lcd_controller|clk_count\(26) ) + ( GND ) + ( \lcd_controller|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \lcd_controller|ALT_INV_clk_count\(26),
	cin => \lcd_controller|Add0~22\,
	sumout => \lcd_controller|Add0~25_sumout\,
	cout => \lcd_controller|Add0~26\);

-- Location: FF_X82_Y3_N41
\lcd_controller|clk_count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \lcd_controller|Add0~25_sumout\,
	sclr => \lcd_controller|clk_count[1]~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_controller|clk_count\(26));

-- Location: MLABCELL_X82_Y3_N21
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

-- Location: FF_X82_Y3_N47
\lcd_controller|clk_count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \lcd_controller|Add0~29_sumout\,
	sclr => \lcd_controller|clk_count[1]~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_controller|clk_count\(27));

-- Location: MLABCELL_X82_Y3_N24
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

-- Location: FF_X82_Y3_N29
\lcd_controller|clk_count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \lcd_controller|Add0~5_sumout\,
	sclr => \lcd_controller|clk_count[1]~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_controller|clk_count\(28));

-- Location: MLABCELL_X82_Y3_N27
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

-- Location: FF_X82_Y3_N17
\lcd_controller|clk_count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \lcd_controller|Add0~9_sumout\,
	sclr => \lcd_controller|clk_count[1]~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_controller|clk_count\(29));

-- Location: MLABCELL_X82_Y3_N30
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

-- Location: MLABCELL_X82_Y3_N39
\lcd_controller|busy~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|busy~2_combout\ = ( !\lcd_controller|Add0~9_sumout\ & ( !\lcd_controller|Add0~5_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \lcd_controller|ALT_INV_Add0~5_sumout\,
	dataf => \lcd_controller|ALT_INV_Add0~9_sumout\,
	combout => \lcd_controller|busy~2_combout\);

-- Location: LABCELL_X83_Y4_N36
\lcd_controller|LessThan6~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan6~2_combout\ = ( !\lcd_controller|Add0~93_sumout\ & ( !\lcd_controller|Add0~101_sumout\ & ( (!\lcd_controller|Add0~117_sumout\ & (!\lcd_controller|Add0~113_sumout\ & (!\lcd_controller|Add0~105_sumout\ & 
-- !\lcd_controller|Add0~109_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_Add0~117_sumout\,
	datab => \lcd_controller|ALT_INV_Add0~113_sumout\,
	datac => \lcd_controller|ALT_INV_Add0~105_sumout\,
	datad => \lcd_controller|ALT_INV_Add0~109_sumout\,
	datae => \lcd_controller|ALT_INV_Add0~93_sumout\,
	dataf => \lcd_controller|ALT_INV_Add0~101_sumout\,
	combout => \lcd_controller|LessThan6~2_combout\);

-- Location: LABCELL_X83_Y4_N18
\lcd_controller|LessThan6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan6~1_combout\ = ( !\lcd_controller|Add0~77_sumout\ & ( !\lcd_controller|Add0~81_sumout\ & ( (!\lcd_controller|Add0~85_sumout\ & (!\lcd_controller|Add0~89_sumout\ & !\lcd_controller|Add0~97_sumout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_Add0~85_sumout\,
	datac => \lcd_controller|ALT_INV_Add0~89_sumout\,
	datad => \lcd_controller|ALT_INV_Add0~97_sumout\,
	datae => \lcd_controller|ALT_INV_Add0~77_sumout\,
	dataf => \lcd_controller|ALT_INV_Add0~81_sumout\,
	combout => \lcd_controller|LessThan6~1_combout\);

-- Location: LABCELL_X83_Y4_N12
\lcd_controller|LessThan6~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan6~3_combout\ = ( \lcd_controller|LessThan6~2_combout\ & ( \lcd_controller|LessThan6~1_combout\ & ( (\lcd_controller|Add0~73_sumout\ & (\lcd_controller|Add0~61_sumout\ & \lcd_controller|Add0~65_sumout\)) ) ) ) # ( 
-- !\lcd_controller|LessThan6~2_combout\ & ( \lcd_controller|LessThan6~1_combout\ & ( (\lcd_controller|Add0~61_sumout\ & (\lcd_controller|Add0~65_sumout\ & ((\lcd_controller|Add0~73_sumout\) # (\lcd_controller|Add0~69_sumout\)))) ) ) ) # ( 
-- \lcd_controller|LessThan6~2_combout\ & ( !\lcd_controller|LessThan6~1_combout\ & ( (\lcd_controller|Add0~61_sumout\ & (\lcd_controller|Add0~65_sumout\ & ((\lcd_controller|Add0~73_sumout\) # (\lcd_controller|Add0~69_sumout\)))) ) ) ) # ( 
-- !\lcd_controller|LessThan6~2_combout\ & ( !\lcd_controller|LessThan6~1_combout\ & ( (\lcd_controller|Add0~61_sumout\ & (\lcd_controller|Add0~65_sumout\ & ((\lcd_controller|Add0~73_sumout\) # (\lcd_controller|Add0~69_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000111000000000000011100000000000001110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_Add0~69_sumout\,
	datab => \lcd_controller|ALT_INV_Add0~73_sumout\,
	datac => \lcd_controller|ALT_INV_Add0~61_sumout\,
	datad => \lcd_controller|ALT_INV_Add0~65_sumout\,
	datae => \lcd_controller|ALT_INV_LessThan6~2_combout\,
	dataf => \lcd_controller|ALT_INV_LessThan6~1_combout\,
	combout => \lcd_controller|LessThan6~3_combout\);

-- Location: MLABCELL_X82_Y3_N36
\lcd_controller|LessThan3~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan3~3_combout\ = ( !\lcd_controller|Add0~17_sumout\ & ( (!\lcd_controller|Add0~25_sumout\ & (!\lcd_controller|Add0~21_sumout\ & (!\lcd_controller|Add0~29_sumout\ & !\lcd_controller|Add0~13_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_Add0~25_sumout\,
	datab => \lcd_controller|ALT_INV_Add0~21_sumout\,
	datac => \lcd_controller|ALT_INV_Add0~29_sumout\,
	datad => \lcd_controller|ALT_INV_Add0~13_sumout\,
	dataf => \lcd_controller|ALT_INV_Add0~17_sumout\,
	combout => \lcd_controller|LessThan3~3_combout\);

-- Location: LABCELL_X83_Y3_N30
\lcd_controller|LessThan3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan3~0_combout\ = ( !\lcd_controller|Add0~53_sumout\ & ( !\lcd_controller|Add0~37_sumout\ & ( (!\lcd_controller|Add0~33_sumout\ & (!\lcd_controller|Add0~45_sumout\ & (!\lcd_controller|Add0~41_sumout\ & 
-- !\lcd_controller|Add0~49_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_Add0~33_sumout\,
	datab => \lcd_controller|ALT_INV_Add0~45_sumout\,
	datac => \lcd_controller|ALT_INV_Add0~41_sumout\,
	datad => \lcd_controller|ALT_INV_Add0~49_sumout\,
	datae => \lcd_controller|ALT_INV_Add0~53_sumout\,
	dataf => \lcd_controller|ALT_INV_Add0~37_sumout\,
	combout => \lcd_controller|LessThan3~0_combout\);

-- Location: MLABCELL_X82_Y3_N51
\lcd_controller|lcd_data[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|lcd_data[1]~2_combout\ = ( \lcd_controller|LessThan3~3_combout\ & ( \lcd_controller|LessThan3~0_combout\ & ( (!\lcd_controller|Add0~57_sumout\ & (\lcd_controller|busy~2_combout\ & ((!\lcd_controller|LessThan7~1_combout\) # 
-- (!\lcd_controller|LessThan6~3_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000110000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_LessThan7~1_combout\,
	datab => \lcd_controller|ALT_INV_Add0~57_sumout\,
	datac => \lcd_controller|ALT_INV_busy~2_combout\,
	datad => \lcd_controller|ALT_INV_LessThan6~3_combout\,
	datae => \lcd_controller|ALT_INV_LessThan3~3_combout\,
	dataf => \lcd_controller|ALT_INV_LessThan3~0_combout\,
	combout => \lcd_controller|lcd_data[1]~2_combout\);

-- Location: MLABCELL_X82_Y5_N24
\lcd_controller|LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan0~1_combout\ = ( !\lcd_controller|clk_count\(14) & ( !\lcd_controller|clk_count\(16) & ( !\lcd_controller|clk_count\(15) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \lcd_controller|ALT_INV_clk_count\(15),
	datae => \lcd_controller|ALT_INV_clk_count\(14),
	dataf => \lcd_controller|ALT_INV_clk_count\(16),
	combout => \lcd_controller|LessThan0~1_combout\);

-- Location: MLABCELL_X82_Y5_N39
\lcd_controller|LessThan0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan0~5_combout\ = ( !\lcd_controller|clk_count\(24) & ( (!\lcd_controller|clk_count\(23) & (!\lcd_controller|clk_count\(25) & (!\lcd_controller|clk_count\(22) & !\lcd_controller|clk_count\(26)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_clk_count\(23),
	datab => \lcd_controller|ALT_INV_clk_count\(25),
	datac => \lcd_controller|ALT_INV_clk_count\(22),
	datad => \lcd_controller|ALT_INV_clk_count\(26),
	dataf => \lcd_controller|ALT_INV_clk_count\(24),
	combout => \lcd_controller|LessThan0~5_combout\);

-- Location: MLABCELL_X82_Y5_N42
\lcd_controller|LessThan9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan9~1_combout\ = (!\lcd_controller|clk_count\(17) & (!\lcd_controller|clk_count\(21) & (!\lcd_controller|clk_count\(18) & !\lcd_controller|clk_count\(13))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_clk_count\(17),
	datab => \lcd_controller|ALT_INV_clk_count\(21),
	datac => \lcd_controller|ALT_INV_clk_count\(18),
	datad => \lcd_controller|ALT_INV_clk_count\(13),
	combout => \lcd_controller|LessThan9~1_combout\);

-- Location: MLABCELL_X82_Y5_N18
\lcd_controller|LessThan9~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan9~2_combout\ = ( \lcd_controller|LessThan0~3_combout\ & ( \lcd_controller|LessThan9~1_combout\ & ( (!\lcd_controller|clk_count\(12) & (\lcd_controller|LessThan0~1_combout\ & \lcd_controller|LessThan0~5_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_clk_count\(12),
	datac => \lcd_controller|ALT_INV_LessThan0~1_combout\,
	datad => \lcd_controller|ALT_INV_LessThan0~5_combout\,
	datae => \lcd_controller|ALT_INV_LessThan0~3_combout\,
	dataf => \lcd_controller|ALT_INV_LessThan9~1_combout\,
	combout => \lcd_controller|LessThan9~2_combout\);

-- Location: MLABCELL_X82_Y3_N33
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

-- Location: FF_X82_Y3_N35
\lcd_controller|clk_count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \lcd_controller|Add0~1_sumout\,
	sclr => \lcd_controller|clk_count[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_controller|clk_count\(31));

-- Location: MLABCELL_X82_Y5_N33
\lcd_controller|LessThan9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan9~0_combout\ = ( !\lcd_controller|clk_count\(30) & ( !\lcd_controller|clk_count\(29) & ( (!\lcd_controller|clk_count\(28) & !\lcd_controller|clk_count\(27)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \lcd_controller|ALT_INV_clk_count\(28),
	datad => \lcd_controller|ALT_INV_clk_count\(27),
	datae => \lcd_controller|ALT_INV_clk_count\(30),
	dataf => \lcd_controller|ALT_INV_clk_count\(29),
	combout => \lcd_controller|LessThan9~0_combout\);

-- Location: LABCELL_X81_Y4_N39
\lcd_controller|LessThan9~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan9~4_combout\ = ( \lcd_controller|clk_count\(7) & ( (\lcd_controller|clk_count\(8) & \lcd_controller|clk_count\(6)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001100000000000000000000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \lcd_controller|ALT_INV_clk_count\(8),
	datac => \lcd_controller|ALT_INV_clk_count\(6),
	datae => \lcd_controller|ALT_INV_clk_count\(7),
	combout => \lcd_controller|LessThan9~4_combout\);

-- Location: MLABCELL_X82_Y6_N12
\lcd_controller|LessThan9~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan9~3_combout\ = ( !\lcd_controller|clk_count\(2) & ( !\lcd_controller|clk_count\(4) & ( (!\lcd_controller|clk_count\(5) & !\lcd_controller|clk_count\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_clk_count\(5),
	datac => \lcd_controller|ALT_INV_clk_count\(3),
	datae => \lcd_controller|ALT_INV_clk_count\(2),
	dataf => \lcd_controller|ALT_INV_clk_count\(4),
	combout => \lcd_controller|LessThan9~3_combout\);

-- Location: LABCELL_X81_Y5_N12
\lcd_controller|LessThan9~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan9~5_combout\ = ( \lcd_controller|clk_count\(11) & ( \lcd_controller|LessThan9~3_combout\ & ( (\lcd_controller|clk_count\(10)) # (\lcd_controller|clk_count\(9)) ) ) ) # ( \lcd_controller|clk_count\(11) & ( 
-- !\lcd_controller|LessThan9~3_combout\ & ( ((\lcd_controller|LessThan9~4_combout\) # (\lcd_controller|clk_count\(10))) # (\lcd_controller|clk_count\(9)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011111110111111100000000000000000111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_clk_count\(9),
	datab => \lcd_controller|ALT_INV_clk_count\(10),
	datac => \lcd_controller|ALT_INV_LessThan9~4_combout\,
	datae => \lcd_controller|ALT_INV_clk_count\(11),
	dataf => \lcd_controller|ALT_INV_LessThan9~3_combout\,
	combout => \lcd_controller|LessThan9~5_combout\);

-- Location: LABCELL_X81_Y5_N54
\lcd_controller|LessThan9~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan9~6_combout\ = ( \lcd_controller|LessThan9~0_combout\ & ( !\lcd_controller|LessThan9~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \lcd_controller|ALT_INV_LessThan9~0_combout\,
	dataf => \lcd_controller|ALT_INV_LessThan9~5_combout\,
	combout => \lcd_controller|LessThan9~6_combout\);

-- Location: LABCELL_X81_Y5_N0
\lcd_controller|Selector34~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Selector34~0_combout\ = ( \lcd_controller|LessThan9~0_combout\ & ( \lcd_controller|LessThan9~5_combout\ & ( (!\lcd_controller|clk_count\(31) & \lcd_controller|state.send~q\) ) ) ) # ( !\lcd_controller|LessThan9~0_combout\ & ( 
-- \lcd_controller|LessThan9~5_combout\ & ( (!\lcd_controller|clk_count\(31) & \lcd_controller|state.send~q\) ) ) ) # ( \lcd_controller|LessThan9~0_combout\ & ( !\lcd_controller|LessThan9~5_combout\ & ( (!\lcd_controller|clk_count\(31) & 
-- (!\lcd_controller|LessThan9~2_combout\ & \lcd_controller|state.send~q\)) ) ) ) # ( !\lcd_controller|LessThan9~0_combout\ & ( !\lcd_controller|LessThan9~5_combout\ & ( (!\lcd_controller|clk_count\(31) & \lcd_controller|state.send~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010000000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_clk_count\(31),
	datac => \lcd_controller|ALT_INV_LessThan9~2_combout\,
	datad => \lcd_controller|ALT_INV_state.send~q\,
	datae => \lcd_controller|ALT_INV_LessThan9~0_combout\,
	dataf => \lcd_controller|ALT_INV_LessThan9~5_combout\,
	combout => \lcd_controller|Selector34~0_combout\);

-- Location: LABCELL_X81_Y3_N21
\lcd_controller|LessThan6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan6~0_combout\ = ( !\lcd_controller|Add0~73_sumout\ & ( !\lcd_controller|Add0~69_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \lcd_controller|ALT_INV_Add0~69_sumout\,
	dataf => \lcd_controller|ALT_INV_Add0~73_sumout\,
	combout => \lcd_controller|LessThan6~0_combout\);

-- Location: LABCELL_X83_Y3_N12
\lcd_controller|LessThan3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan3~2_combout\ = ( \lcd_controller|Add0~77_sumout\ & ( \lcd_controller|Add0~89_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \lcd_controller|ALT_INV_Add0~89_sumout\,
	dataf => \lcd_controller|ALT_INV_Add0~77_sumout\,
	combout => \lcd_controller|LessThan3~2_combout\);

-- Location: LABCELL_X81_Y3_N36
\lcd_controller|LessThan8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan8~0_combout\ = ( \lcd_controller|Add0~93_sumout\ & ( !\lcd_controller|Add0~85_sumout\ & ( (!\lcd_controller|Add0~97_sumout\) # ((!\lcd_controller|Add0~101_sumout\ & ((!\lcd_controller|Add0~105_sumout\) # 
-- (!\lcd_controller|Add0~109_sumout\)))) ) ) ) # ( !\lcd_controller|Add0~93_sumout\ & ( !\lcd_controller|Add0~85_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111001110110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_Add0~105_sumout\,
	datab => \lcd_controller|ALT_INV_Add0~97_sumout\,
	datac => \lcd_controller|ALT_INV_Add0~101_sumout\,
	datad => \lcd_controller|ALT_INV_Add0~109_sumout\,
	datae => \lcd_controller|ALT_INV_Add0~93_sumout\,
	dataf => \lcd_controller|ALT_INV_Add0~85_sumout\,
	combout => \lcd_controller|LessThan8~0_combout\);

-- Location: MLABCELL_X82_Y3_N42
\lcd_controller|LessThan8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan8~1_combout\ = ( !\lcd_controller|Add0~73_sumout\ & ( !\lcd_controller|Add0~81_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \lcd_controller|ALT_INV_Add0~81_sumout\,
	dataf => \lcd_controller|ALT_INV_Add0~73_sumout\,
	combout => \lcd_controller|LessThan8~1_combout\);

-- Location: LABCELL_X81_Y3_N12
\lcd_controller|LessThan8~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan8~2_combout\ = ( !\lcd_controller|LessThan8~0_combout\ & ( \lcd_controller|LessThan8~1_combout\ & ( (\lcd_controller|Add0~65_sumout\ & (\lcd_controller|Add0~61_sumout\ & (!\lcd_controller|LessThan6~0_combout\ & 
-- \lcd_controller|LessThan3~2_combout\))) ) ) ) # ( \lcd_controller|LessThan8~0_combout\ & ( !\lcd_controller|LessThan8~1_combout\ & ( (\lcd_controller|Add0~65_sumout\ & (\lcd_controller|Add0~61_sumout\ & !\lcd_controller|LessThan6~0_combout\)) ) ) ) # ( 
-- !\lcd_controller|LessThan8~0_combout\ & ( !\lcd_controller|LessThan8~1_combout\ & ( (\lcd_controller|Add0~65_sumout\ & (\lcd_controller|Add0~61_sumout\ & !\lcd_controller|LessThan6~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000000000000000100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_Add0~65_sumout\,
	datab => \lcd_controller|ALT_INV_Add0~61_sumout\,
	datac => \lcd_controller|ALT_INV_LessThan6~0_combout\,
	datad => \lcd_controller|ALT_INV_LessThan3~2_combout\,
	datae => \lcd_controller|ALT_INV_LessThan8~0_combout\,
	dataf => \lcd_controller|ALT_INV_LessThan8~1_combout\,
	combout => \lcd_controller|LessThan8~2_combout\);

-- Location: LABCELL_X81_Y3_N24
\lcd_controller|lcd_data[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|lcd_data[1]~1_combout\ = ( \lcd_controller|LessThan3~3_combout\ & ( \lcd_controller|busy~2_combout\ & ( (!\lcd_controller|Add0~1_sumout\ & (((!\lcd_controller|LessThan3~0_combout\) # (\lcd_controller|LessThan8~2_combout\)) # 
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
	combout => \lcd_controller|lcd_data[1]~1_combout\);

-- Location: LABCELL_X80_Y3_N54
\lcd_controller|LessThan3~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan3~10_combout\ = ( \lcd_controller|Add0~109_sumout\ & ( !\lcd_controller|Add0~85_sumout\ & ( (!\lcd_controller|Add0~101_sumout\ & (!\lcd_controller|Add0~105_sumout\ & ((!\lcd_controller|Add0~117_sumout\) # 
-- (!\lcd_controller|Add0~113_sumout\)))) ) ) ) # ( !\lcd_controller|Add0~109_sumout\ & ( !\lcd_controller|Add0~85_sumout\ & ( !\lcd_controller|Add0~101_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110010000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_Add0~117_sumout\,
	datab => \lcd_controller|ALT_INV_Add0~101_sumout\,
	datac => \lcd_controller|ALT_INV_Add0~113_sumout\,
	datad => \lcd_controller|ALT_INV_Add0~105_sumout\,
	datae => \lcd_controller|ALT_INV_Add0~109_sumout\,
	dataf => \lcd_controller|ALT_INV_Add0~85_sumout\,
	combout => \lcd_controller|LessThan3~10_combout\);

-- Location: LABCELL_X81_Y4_N0
\lcd_controller|LessThan3~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan3~11_combout\ = ( \lcd_controller|Add0~97_sumout\ & ( \lcd_controller|Add0~77_sumout\ & ( (\lcd_controller|Add0~89_sumout\ & ((\lcd_controller|Add0~85_sumout\) # (\lcd_controller|Add0~93_sumout\))) ) ) ) # ( 
-- !\lcd_controller|Add0~97_sumout\ & ( \lcd_controller|Add0~77_sumout\ & ( (\lcd_controller|Add0~85_sumout\ & \lcd_controller|Add0~89_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_Add0~93_sumout\,
	datac => \lcd_controller|ALT_INV_Add0~85_sumout\,
	datad => \lcd_controller|ALT_INV_Add0~89_sumout\,
	datae => \lcd_controller|ALT_INV_Add0~97_sumout\,
	dataf => \lcd_controller|ALT_INV_Add0~77_sumout\,
	combout => \lcd_controller|LessThan3~11_combout\);

-- Location: LABCELL_X80_Y3_N12
\lcd_controller|busy~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|busy~4_combout\ = ( \lcd_controller|LessThan3~11_combout\ & ( \lcd_controller|LessThan6~0_combout\ & ( (!\lcd_controller|Add0~81_sumout\ & (!\lcd_controller|Add0~65_sumout\ & (\lcd_controller|LessThan3~10_combout\ & 
-- !\lcd_controller|Add0~61_sumout\))) ) ) ) # ( !\lcd_controller|LessThan3~11_combout\ & ( \lcd_controller|LessThan6~0_combout\ & ( (!\lcd_controller|Add0~81_sumout\ & (!\lcd_controller|Add0~65_sumout\ & !\lcd_controller|Add0~61_sumout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010001000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_Add0~81_sumout\,
	datab => \lcd_controller|ALT_INV_Add0~65_sumout\,
	datac => \lcd_controller|ALT_INV_LessThan3~10_combout\,
	datad => \lcd_controller|ALT_INV_Add0~61_sumout\,
	datae => \lcd_controller|ALT_INV_LessThan3~11_combout\,
	dataf => \lcd_controller|ALT_INV_LessThan6~0_combout\,
	combout => \lcd_controller|busy~4_combout\);

-- Location: LABCELL_X79_Y3_N48
\lcd_controller|Selector33~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Selector33~4_combout\ = ( \lcd_controller|LessThan0~7_combout\ & ( \lcd_controller|state.initialize~DUPLICATE_q\ & ( \lcd_controller|Add0~1_sumout\ ) ) ) # ( !\lcd_controller|LessThan0~7_combout\ & ( 
-- \lcd_controller|state.initialize~DUPLICATE_q\ & ( (!\lcd_controller|state.power_up~q\) # (\lcd_controller|Add0~1_sumout\) ) ) ) # ( !\lcd_controller|LessThan0~7_combout\ & ( !\lcd_controller|state.initialize~DUPLICATE_q\ & ( 
-- !\lcd_controller|state.power_up~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100000000000000000011001111110011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \lcd_controller|ALT_INV_state.power_up~q\,
	datac => \lcd_controller|ALT_INV_Add0~1_sumout\,
	datae => \lcd_controller|ALT_INV_LessThan0~7_combout\,
	dataf => \lcd_controller|ALT_INV_state.initialize~DUPLICATE_q\,
	combout => \lcd_controller|Selector33~4_combout\);

-- Location: MLABCELL_X82_Y3_N45
\lcd_controller|LessThan3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan3~5_combout\ = ( !\lcd_controller|Add0~17_sumout\ & ( (!\lcd_controller|Add0~25_sumout\ & (!\lcd_controller|Add0~13_sumout\ & !\lcd_controller|Add0~21_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_Add0~25_sumout\,
	datab => \lcd_controller|ALT_INV_Add0~13_sumout\,
	datac => \lcd_controller|ALT_INV_Add0~21_sumout\,
	dataf => \lcd_controller|ALT_INV_Add0~17_sumout\,
	combout => \lcd_controller|LessThan3~5_combout\);

-- Location: LABCELL_X79_Y3_N57
\lcd_controller|busy~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|busy~6_combout\ = ( \lcd_controller|LessThan3~5_combout\ & ( \lcd_controller|LessThan3~0_combout\ & ( (!\lcd_controller|Add0~29_sumout\ & (\lcd_controller|busy~4_combout\ & (!\lcd_controller|Add0~5_sumout\ & 
-- !\lcd_controller|Add0~9_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_Add0~29_sumout\,
	datab => \lcd_controller|ALT_INV_busy~4_combout\,
	datac => \lcd_controller|ALT_INV_Add0~5_sumout\,
	datad => \lcd_controller|ALT_INV_Add0~9_sumout\,
	datae => \lcd_controller|ALT_INV_LessThan3~5_combout\,
	dataf => \lcd_controller|ALT_INV_LessThan3~0_combout\,
	combout => \lcd_controller|busy~6_combout\);

-- Location: LABCELL_X79_Y3_N45
\lcd_controller|Selector33~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Selector33~0_combout\ = ( !\lcd_controller|Add0~57_sumout\ & ( \lcd_controller|state.initialize~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \lcd_controller|ALT_INV_state.initialize~DUPLICATE_q\,
	dataf => \lcd_controller|ALT_INV_Add0~57_sumout\,
	combout => \lcd_controller|Selector33~0_combout\);

-- Location: LABCELL_X79_Y3_N33
\lcd_controller|Selector33~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Selector33~1_combout\ = ( \lcd_controller|LessThan3~3_combout\ & ( \lcd_controller|busy~2_combout\ & ( (!\lcd_controller|Add0~57_sumout\ & (\lcd_controller|state.initialize~DUPLICATE_q\ & (!\lcd_controller|LessThan6~3_combout\ & 
-- \lcd_controller|LessThan3~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_Add0~57_sumout\,
	datab => \lcd_controller|ALT_INV_state.initialize~DUPLICATE_q\,
	datac => \lcd_controller|ALT_INV_LessThan6~3_combout\,
	datad => \lcd_controller|ALT_INV_LessThan3~0_combout\,
	datae => \lcd_controller|ALT_INV_LessThan3~3_combout\,
	dataf => \lcd_controller|ALT_INV_busy~2_combout\,
	combout => \lcd_controller|Selector33~1_combout\);

-- Location: LABCELL_X79_Y3_N0
\lcd_controller|Selector33~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Selector33~2_combout\ = ( \lcd_controller|LessThan3~3_combout\ & ( \lcd_controller|busy~2_combout\ & ( (!\lcd_controller|Add0~57_sumout\ & (\lcd_controller|state.initialize~DUPLICATE_q\ & (\lcd_controller|LessThan3~0_combout\ & 
-- !\lcd_controller|LessThan7~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_Add0~57_sumout\,
	datab => \lcd_controller|ALT_INV_state.initialize~DUPLICATE_q\,
	datac => \lcd_controller|ALT_INV_LessThan3~0_combout\,
	datad => \lcd_controller|ALT_INV_LessThan7~1_combout\,
	datae => \lcd_controller|ALT_INV_LessThan3~3_combout\,
	dataf => \lcd_controller|ALT_INV_busy~2_combout\,
	combout => \lcd_controller|Selector33~2_combout\);

-- Location: LABCELL_X79_Y3_N18
\lcd_controller|Selector33~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Selector33~3_combout\ = ( \lcd_controller|LessThan3~3_combout\ & ( \lcd_controller|state.initialize~DUPLICATE_q\ & ( (\lcd_controller|LessThan3~0_combout\ & (!\lcd_controller|Add0~57_sumout\ & (\lcd_controller|busy~2_combout\ & 
-- !\lcd_controller|LessThan8~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_LessThan3~0_combout\,
	datab => \lcd_controller|ALT_INV_Add0~57_sumout\,
	datac => \lcd_controller|ALT_INV_busy~2_combout\,
	datad => \lcd_controller|ALT_INV_LessThan8~2_combout\,
	datae => \lcd_controller|ALT_INV_LessThan3~3_combout\,
	dataf => \lcd_controller|ALT_INV_state.initialize~DUPLICATE_q\,
	combout => \lcd_controller|Selector33~3_combout\);

-- Location: LABCELL_X79_Y3_N39
\lcd_controller|Selector33~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Selector33~5_combout\ = ( \lcd_controller|Selector33~2_combout\ & ( \lcd_controller|Selector33~3_combout\ ) ) # ( !\lcd_controller|Selector33~2_combout\ & ( \lcd_controller|Selector33~3_combout\ ) ) # ( 
-- \lcd_controller|Selector33~2_combout\ & ( !\lcd_controller|Selector33~3_combout\ ) ) # ( !\lcd_controller|Selector33~2_combout\ & ( !\lcd_controller|Selector33~3_combout\ & ( (((\lcd_controller|busy~6_combout\ & \lcd_controller|Selector33~0_combout\)) # 
-- (\lcd_controller|Selector33~1_combout\)) # (\lcd_controller|Selector33~4_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_Selector33~4_combout\,
	datab => \lcd_controller|ALT_INV_busy~6_combout\,
	datac => \lcd_controller|ALT_INV_Selector33~0_combout\,
	datad => \lcd_controller|ALT_INV_Selector33~1_combout\,
	datae => \lcd_controller|ALT_INV_Selector33~2_combout\,
	dataf => \lcd_controller|ALT_INV_Selector33~3_combout\,
	combout => \lcd_controller|Selector33~5_combout\);

-- Location: FF_X79_Y3_N41
\lcd_controller|state.initialize~DUPLICATE\ : dffeas
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
	q => \lcd_controller|state.initialize~DUPLICATE_q\);

-- Location: LABCELL_X81_Y3_N54
\lcd_controller|lcd_data[1]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|lcd_data[1]~3_combout\ = ( \lcd_controller|LessThan3~3_combout\ & ( \lcd_controller|busy~2_combout\ & ( (\lcd_controller|state.initialize~DUPLICATE_q\ & ((!\lcd_controller|busy~4_combout\) # ((!\lcd_controller|LessThan3~0_combout\) # 
-- (\lcd_controller|Add0~57_sumout\)))) ) ) ) # ( !\lcd_controller|LessThan3~3_combout\ & ( \lcd_controller|busy~2_combout\ & ( \lcd_controller|state.initialize~DUPLICATE_q\ ) ) ) # ( \lcd_controller|LessThan3~3_combout\ & ( !\lcd_controller|busy~2_combout\ 
-- & ( \lcd_controller|state.initialize~DUPLICATE_q\ ) ) ) # ( !\lcd_controller|LessThan3~3_combout\ & ( !\lcd_controller|busy~2_combout\ & ( \lcd_controller|state.initialize~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_busy~4_combout\,
	datab => \lcd_controller|ALT_INV_state.initialize~DUPLICATE_q\,
	datac => \lcd_controller|ALT_INV_Add0~57_sumout\,
	datad => \lcd_controller|ALT_INV_LessThan3~0_combout\,
	datae => \lcd_controller|ALT_INV_LessThan3~3_combout\,
	dataf => \lcd_controller|ALT_INV_busy~2_combout\,
	combout => \lcd_controller|lcd_data[1]~3_combout\);

-- Location: FF_X81_Y7_N49
\main_fsm|lcd_enable\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	asdata => \main_fsm|Selector52~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_fsm|lcd_enable~q\);

-- Location: MLABCELL_X82_Y7_N51
\main_fsm|Selector52~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \main_fsm|Selector52~0_combout\ = ( \main_fsm|state.SEND~q\ & ( ((\main_fsm|state.DISPL_CLEAR~q\ & !\main_fsm|Equal10~5_combout\)) # (\main_fsm|state.PRSD_MSG~q\) ) ) # ( !\main_fsm|state.SEND~q\ & ( ((!\main_fsm|state.DISPL_CLEAR~q\ & 
-- ((\main_fsm|lcd_enable~q\))) # (\main_fsm|state.DISPL_CLEAR~q\ & (!\main_fsm|Equal10~5_combout\))) # (\main_fsm|state.PRSD_MSG~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111001111111011011100111111101101110011011100110111001101110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \main_fsm|ALT_INV_state.DISPL_CLEAR~q\,
	datab => \main_fsm|ALT_INV_state.PRSD_MSG~q\,
	datac => \main_fsm|ALT_INV_Equal10~5_combout\,
	datad => \main_fsm|ALT_INV_lcd_enable~q\,
	dataf => \main_fsm|ALT_INV_state.SEND~q\,
	combout => \main_fsm|Selector52~0_combout\);

-- Location: FF_X81_Y7_N50
\main_fsm|lcd_enable~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	asdata => \main_fsm|Selector52~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_fsm|lcd_enable~DUPLICATE_q\);

-- Location: LABCELL_X81_Y3_N0
\lcd_controller|Selector34~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Selector34~1_combout\ = ( \lcd_controller|state.ready~q\ & ( \main_fsm|lcd_enable~DUPLICATE_q\ & ( ((\lcd_controller|lcd_data[1]~1_combout\ & (!\lcd_controller|lcd_data[1]~2_combout\ & \lcd_controller|lcd_data[1]~3_combout\))) # 
-- (\lcd_controller|Selector34~0_combout\) ) ) ) # ( !\lcd_controller|state.ready~q\ & ( \main_fsm|lcd_enable~DUPLICATE_q\ & ( ((\lcd_controller|lcd_data[1]~1_combout\ & (!\lcd_controller|lcd_data[1]~2_combout\ & \lcd_controller|lcd_data[1]~3_combout\))) # 
-- (\lcd_controller|Selector34~0_combout\) ) ) ) # ( \lcd_controller|state.ready~q\ & ( !\main_fsm|lcd_enable~DUPLICATE_q\ ) ) # ( !\lcd_controller|state.ready~q\ & ( !\main_fsm|lcd_enable~DUPLICATE_q\ & ( ((\lcd_controller|lcd_data[1]~1_combout\ & 
-- (!\lcd_controller|lcd_data[1]~2_combout\ & \lcd_controller|lcd_data[1]~3_combout\))) # (\lcd_controller|Selector34~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101110101111111111111111101010101011101010101010101110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_Selector34~0_combout\,
	datab => \lcd_controller|ALT_INV_lcd_data[1]~1_combout\,
	datac => \lcd_controller|ALT_INV_lcd_data[1]~2_combout\,
	datad => \lcd_controller|ALT_INV_lcd_data[1]~3_combout\,
	datae => \lcd_controller|ALT_INV_state.ready~q\,
	dataf => \main_fsm|ALT_INV_lcd_enable~DUPLICATE_q\,
	combout => \lcd_controller|Selector34~1_combout\);

-- Location: FF_X81_Y3_N2
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

-- Location: MLABCELL_X82_Y5_N54
\lcd_controller|Selector35~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Selector35~0_combout\ = ( \lcd_controller|state.send~q\ & ( \main_fsm|lcd_enable~DUPLICATE_q\ & ( (((\lcd_controller|LessThan9~6_combout\ & \lcd_controller|LessThan9~2_combout\)) # (\lcd_controller|clk_count\(31))) # 
-- (\lcd_controller|state.ready~q\) ) ) ) # ( !\lcd_controller|state.send~q\ & ( \main_fsm|lcd_enable~DUPLICATE_q\ & ( \lcd_controller|state.ready~q\ ) ) ) # ( \lcd_controller|state.send~q\ & ( !\main_fsm|lcd_enable~DUPLICATE_q\ & ( 
-- ((\lcd_controller|LessThan9~6_combout\ & \lcd_controller|LessThan9~2_combout\)) # (\lcd_controller|clk_count\(31)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001011111111100110011001100110011011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_LessThan9~6_combout\,
	datab => \lcd_controller|ALT_INV_state.ready~q\,
	datac => \lcd_controller|ALT_INV_LessThan9~2_combout\,
	datad => \lcd_controller|ALT_INV_clk_count\(31),
	datae => \lcd_controller|ALT_INV_state.send~q\,
	dataf => \main_fsm|ALT_INV_lcd_enable~DUPLICATE_q\,
	combout => \lcd_controller|Selector35~0_combout\);

-- Location: FF_X82_Y5_N56
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

-- Location: MLABCELL_X82_Y5_N12
\lcd_controller|clk_count[1]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|clk_count[1]~3_combout\ = ( !\lcd_controller|state.power_up~q\ & ( (((!\lcd_controller|LessThan0~7_combout\) # ((\lcd_controller|state.ready~q\)))) ) ) # ( \lcd_controller|state.power_up~q\ & ( ((!\lcd_controller|clk_count\(31) & 
-- (\lcd_controller|state.send~q\ & ((!\lcd_controller|LessThan9~2_combout\) # (!\lcd_controller|LessThan9~6_combout\))))) # (\lcd_controller|state.ready~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "1111000011111111000011001111111111110000111111110000100011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_LessThan9~2_combout\,
	datab => \lcd_controller|ALT_INV_clk_count\(31),
	datac => \lcd_controller|ALT_INV_state.send~q\,
	datad => \lcd_controller|ALT_INV_state.ready~q\,
	datae => \lcd_controller|ALT_INV_state.power_up~q\,
	dataf => \lcd_controller|ALT_INV_LessThan9~6_combout\,
	datag => \lcd_controller|ALT_INV_LessThan0~7_combout\,
	combout => \lcd_controller|clk_count[1]~3_combout\);

-- Location: LABCELL_X83_Y3_N15
\lcd_controller|LessThan2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan2~0_combout\ = ( \lcd_controller|Add0~109_sumout\ & ( (!\lcd_controller|Add0~101_sumout\ & ((!\lcd_controller|Add0~113_sumout\) # (!\lcd_controller|Add0~105_sumout\))) ) ) # ( !\lcd_controller|Add0~109_sumout\ & ( 
-- !\lcd_controller|Add0~101_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011101110000000001110111000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_Add0~113_sumout\,
	datab => \lcd_controller|ALT_INV_Add0~105_sumout\,
	datad => \lcd_controller|ALT_INV_Add0~101_sumout\,
	dataf => \lcd_controller|ALT_INV_Add0~109_sumout\,
	combout => \lcd_controller|LessThan2~0_combout\);

-- Location: LABCELL_X83_Y3_N24
\lcd_controller|LessThan2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan2~1_combout\ = ( \lcd_controller|Add0~97_sumout\ & ( \lcd_controller|Add0~77_sumout\ & ( ((\lcd_controller|Add0~85_sumout\ & (\lcd_controller|Add0~93_sumout\ & !\lcd_controller|LessThan2~0_combout\))) # 
-- (\lcd_controller|Add0~89_sumout\) ) ) ) # ( !\lcd_controller|Add0~97_sumout\ & ( \lcd_controller|Add0~77_sumout\ & ( \lcd_controller|Add0~89_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110001111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_Add0~85_sumout\,
	datab => \lcd_controller|ALT_INV_Add0~93_sumout\,
	datac => \lcd_controller|ALT_INV_Add0~89_sumout\,
	datad => \lcd_controller|ALT_INV_LessThan2~0_combout\,
	datae => \lcd_controller|ALT_INV_Add0~97_sumout\,
	dataf => \lcd_controller|ALT_INV_Add0~77_sumout\,
	combout => \lcd_controller|LessThan2~1_combout\);

-- Location: LABCELL_X83_Y3_N6
\lcd_controller|LessThan5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan5~0_combout\ = ( \lcd_controller|Add0~101_sumout\ & ( !\lcd_controller|Add0~93_sumout\ & ( (!\lcd_controller|Add0~109_sumout\) # ((!\lcd_controller|Add0~117_sumout\ & (!\lcd_controller|Add0~105_sumout\ & 
-- !\lcd_controller|Add0~113_sumout\))) ) ) ) # ( !\lcd_controller|Add0~101_sumout\ & ( !\lcd_controller|Add0~93_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_Add0~117_sumout\,
	datab => \lcd_controller|ALT_INV_Add0~105_sumout\,
	datac => \lcd_controller|ALT_INV_Add0~113_sumout\,
	datad => \lcd_controller|ALT_INV_Add0~109_sumout\,
	datae => \lcd_controller|ALT_INV_Add0~101_sumout\,
	dataf => \lcd_controller|ALT_INV_Add0~93_sumout\,
	combout => \lcd_controller|LessThan5~0_combout\);

-- Location: LABCELL_X83_Y3_N36
\lcd_controller|LessThan5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan5~1_combout\ = ( \lcd_controller|Add0~77_sumout\ & ( \lcd_controller|LessThan5~0_combout\ & ( (\lcd_controller|Add0~81_sumout\ & ((\lcd_controller|Add0~89_sumout\) # (\lcd_controller|Add0~85_sumout\))) ) ) ) # ( 
-- \lcd_controller|Add0~77_sumout\ & ( !\lcd_controller|LessThan5~0_combout\ & ( (\lcd_controller|Add0~81_sumout\ & (((\lcd_controller|Add0~97_sumout\) # (\lcd_controller|Add0~89_sumout\)) # (\lcd_controller|Add0~85_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100110011001100000000000000000001001100010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_Add0~85_sumout\,
	datab => \lcd_controller|ALT_INV_Add0~81_sumout\,
	datac => \lcd_controller|ALT_INV_Add0~89_sumout\,
	datad => \lcd_controller|ALT_INV_Add0~97_sumout\,
	datae => \lcd_controller|ALT_INV_Add0~77_sumout\,
	dataf => \lcd_controller|ALT_INV_LessThan5~0_combout\,
	combout => \lcd_controller|LessThan5~1_combout\);

-- Location: MLABCELL_X84_Y4_N0
\lcd_controller|LessThan6~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan6~4_combout\ = ( !\lcd_controller|Add0~117_sumout\ & ( !\lcd_controller|Add0~113_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \lcd_controller|ALT_INV_Add0~117_sumout\,
	dataf => \lcd_controller|ALT_INV_Add0~113_sumout\,
	combout => \lcd_controller|LessThan6~4_combout\);

-- Location: LABCELL_X83_Y4_N24
\lcd_controller|LessThan1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan1~1_combout\ = ( \lcd_controller|Add0~97_sumout\ & ( (\lcd_controller|Add0~105_sumout\ & (\lcd_controller|Add0~109_sumout\ & (\lcd_controller|Add0~93_sumout\ & \lcd_controller|Add0~101_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_Add0~105_sumout\,
	datab => \lcd_controller|ALT_INV_Add0~109_sumout\,
	datac => \lcd_controller|ALT_INV_Add0~93_sumout\,
	datad => \lcd_controller|ALT_INV_Add0~101_sumout\,
	dataf => \lcd_controller|ALT_INV_Add0~97_sumout\,
	combout => \lcd_controller|LessThan1~1_combout\);

-- Location: LABCELL_X83_Y4_N6
\lcd_controller|LessThan1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan1~2_combout\ = ( \lcd_controller|LessThan6~4_combout\ & ( \lcd_controller|LessThan1~1_combout\ & ( (!\lcd_controller|Add0~81_sumout\ & (!\lcd_controller|Add0~85_sumout\ & (!\lcd_controller|Add0~89_sumout\ & 
-- !\lcd_controller|Add0~77_sumout\))) ) ) ) # ( \lcd_controller|LessThan6~4_combout\ & ( !\lcd_controller|LessThan1~1_combout\ & ( (!\lcd_controller|Add0~81_sumout\ & (!\lcd_controller|Add0~85_sumout\ & (!\lcd_controller|Add0~89_sumout\ & 
-- !\lcd_controller|Add0~77_sumout\))) ) ) ) # ( !\lcd_controller|LessThan6~4_combout\ & ( !\lcd_controller|LessThan1~1_combout\ & ( (!\lcd_controller|Add0~81_sumout\ & (!\lcd_controller|Add0~85_sumout\ & (!\lcd_controller|Add0~89_sumout\ & 
-- !\lcd_controller|Add0~77_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_Add0~81_sumout\,
	datab => \lcd_controller|ALT_INV_Add0~85_sumout\,
	datac => \lcd_controller|ALT_INV_Add0~89_sumout\,
	datad => \lcd_controller|ALT_INV_Add0~77_sumout\,
	datae => \lcd_controller|ALT_INV_LessThan6~4_combout\,
	dataf => \lcd_controller|ALT_INV_LessThan1~1_combout\,
	combout => \lcd_controller|LessThan1~2_combout\);

-- Location: LABCELL_X83_Y4_N27
\lcd_controller|LessThan3~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan3~6_combout\ = ( \lcd_controller|Add0~113_sumout\ & ( (!\lcd_controller|Add0~101_sumout\ & ((!\lcd_controller|Add0~109_sumout\) # ((!\lcd_controller|Add0~105_sumout\ & !\lcd_controller|Add0~117_sumout\)))) ) ) # ( 
-- !\lcd_controller|Add0~113_sumout\ & ( (!\lcd_controller|Add0~101_sumout\ & ((!\lcd_controller|Add0~105_sumout\) # (!\lcd_controller|Add0~109_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110000011100000111000001110000011100000110000001110000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_Add0~105_sumout\,
	datab => \lcd_controller|ALT_INV_Add0~109_sumout\,
	datac => \lcd_controller|ALT_INV_Add0~101_sumout\,
	datad => \lcd_controller|ALT_INV_Add0~117_sumout\,
	dataf => \lcd_controller|ALT_INV_Add0~113_sumout\,
	combout => \lcd_controller|LessThan3~6_combout\);

-- Location: LABCELL_X83_Y4_N30
\lcd_controller|LessThan3~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan3~7_combout\ = ( \lcd_controller|Add0~93_sumout\ & ( \lcd_controller|LessThan3~6_combout\ & ( (\lcd_controller|Add0~85_sumout\ & (\lcd_controller|Add0~89_sumout\ & \lcd_controller|Add0~77_sumout\)) ) ) ) # ( 
-- !\lcd_controller|Add0~93_sumout\ & ( \lcd_controller|LessThan3~6_combout\ & ( (\lcd_controller|Add0~85_sumout\ & (\lcd_controller|Add0~89_sumout\ & \lcd_controller|Add0~77_sumout\)) ) ) ) # ( \lcd_controller|Add0~93_sumout\ & ( 
-- !\lcd_controller|LessThan3~6_combout\ & ( (\lcd_controller|Add0~89_sumout\ & (\lcd_controller|Add0~77_sumout\ & ((\lcd_controller|Add0~97_sumout\) # (\lcd_controller|Add0~85_sumout\)))) ) ) ) # ( !\lcd_controller|Add0~93_sumout\ & ( 
-- !\lcd_controller|LessThan3~6_combout\ & ( (\lcd_controller|Add0~85_sumout\ & (\lcd_controller|Add0~89_sumout\ & \lcd_controller|Add0~77_sumout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000011100000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_Add0~85_sumout\,
	datab => \lcd_controller|ALT_INV_Add0~97_sumout\,
	datac => \lcd_controller|ALT_INV_Add0~89_sumout\,
	datad => \lcd_controller|ALT_INV_Add0~77_sumout\,
	datae => \lcd_controller|ALT_INV_Add0~93_sumout\,
	dataf => \lcd_controller|ALT_INV_LessThan3~6_combout\,
	combout => \lcd_controller|LessThan3~7_combout\);

-- Location: LABCELL_X83_Y3_N54
\lcd_controller|LessThan3~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan3~4_combout\ = ( !\lcd_controller|Add0~65_sumout\ & ( (!\lcd_controller|Add0~69_sumout\ & (!\lcd_controller|Add0~73_sumout\ & !\lcd_controller|Add0~61_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \lcd_controller|ALT_INV_Add0~69_sumout\,
	datac => \lcd_controller|ALT_INV_Add0~73_sumout\,
	datad => \lcd_controller|ALT_INV_Add0~61_sumout\,
	dataf => \lcd_controller|ALT_INV_Add0~65_sumout\,
	combout => \lcd_controller|LessThan3~4_combout\);

-- Location: LABCELL_X83_Y3_N51
\lcd_controller|LessThan3~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan3~13_combout\ = ( !\lcd_controller|Add0~9_sumout\ & ( \lcd_controller|LessThan3~0_combout\ & ( (!\lcd_controller|Add0~29_sumout\ & (!\lcd_controller|Add0~5_sumout\ & (\lcd_controller|LessThan3~4_combout\ & 
-- \lcd_controller|LessThan3~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_Add0~29_sumout\,
	datab => \lcd_controller|ALT_INV_Add0~5_sumout\,
	datac => \lcd_controller|ALT_INV_LessThan3~4_combout\,
	datad => \lcd_controller|ALT_INV_LessThan3~5_combout\,
	datae => \lcd_controller|ALT_INV_Add0~9_sumout\,
	dataf => \lcd_controller|ALT_INV_LessThan3~0_combout\,
	combout => \lcd_controller|LessThan3~13_combout\);

-- Location: LABCELL_X83_Y3_N0
\lcd_controller|clk_count[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|clk_count[1]~0_combout\ = ( \lcd_controller|LessThan3~7_combout\ & ( \lcd_controller|LessThan3~13_combout\ & ( (!\lcd_controller|LessThan5~1_combout\) # (((!\lcd_controller|LessThan2~1_combout\ & !\lcd_controller|Add0~81_sumout\)) # 
-- (\lcd_controller|LessThan1~2_combout\)) ) ) ) # ( !\lcd_controller|LessThan3~7_combout\ & ( \lcd_controller|LessThan3~13_combout\ & ( (!\lcd_controller|Add0~81_sumout\) # ((!\lcd_controller|LessThan5~1_combout\) # (\lcd_controller|LessThan1~2_combout\)) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111100111111111111100011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_LessThan2~1_combout\,
	datab => \lcd_controller|ALT_INV_Add0~81_sumout\,
	datac => \lcd_controller|ALT_INV_LessThan5~1_combout\,
	datad => \lcd_controller|ALT_INV_LessThan1~2_combout\,
	datae => \lcd_controller|ALT_INV_LessThan3~7_combout\,
	dataf => \lcd_controller|ALT_INV_LessThan3~13_combout\,
	combout => \lcd_controller|clk_count[1]~0_combout\);

-- Location: LABCELL_X83_Y4_N48
\lcd_controller|LessThan4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan4~0_combout\ = ( \lcd_controller|Add0~109_sumout\ & ( (!\lcd_controller|Add0~93_sumout\ & ((!\lcd_controller|Add0~101_sumout\) # (!\lcd_controller|Add0~105_sumout\))) ) ) # ( !\lcd_controller|Add0~109_sumout\ & ( 
-- !\lcd_controller|Add0~93_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111100000000001111110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \lcd_controller|ALT_INV_Add0~101_sumout\,
	datac => \lcd_controller|ALT_INV_Add0~105_sumout\,
	datad => \lcd_controller|ALT_INV_Add0~93_sumout\,
	dataf => \lcd_controller|ALT_INV_Add0~109_sumout\,
	combout => \lcd_controller|LessThan4~0_combout\);

-- Location: LABCELL_X83_Y4_N0
\lcd_controller|LessThan4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan4~1_combout\ = ( \lcd_controller|Add0~85_sumout\ & ( \lcd_controller|LessThan4~0_combout\ & ( (\lcd_controller|Add0~81_sumout\ & \lcd_controller|Add0~77_sumout\) ) ) ) # ( !\lcd_controller|Add0~85_sumout\ & ( 
-- \lcd_controller|LessThan4~0_combout\ & ( (\lcd_controller|Add0~81_sumout\ & \lcd_controller|Add0~77_sumout\) ) ) ) # ( \lcd_controller|Add0~85_sumout\ & ( !\lcd_controller|LessThan4~0_combout\ & ( (\lcd_controller|Add0~81_sumout\ & 
-- (((\lcd_controller|Add0~97_sumout\ & \lcd_controller|Add0~89_sumout\)) # (\lcd_controller|Add0~77_sumout\))) ) ) ) # ( !\lcd_controller|Add0~85_sumout\ & ( !\lcd_controller|LessThan4~0_combout\ & ( (\lcd_controller|Add0~81_sumout\ & 
-- \lcd_controller|Add0~77_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000010101010100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_Add0~81_sumout\,
	datab => \lcd_controller|ALT_INV_Add0~97_sumout\,
	datac => \lcd_controller|ALT_INV_Add0~89_sumout\,
	datad => \lcd_controller|ALT_INV_Add0~77_sumout\,
	datae => \lcd_controller|ALT_INV_Add0~85_sumout\,
	dataf => \lcd_controller|ALT_INV_LessThan4~0_combout\,
	combout => \lcd_controller|LessThan4~1_combout\);

-- Location: LABCELL_X83_Y3_N42
\lcd_controller|clk_count[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|clk_count[1]~1_combout\ = ( \lcd_controller|LessThan4~1_combout\ & ( \lcd_controller|LessThan3~13_combout\ & ( (!\lcd_controller|state.send~q\ & ((!\lcd_controller|LessThan0~7_combout\) # (\lcd_controller|state.power_up~q\))) ) ) ) # ( 
-- !\lcd_controller|LessThan4~1_combout\ & ( \lcd_controller|LessThan3~13_combout\ & ( (!\lcd_controller|state.send~q\ & (\lcd_controller|Add0~57_sumout\ & ((!\lcd_controller|LessThan0~7_combout\) # (\lcd_controller|state.power_up~q\)))) ) ) ) # ( 
-- \lcd_controller|LessThan4~1_combout\ & ( !\lcd_controller|LessThan3~13_combout\ & ( (!\lcd_controller|state.send~q\ & ((!\lcd_controller|LessThan0~7_combout\) # (\lcd_controller|state.power_up~q\))) ) ) ) # ( !\lcd_controller|LessThan4~1_combout\ & ( 
-- !\lcd_controller|LessThan3~13_combout\ & ( (!\lcd_controller|state.send~q\ & ((!\lcd_controller|LessThan0~7_combout\) # (\lcd_controller|state.power_up~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000100010101010100010001000001010000000101010101000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_state.send~q\,
	datab => \lcd_controller|ALT_INV_state.power_up~q\,
	datac => \lcd_controller|ALT_INV_Add0~57_sumout\,
	datad => \lcd_controller|ALT_INV_LessThan0~7_combout\,
	datae => \lcd_controller|ALT_INV_LessThan4~1_combout\,
	dataf => \lcd_controller|ALT_INV_LessThan3~13_combout\,
	combout => \lcd_controller|clk_count[1]~1_combout\);

-- Location: MLABCELL_X82_Y3_N54
\lcd_controller|clk_count[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|clk_count[1]~2_combout\ = ( \lcd_controller|clk_count[1]~1_combout\ & ( \lcd_controller|lcd_data[1]~1_combout\ & ( ((!\lcd_controller|lcd_data[1]~2_combout\ & ((!\lcd_controller|clk_count[1]~0_combout\) # 
-- (\lcd_controller|Add0~57_sumout\)))) # (\lcd_controller|clk_count[1]~3_combout\) ) ) ) # ( !\lcd_controller|clk_count[1]~1_combout\ & ( \lcd_controller|lcd_data[1]~1_combout\ & ( \lcd_controller|clk_count[1]~3_combout\ ) ) ) # ( 
-- \lcd_controller|clk_count[1]~1_combout\ & ( !\lcd_controller|lcd_data[1]~1_combout\ & ( \lcd_controller|clk_count[1]~3_combout\ ) ) ) # ( !\lcd_controller|clk_count[1]~1_combout\ & ( !\lcd_controller|lcd_data[1]~1_combout\ & ( 
-- \lcd_controller|clk_count[1]~3_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100111011001110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_lcd_data[1]~2_combout\,
	datab => \lcd_controller|ALT_INV_clk_count[1]~3_combout\,
	datac => \lcd_controller|ALT_INV_clk_count[1]~0_combout\,
	datad => \lcd_controller|ALT_INV_Add0~57_sumout\,
	datae => \lcd_controller|ALT_INV_clk_count[1]~1_combout\,
	dataf => \lcd_controller|ALT_INV_lcd_data[1]~1_combout\,
	combout => \lcd_controller|clk_count[1]~2_combout\);

-- Location: FF_X82_Y4_N1
\lcd_controller|clk_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \lcd_controller|Add0~125_sumout\,
	sclr => \lcd_controller|clk_count[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_controller|clk_count\(0));

-- Location: MLABCELL_X82_Y4_N3
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

-- Location: FF_X82_Y4_N5
\lcd_controller|clk_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \lcd_controller|Add0~121_sumout\,
	sclr => \lcd_controller|clk_count[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_controller|clk_count\(1));

-- Location: MLABCELL_X82_Y4_N6
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

-- Location: FF_X82_Y4_N8
\lcd_controller|clk_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \lcd_controller|Add0~117_sumout\,
	sclr => \lcd_controller|clk_count[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_controller|clk_count\(2));

-- Location: MLABCELL_X82_Y4_N9
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

-- Location: FF_X82_Y4_N11
\lcd_controller|clk_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \lcd_controller|Add0~113_sumout\,
	sclr => \lcd_controller|clk_count[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_controller|clk_count\(3));

-- Location: MLABCELL_X82_Y4_N12
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

-- Location: FF_X82_Y4_N14
\lcd_controller|clk_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \lcd_controller|Add0~105_sumout\,
	sclr => \lcd_controller|clk_count[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_controller|clk_count\(4));

-- Location: MLABCELL_X82_Y4_N15
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

-- Location: FF_X82_Y4_N17
\lcd_controller|clk_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \lcd_controller|Add0~109_sumout\,
	sclr => \lcd_controller|clk_count[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_controller|clk_count\(5));

-- Location: MLABCELL_X82_Y4_N18
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

-- Location: FF_X82_Y4_N20
\lcd_controller|clk_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \lcd_controller|Add0~101_sumout\,
	sclr => \lcd_controller|clk_count[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_controller|clk_count\(6));

-- Location: MLABCELL_X82_Y4_N21
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

-- Location: FF_X82_Y4_N23
\lcd_controller|clk_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \lcd_controller|Add0~93_sumout\,
	sclr => \lcd_controller|clk_count[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_controller|clk_count\(7));

-- Location: MLABCELL_X82_Y4_N24
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

-- Location: FF_X82_Y4_N26
\lcd_controller|clk_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \lcd_controller|Add0~97_sumout\,
	sclr => \lcd_controller|clk_count[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_controller|clk_count\(8));

-- Location: MLABCELL_X82_Y4_N27
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

-- Location: FF_X82_Y4_N29
\lcd_controller|clk_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \lcd_controller|Add0~85_sumout\,
	sclr => \lcd_controller|clk_count[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_controller|clk_count\(9));

-- Location: MLABCELL_X82_Y4_N30
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

-- Location: FF_X82_Y4_N32
\lcd_controller|clk_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \lcd_controller|Add0~89_sumout\,
	sclr => \lcd_controller|clk_count[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_controller|clk_count\(10));

-- Location: MLABCELL_X82_Y4_N33
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

-- Location: FF_X82_Y4_N35
\lcd_controller|clk_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \lcd_controller|Add0~77_sumout\,
	sclr => \lcd_controller|clk_count[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_controller|clk_count\(11));

-- Location: MLABCELL_X82_Y4_N36
\lcd_controller|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Add0~81_sumout\ = SUM(( \lcd_controller|clk_count\(12) ) + ( GND ) + ( \lcd_controller|Add0~78\ ))
-- \lcd_controller|Add0~82\ = CARRY(( \lcd_controller|clk_count\(12) ) + ( GND ) + ( \lcd_controller|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \lcd_controller|ALT_INV_clk_count\(12),
	cin => \lcd_controller|Add0~78\,
	sumout => \lcd_controller|Add0~81_sumout\,
	cout => \lcd_controller|Add0~82\);

-- Location: FF_X82_Y4_N38
\lcd_controller|clk_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \lcd_controller|Add0~81_sumout\,
	sclr => \lcd_controller|clk_count[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_controller|clk_count\(12));

-- Location: MLABCELL_X82_Y4_N39
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

-- Location: FF_X82_Y4_N41
\lcd_controller|clk_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \lcd_controller|Add0~69_sumout\,
	sclr => \lcd_controller|clk_count[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_controller|clk_count\(13));

-- Location: MLABCELL_X82_Y4_N42
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

-- Location: FF_X82_Y4_N44
\lcd_controller|clk_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \lcd_controller|Add0~73_sumout\,
	sclr => \lcd_controller|clk_count[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_controller|clk_count\(14));

-- Location: MLABCELL_X82_Y4_N45
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

-- Location: FF_X82_Y4_N47
\lcd_controller|clk_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \lcd_controller|Add0~61_sumout\,
	sclr => \lcd_controller|clk_count[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_controller|clk_count\(15));

-- Location: MLABCELL_X82_Y4_N48
\lcd_controller|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Add0~65_sumout\ = SUM(( \lcd_controller|clk_count\(16) ) + ( GND ) + ( \lcd_controller|Add0~62\ ))
-- \lcd_controller|Add0~66\ = CARRY(( \lcd_controller|clk_count\(16) ) + ( GND ) + ( \lcd_controller|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \lcd_controller|ALT_INV_clk_count\(16),
	cin => \lcd_controller|Add0~62\,
	sumout => \lcd_controller|Add0~65_sumout\,
	cout => \lcd_controller|Add0~66\);

-- Location: FF_X82_Y4_N50
\lcd_controller|clk_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \lcd_controller|Add0~65_sumout\,
	sclr => \lcd_controller|clk_count[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_controller|clk_count\(16));

-- Location: MLABCELL_X82_Y4_N51
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

-- Location: FF_X82_Y4_N53
\lcd_controller|clk_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \lcd_controller|Add0~33_sumout\,
	sclr => \lcd_controller|clk_count[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_controller|clk_count\(17));

-- Location: MLABCELL_X82_Y4_N54
\lcd_controller|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Add0~37_sumout\ = SUM(( \lcd_controller|clk_count\(18) ) + ( GND ) + ( \lcd_controller|Add0~34\ ))
-- \lcd_controller|Add0~38\ = CARRY(( \lcd_controller|clk_count\(18) ) + ( GND ) + ( \lcd_controller|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \lcd_controller|ALT_INV_clk_count\(18),
	cin => \lcd_controller|Add0~34\,
	sumout => \lcd_controller|Add0~37_sumout\,
	cout => \lcd_controller|Add0~38\);

-- Location: FF_X82_Y4_N56
\lcd_controller|clk_count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \lcd_controller|Add0~37_sumout\,
	sclr => \lcd_controller|clk_count[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_controller|clk_count\(18));

-- Location: MLABCELL_X82_Y4_N57
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

-- Location: FF_X82_Y4_N59
\lcd_controller|clk_count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \lcd_controller|Add0~41_sumout\,
	sclr => \lcd_controller|clk_count[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_controller|clk_count\(19));

-- Location: FF_X82_Y3_N56
\lcd_controller|clk_count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \lcd_controller|Add0~45_sumout\,
	sclr => \lcd_controller|clk_count[1]~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_controller|clk_count\(20));

-- Location: MLABCELL_X82_Y5_N3
\lcd_controller|LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan0~3_combout\ = ( !\lcd_controller|clk_count\(19) & ( !\lcd_controller|clk_count\(20) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_clk_count\(20),
	dataf => \lcd_controller|ALT_INV_clk_count\(19),
	combout => \lcd_controller|LessThan0~3_combout\);

-- Location: MLABCELL_X82_Y5_N45
\lcd_controller|LessThan0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan0~4_combout\ = ( \lcd_controller|clk_count\(18) & ( \lcd_controller|clk_count\(17) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_clk_count\(17),
	dataf => \lcd_controller|ALT_INV_clk_count\(18),
	combout => \lcd_controller|LessThan0~4_combout\);

-- Location: MLABCELL_X82_Y5_N36
\lcd_controller|LessThan0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan0~6_combout\ = ( \lcd_controller|LessThan0~5_combout\ & ( \lcd_controller|LessThan9~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \lcd_controller|ALT_INV_LessThan9~0_combout\,
	dataf => \lcd_controller|ALT_INV_LessThan0~5_combout\,
	combout => \lcd_controller|LessThan0~6_combout\);

-- Location: LABCELL_X81_Y5_N27
\lcd_controller|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan0~0_combout\ = ( \lcd_controller|clk_count\(7) & ( !\lcd_controller|clk_count\(9) & ( (!\lcd_controller|clk_count\(8)) # ((!\lcd_controller|clk_count\(6) & !\lcd_controller|clk_count\(5))) ) ) ) # ( !\lcd_controller|clk_count\(7) & 
-- ( !\lcd_controller|clk_count\(9) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111110101111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_clk_count\(6),
	datac => \lcd_controller|ALT_INV_clk_count\(8),
	datad => \lcd_controller|ALT_INV_clk_count\(5),
	datae => \lcd_controller|ALT_INV_clk_count\(7),
	dataf => \lcd_controller|ALT_INV_clk_count\(9),
	combout => \lcd_controller|LessThan0~0_combout\);

-- Location: MLABCELL_X82_Y5_N6
\lcd_controller|LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan0~2_combout\ = ( \lcd_controller|LessThan0~0_combout\ & ( \lcd_controller|LessThan0~1_combout\ & ( (!\lcd_controller|clk_count\(13)) # ((!\lcd_controller|clk_count\(12) & !\lcd_controller|clk_count\(11))) ) ) ) # ( 
-- !\lcd_controller|LessThan0~0_combout\ & ( \lcd_controller|LessThan0~1_combout\ & ( (!\lcd_controller|clk_count\(13)) # ((!\lcd_controller|clk_count\(12) & (!\lcd_controller|clk_count\(11) & !\lcd_controller|clk_count\(10)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111000111100001111100011111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_clk_count\(12),
	datab => \lcd_controller|ALT_INV_clk_count\(11),
	datac => \lcd_controller|ALT_INV_clk_count\(13),
	datad => \lcd_controller|ALT_INV_clk_count\(10),
	datae => \lcd_controller|ALT_INV_LessThan0~0_combout\,
	dataf => \lcd_controller|ALT_INV_LessThan0~1_combout\,
	combout => \lcd_controller|LessThan0~2_combout\);

-- Location: MLABCELL_X82_Y5_N51
\lcd_controller|LessThan0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan0~7_combout\ = ( \lcd_controller|LessThan0~6_combout\ & ( \lcd_controller|LessThan0~2_combout\ & ( ((!\lcd_controller|clk_count\(21)) # (\lcd_controller|clk_count\(31))) # (\lcd_controller|LessThan0~3_combout\) ) ) ) # ( 
-- !\lcd_controller|LessThan0~6_combout\ & ( \lcd_controller|LessThan0~2_combout\ & ( \lcd_controller|clk_count\(31) ) ) ) # ( \lcd_controller|LessThan0~6_combout\ & ( !\lcd_controller|LessThan0~2_combout\ & ( (!\lcd_controller|clk_count\(21)) # 
-- (((\lcd_controller|LessThan0~3_combout\ & !\lcd_controller|LessThan0~4_combout\)) # (\lcd_controller|clk_count\(31))) ) ) ) # ( !\lcd_controller|LessThan0~6_combout\ & ( !\lcd_controller|LessThan0~2_combout\ & ( \lcd_controller|clk_count\(31) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111111101001111111100000000111111111111010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_LessThan0~3_combout\,
	datab => \lcd_controller|ALT_INV_LessThan0~4_combout\,
	datac => \lcd_controller|ALT_INV_clk_count\(21),
	datad => \lcd_controller|ALT_INV_clk_count\(31),
	datae => \lcd_controller|ALT_INV_LessThan0~6_combout\,
	dataf => \lcd_controller|ALT_INV_LessThan0~2_combout\,
	combout => \lcd_controller|LessThan0~7_combout\);

-- Location: LABCELL_X81_Y4_N48
\lcd_controller|rs~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|rs~1_combout\ = ( \lcd_controller|LessThan0~7_combout\ & ( \lcd_controller|state.power_up~q\ ) ) # ( !\lcd_controller|LessThan0~7_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \lcd_controller|ALT_INV_state.power_up~q\,
	dataf => \lcd_controller|ALT_INV_LessThan0~7_combout\,
	combout => \lcd_controller|rs~1_combout\);

-- Location: FF_X81_Y4_N49
\lcd_controller|state.power_up\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \lcd_controller|rs~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_controller|state.power_up~q\);

-- Location: LABCELL_X81_Y5_N30
\lcd_controller|lcd_data[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|lcd_data[1]~0_combout\ = ( !\lcd_controller|state.send~q\ & ( \lcd_controller|LessThan0~7_combout\ & ( \lcd_controller|state.power_up~q\ ) ) ) # ( !\lcd_controller|state.send~q\ & ( !\lcd_controller|LessThan0~7_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \lcd_controller|ALT_INV_state.power_up~q\,
	datae => \lcd_controller|ALT_INV_state.send~q\,
	dataf => \lcd_controller|ALT_INV_LessThan0~7_combout\,
	combout => \lcd_controller|lcd_data[1]~0_combout\);

-- Location: LABCELL_X80_Y7_N24
\main_fsm|lcd_bus[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \main_fsm|lcd_bus[4]~feeder_combout\ = ( \main_fsm|state.PRSD_MSG~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \main_fsm|ALT_INV_state.PRSD_MSG~q\,
	combout => \main_fsm|lcd_bus[4]~feeder_combout\);

-- Location: MLABCELL_X82_Y7_N36
\main_fsm|Selector50~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \main_fsm|Selector50~0_combout\ = ( \main_fsm|state.DISPL_CLEAR~q\ ) # ( !\main_fsm|state.DISPL_CLEAR~q\ & ( \main_fsm|state.PRSD_MSG~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \main_fsm|ALT_INV_state.PRSD_MSG~q\,
	dataf => \main_fsm|ALT_INV_state.DISPL_CLEAR~q\,
	combout => \main_fsm|Selector50~0_combout\);

-- Location: FF_X80_Y7_N26
\main_fsm|lcd_bus[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \main_fsm|lcd_bus[4]~feeder_combout\,
	ena => \main_fsm|Selector50~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_fsm|lcd_bus\(4));

-- Location: LABCELL_X81_Y4_N12
\lcd_controller|rs~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|rs~0_combout\ = ( \lcd_controller|rs~q\ & ( \main_fsm|lcd_bus\(4) & ( (!\lcd_controller|lcd_data[1]~0_combout\) # (((\lcd_controller|state.ready~q\ & \main_fsm|lcd_enable~DUPLICATE_q\)) # (\lcd_controller|state.initialize~DUPLICATE_q\)) ) 
-- ) ) # ( !\lcd_controller|rs~q\ & ( \main_fsm|lcd_bus\(4) & ( (\lcd_controller|lcd_data[1]~0_combout\ & (\lcd_controller|state.ready~q\ & (\main_fsm|lcd_enable~DUPLICATE_q\ & !\lcd_controller|state.initialize~DUPLICATE_q\))) ) ) ) # ( \lcd_controller|rs~q\ 
-- & ( !\main_fsm|lcd_bus\(4) & ( (!\lcd_controller|lcd_data[1]~0_combout\) # (\lcd_controller|state.initialize~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101111111100000001000000001010101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_lcd_data[1]~0_combout\,
	datab => \lcd_controller|ALT_INV_state.ready~q\,
	datac => \main_fsm|ALT_INV_lcd_enable~DUPLICATE_q\,
	datad => \lcd_controller|ALT_INV_state.initialize~DUPLICATE_q\,
	datae => \lcd_controller|ALT_INV_rs~q\,
	dataf => \main_fsm|ALT_INV_lcd_bus\(4),
	combout => \lcd_controller|rs~0_combout\);

-- Location: FF_X81_Y4_N13
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

-- Location: MLABCELL_X84_Y3_N18
\lcd_controller|LessThan3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan3~1_combout\ = ( !\lcd_controller|Add0~29_sumout\ & ( \lcd_controller|LessThan3~0_combout\ & ( (!\lcd_controller|Add0~13_sumout\ & (!\lcd_controller|Add0~17_sumout\ & (!\lcd_controller|Add0~25_sumout\ & 
-- !\lcd_controller|Add0~21_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_Add0~13_sumout\,
	datab => \lcd_controller|ALT_INV_Add0~17_sumout\,
	datac => \lcd_controller|ALT_INV_Add0~25_sumout\,
	datad => \lcd_controller|ALT_INV_Add0~21_sumout\,
	datae => \lcd_controller|ALT_INV_Add0~29_sumout\,
	dataf => \lcd_controller|ALT_INV_LessThan3~0_combout\,
	combout => \lcd_controller|LessThan3~1_combout\);

-- Location: MLABCELL_X84_Y3_N48
\lcd_controller|Selector46~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Selector46~1_combout\ = ( \lcd_controller|busy~2_combout\ & ( \lcd_controller|LessThan8~2_combout\ & ( (!\lcd_controller|e~q\ & (((!\lcd_controller|LessThan3~1_combout\) # (\lcd_controller|Add0~57_sumout\)) # 
-- (\lcd_controller|LessThan7~1_combout\))) ) ) ) # ( !\lcd_controller|busy~2_combout\ & ( \lcd_controller|LessThan8~2_combout\ & ( !\lcd_controller|e~q\ ) ) ) # ( \lcd_controller|busy~2_combout\ & ( !\lcd_controller|LessThan8~2_combout\ & ( 
-- (!\lcd_controller|LessThan3~1_combout\ & (((!\lcd_controller|e~q\)))) # (\lcd_controller|LessThan3~1_combout\ & ((!\lcd_controller|Add0~57_sumout\ & (\lcd_controller|LessThan7~1_combout\)) # (\lcd_controller|Add0~57_sumout\ & ((!\lcd_controller|e~q\))))) 
-- ) ) ) # ( !\lcd_controller|busy~2_combout\ & ( !\lcd_controller|LessThan8~2_combout\ & ( !\lcd_controller|e~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110001011100110011001100110011001100010011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_LessThan7~1_combout\,
	datab => \lcd_controller|ALT_INV_e~q\,
	datac => \lcd_controller|ALT_INV_LessThan3~1_combout\,
	datad => \lcd_controller|ALT_INV_Add0~57_sumout\,
	datae => \lcd_controller|ALT_INV_busy~2_combout\,
	dataf => \lcd_controller|ALT_INV_LessThan8~2_combout\,
	combout => \lcd_controller|Selector46~1_combout\);

-- Location: FF_X79_Y3_N40
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

-- Location: LABCELL_X83_Y3_N57
\lcd_controller|Selector46~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Selector46~0_combout\ = (\lcd_controller|state.initialize~q\ & (\lcd_controller|Add0~1_sumout\ & !\lcd_controller|state.send~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000000000101000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_state.initialize~q\,
	datac => \lcd_controller|ALT_INV_Add0~1_sumout\,
	datad => \lcd_controller|ALT_INV_state.send~q\,
	combout => \lcd_controller|Selector46~0_combout\);

-- Location: MLABCELL_X82_Y6_N30
\lcd_controller|LessThan12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan12~0_combout\ = ( !\lcd_controller|clk_count\(3) & ( !\lcd_controller|clk_count\(4) & ( (!\lcd_controller|clk_count\(5) & ((!\lcd_controller|clk_count\(2)) # (!\lcd_controller|clk_count\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000010100000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_clk_count\(2),
	datac => \lcd_controller|ALT_INV_clk_count\(5),
	datad => \lcd_controller|ALT_INV_clk_count\(1),
	datae => \lcd_controller|ALT_INV_clk_count\(3),
	dataf => \lcd_controller|ALT_INV_clk_count\(4),
	combout => \lcd_controller|LessThan12~0_combout\);

-- Location: LABCELL_X81_Y4_N51
\lcd_controller|LessThan12~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan12~1_combout\ = ( \lcd_controller|LessThan12~0_combout\ & ( (!\lcd_controller|clk_count\(9) & ((!\lcd_controller|clk_count\(7)) # (!\lcd_controller|clk_count\(8)))) ) ) # ( !\lcd_controller|LessThan12~0_combout\ & ( 
-- (!\lcd_controller|clk_count\(9) & ((!\lcd_controller|clk_count\(8)) # ((!\lcd_controller|clk_count\(7) & !\lcd_controller|clk_count\(6))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100000000000111110000000000011111010000000001111101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_clk_count\(7),
	datab => \lcd_controller|ALT_INV_clk_count\(6),
	datac => \lcd_controller|ALT_INV_clk_count\(8),
	datad => \lcd_controller|ALT_INV_clk_count\(9),
	dataf => \lcd_controller|ALT_INV_LessThan12~0_combout\,
	combout => \lcd_controller|LessThan12~1_combout\);

-- Location: LABCELL_X81_Y4_N6
\lcd_controller|Selector46~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Selector46~5_combout\ = ( \lcd_controller|LessThan9~6_combout\ & ( \lcd_controller|LessThan9~2_combout\ & ( (!\lcd_controller|clk_count\(11) & ((!\lcd_controller|clk_count\(10)) # (\lcd_controller|LessThan12~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001101000011010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_LessThan12~1_combout\,
	datab => \lcd_controller|ALT_INV_clk_count\(10),
	datac => \lcd_controller|ALT_INV_clk_count\(11),
	datae => \lcd_controller|ALT_INV_LessThan9~6_combout\,
	dataf => \lcd_controller|ALT_INV_LessThan9~2_combout\,
	combout => \lcd_controller|Selector46~5_combout\);

-- Location: MLABCELL_X82_Y6_N39
\lcd_controller|LessThan10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan10~0_combout\ = ( \lcd_controller|clk_count\(4) & ( (\lcd_controller|clk_count\(5) & (((\lcd_controller|clk_count\(2)) # (\lcd_controller|clk_count\(1))) # (\lcd_controller|clk_count\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000011111110000000001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_clk_count\(3),
	datab => \lcd_controller|ALT_INV_clk_count\(1),
	datac => \lcd_controller|ALT_INV_clk_count\(2),
	datad => \lcd_controller|ALT_INV_clk_count\(5),
	dataf => \lcd_controller|ALT_INV_clk_count\(4),
	combout => \lcd_controller|LessThan10~0_combout\);

-- Location: LABCELL_X81_Y4_N18
\lcd_controller|LessThan10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan10~1_combout\ = ( !\lcd_controller|LessThan10~0_combout\ & ( !\lcd_controller|clk_count\(9) & ( (!\lcd_controller|clk_count\(6) & (!\lcd_controller|clk_count\(7) & !\lcd_controller|clk_count\(8))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \lcd_controller|ALT_INV_clk_count\(6),
	datac => \lcd_controller|ALT_INV_clk_count\(7),
	datad => \lcd_controller|ALT_INV_clk_count\(8),
	datae => \lcd_controller|ALT_INV_LessThan10~0_combout\,
	dataf => \lcd_controller|ALT_INV_clk_count\(9),
	combout => \lcd_controller|LessThan10~1_combout\);

-- Location: MLABCELL_X82_Y6_N9
\lcd_controller|LessThan11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan11~0_combout\ = ( \lcd_controller|clk_count\(5) & ( \lcd_controller|clk_count\(4) & ( (\lcd_controller|clk_count\(2) & \lcd_controller|clk_count\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_clk_count\(2),
	datad => \lcd_controller|ALT_INV_clk_count\(3),
	datae => \lcd_controller|ALT_INV_clk_count\(5),
	dataf => \lcd_controller|ALT_INV_clk_count\(4),
	combout => \lcd_controller|LessThan11~0_combout\);

-- Location: LABCELL_X81_Y5_N39
\lcd_controller|LessThan11~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan11~1_combout\ = ( \lcd_controller|clk_count\(7) & ( \lcd_controller|LessThan11~0_combout\ & ( \lcd_controller|clk_count\(9) ) ) ) # ( !\lcd_controller|clk_count\(7) & ( \lcd_controller|LessThan11~0_combout\ & ( 
-- (\lcd_controller|clk_count\(8) & \lcd_controller|clk_count\(9)) ) ) ) # ( \lcd_controller|clk_count\(7) & ( !\lcd_controller|LessThan11~0_combout\ & ( (\lcd_controller|clk_count\(9) & ((\lcd_controller|clk_count\(8)) # (\lcd_controller|clk_count\(6)))) ) 
-- ) ) # ( !\lcd_controller|clk_count\(7) & ( !\lcd_controller|LessThan11~0_combout\ & ( (\lcd_controller|clk_count\(8) & \lcd_controller|clk_count\(9)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000101111100000000000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_clk_count\(6),
	datac => \lcd_controller|ALT_INV_clk_count\(8),
	datad => \lcd_controller|ALT_INV_clk_count\(9),
	datae => \lcd_controller|ALT_INV_clk_count\(7),
	dataf => \lcd_controller|ALT_INV_LessThan11~0_combout\,
	combout => \lcd_controller|LessThan11~1_combout\);

-- Location: LABCELL_X81_Y4_N24
\lcd_controller|Selector46~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Selector46~6_combout\ = ( \lcd_controller|LessThan9~6_combout\ & ( \lcd_controller|LessThan9~2_combout\ & ( (!\lcd_controller|clk_count\(11) & (!\lcd_controller|clk_count\(10) & (!\lcd_controller|LessThan10~1_combout\ & 
-- !\lcd_controller|LessThan11~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_clk_count\(11),
	datab => \lcd_controller|ALT_INV_clk_count\(10),
	datac => \lcd_controller|ALT_INV_LessThan10~1_combout\,
	datad => \lcd_controller|ALT_INV_LessThan11~1_combout\,
	datae => \lcd_controller|ALT_INV_LessThan9~6_combout\,
	dataf => \lcd_controller|ALT_INV_LessThan9~2_combout\,
	combout => \lcd_controller|Selector46~6_combout\);

-- Location: LABCELL_X81_Y4_N30
\lcd_controller|Selector46~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Selector46~7_combout\ = ( \lcd_controller|state.send~q\ & ( \lcd_controller|Selector46~6_combout\ & ( !\lcd_controller|clk_count\(31) ) ) ) # ( !\lcd_controller|state.send~q\ & ( \lcd_controller|Selector46~6_combout\ & ( 
-- (!\lcd_controller|state.initialize~DUPLICATE_q\ & \lcd_controller|e~q\) ) ) ) # ( \lcd_controller|state.send~q\ & ( !\lcd_controller|Selector46~6_combout\ & ( (\lcd_controller|e~q\ & (!\lcd_controller|clk_count\(31) & 
-- !\lcd_controller|Selector46~5_combout\)) ) ) ) # ( !\lcd_controller|state.send~q\ & ( !\lcd_controller|Selector46~6_combout\ & ( (!\lcd_controller|state.initialize~DUPLICATE_q\ & \lcd_controller|e~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001100000000000000100010001000101111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_state.initialize~DUPLICATE_q\,
	datab => \lcd_controller|ALT_INV_e~q\,
	datac => \lcd_controller|ALT_INV_clk_count\(31),
	datad => \lcd_controller|ALT_INV_Selector46~5_combout\,
	datae => \lcd_controller|ALT_INV_state.send~q\,
	dataf => \lcd_controller|ALT_INV_Selector46~6_combout\,
	combout => \lcd_controller|Selector46~7_combout\);

-- Location: MLABCELL_X84_Y3_N36
\lcd_controller|busy~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|busy~3_combout\ = ( !\lcd_controller|LessThan6~3_combout\ & ( \lcd_controller|LessThan3~5_combout\ & ( (\lcd_controller|LessThan3~0_combout\ & (!\lcd_controller|Add0~5_sumout\ & (!\lcd_controller|Add0~29_sumout\ & 
-- !\lcd_controller|Add0~9_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_LessThan3~0_combout\,
	datab => \lcd_controller|ALT_INV_Add0~5_sumout\,
	datac => \lcd_controller|ALT_INV_Add0~29_sumout\,
	datad => \lcd_controller|ALT_INV_Add0~9_sumout\,
	datae => \lcd_controller|ALT_INV_LessThan6~3_combout\,
	dataf => \lcd_controller|ALT_INV_LessThan3~5_combout\,
	combout => \lcd_controller|busy~3_combout\);

-- Location: MLABCELL_X84_Y3_N45
\lcd_controller|LessThan2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan2~2_combout\ = ( \lcd_controller|busy~2_combout\ & ( \lcd_controller|LessThan3~3_combout\ & ( (!\lcd_controller|Add0~81_sumout\ & (!\lcd_controller|LessThan2~1_combout\ & (\lcd_controller|LessThan3~4_combout\ & 
-- \lcd_controller|LessThan3~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_Add0~81_sumout\,
	datab => \lcd_controller|ALT_INV_LessThan2~1_combout\,
	datac => \lcd_controller|ALT_INV_LessThan3~4_combout\,
	datad => \lcd_controller|ALT_INV_LessThan3~0_combout\,
	datae => \lcd_controller|ALT_INV_busy~2_combout\,
	dataf => \lcd_controller|ALT_INV_LessThan3~3_combout\,
	combout => \lcd_controller|LessThan2~2_combout\);

-- Location: LABCELL_X83_Y3_N18
\lcd_controller|LessThan4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan4~2_combout\ = ( !\lcd_controller|Add0~9_sumout\ & ( !\lcd_controller|LessThan4~1_combout\ & ( (\lcd_controller|LessThan3~3_combout\ & (!\lcd_controller|Add0~5_sumout\ & (\lcd_controller|LessThan3~4_combout\ & 
-- \lcd_controller|LessThan3~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_LessThan3~3_combout\,
	datab => \lcd_controller|ALT_INV_Add0~5_sumout\,
	datac => \lcd_controller|ALT_INV_LessThan3~4_combout\,
	datad => \lcd_controller|ALT_INV_LessThan3~0_combout\,
	datae => \lcd_controller|ALT_INV_Add0~9_sumout\,
	dataf => \lcd_controller|ALT_INV_LessThan4~1_combout\,
	combout => \lcd_controller|LessThan4~2_combout\);

-- Location: MLABCELL_X84_Y3_N30
\lcd_controller|Selector46~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Selector46~2_combout\ = ( \lcd_controller|LessThan2~2_combout\ & ( \lcd_controller|LessThan4~2_combout\ & ( (\lcd_controller|state.initialize~DUPLICATE_q\ & (!\lcd_controller|state.send~q\ & \lcd_controller|Add0~57_sumout\)) ) ) ) # ( 
-- !\lcd_controller|LessThan2~2_combout\ & ( \lcd_controller|LessThan4~2_combout\ & ( (\lcd_controller|state.initialize~DUPLICATE_q\ & (!\lcd_controller|state.send~q\ & \lcd_controller|Add0~57_sumout\)) ) ) ) # ( \lcd_controller|LessThan2~2_combout\ & ( 
-- !\lcd_controller|LessThan4~2_combout\ & ( (\lcd_controller|state.initialize~DUPLICATE_q\ & (!\lcd_controller|state.send~q\ & \lcd_controller|Add0~57_sumout\)) ) ) ) # ( !\lcd_controller|LessThan2~2_combout\ & ( !\lcd_controller|LessThan4~2_combout\ & ( 
-- (\lcd_controller|state.initialize~DUPLICATE_q\ & (!\lcd_controller|state.send~q\ & ((!\lcd_controller|busy~3_combout\) # (\lcd_controller|Add0~57_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000100000000000100010000000000010001000000000001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_state.initialize~DUPLICATE_q\,
	datab => \lcd_controller|ALT_INV_state.send~q\,
	datac => \lcd_controller|ALT_INV_busy~3_combout\,
	datad => \lcd_controller|ALT_INV_Add0~57_sumout\,
	datae => \lcd_controller|ALT_INV_LessThan2~2_combout\,
	dataf => \lcd_controller|ALT_INV_LessThan4~2_combout\,
	combout => \lcd_controller|Selector46~2_combout\);

-- Location: LABCELL_X83_Y3_N21
\lcd_controller|LessThan5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan5~2_combout\ = ( !\lcd_controller|Add0~9_sumout\ & ( !\lcd_controller|LessThan5~1_combout\ & ( (\lcd_controller|LessThan3~3_combout\ & (!\lcd_controller|Add0~5_sumout\ & (\lcd_controller|LessThan3~0_combout\ & 
-- \lcd_controller|LessThan3~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_LessThan3~3_combout\,
	datab => \lcd_controller|ALT_INV_Add0~5_sumout\,
	datac => \lcd_controller|ALT_INV_LessThan3~0_combout\,
	datad => \lcd_controller|ALT_INV_LessThan3~4_combout\,
	datae => \lcd_controller|ALT_INV_Add0~9_sumout\,
	dataf => \lcd_controller|ALT_INV_LessThan5~1_combout\,
	combout => \lcd_controller|LessThan5~2_combout\);

-- Location: MLABCELL_X84_Y3_N54
\lcd_controller|Selector46~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Selector46~4_combout\ = ( !\lcd_controller|LessThan2~2_combout\ & ( !\lcd_controller|LessThan4~2_combout\ & ( (\lcd_controller|state.initialize~DUPLICATE_q\ & (!\lcd_controller|state.send~q\ & (\lcd_controller|LessThan5~2_combout\ & 
-- !\lcd_controller|Add0~57_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_state.initialize~DUPLICATE_q\,
	datab => \lcd_controller|ALT_INV_state.send~q\,
	datac => \lcd_controller|ALT_INV_LessThan5~2_combout\,
	datad => \lcd_controller|ALT_INV_Add0~57_sumout\,
	datae => \lcd_controller|ALT_INV_LessThan2~2_combout\,
	dataf => \lcd_controller|ALT_INV_LessThan4~2_combout\,
	combout => \lcd_controller|Selector46~4_combout\);

-- Location: MLABCELL_X84_Y3_N0
\lcd_controller|LessThan3~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan3~8_combout\ = ( \lcd_controller|busy~2_combout\ & ( \lcd_controller|LessThan3~3_combout\ & ( (!\lcd_controller|Add0~81_sumout\ & (\lcd_controller|LessThan3~4_combout\ & (\lcd_controller|LessThan3~0_combout\ & 
-- !\lcd_controller|LessThan3~7_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_Add0~81_sumout\,
	datab => \lcd_controller|ALT_INV_LessThan3~4_combout\,
	datac => \lcd_controller|ALT_INV_LessThan3~0_combout\,
	datad => \lcd_controller|ALT_INV_LessThan3~7_combout\,
	datae => \lcd_controller|ALT_INV_busy~2_combout\,
	dataf => \lcd_controller|ALT_INV_LessThan3~3_combout\,
	combout => \lcd_controller|LessThan3~8_combout\);

-- Location: MLABCELL_X84_Y3_N6
\lcd_controller|LessThan1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan1~3_combout\ = ( \lcd_controller|LessThan1~2_combout\ & ( \lcd_controller|LessThan3~3_combout\ & ( (\lcd_controller|LessThan3~0_combout\ & (\lcd_controller|LessThan3~4_combout\ & (!\lcd_controller|Add0~5_sumout\ & 
-- !\lcd_controller|Add0~9_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_LessThan3~0_combout\,
	datab => \lcd_controller|ALT_INV_LessThan3~4_combout\,
	datac => \lcd_controller|ALT_INV_Add0~5_sumout\,
	datad => \lcd_controller|ALT_INV_Add0~9_sumout\,
	datae => \lcd_controller|ALT_INV_LessThan1~2_combout\,
	dataf => \lcd_controller|ALT_INV_LessThan3~3_combout\,
	combout => \lcd_controller|LessThan1~3_combout\);

-- Location: MLABCELL_X84_Y3_N24
\lcd_controller|Selector46~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Selector46~3_combout\ = ( \lcd_controller|LessThan2~2_combout\ & ( \lcd_controller|LessThan1~3_combout\ & ( (\lcd_controller|state.initialize~DUPLICATE_q\ & (!\lcd_controller|state.send~q\ & !\lcd_controller|Add0~57_sumout\)) ) ) ) # ( 
-- !\lcd_controller|LessThan2~2_combout\ & ( \lcd_controller|LessThan1~3_combout\ & ( (\lcd_controller|state.initialize~DUPLICATE_q\ & (!\lcd_controller|state.send~q\ & !\lcd_controller|Add0~57_sumout\)) ) ) ) # ( !\lcd_controller|LessThan2~2_combout\ & ( 
-- !\lcd_controller|LessThan1~3_combout\ & ( (\lcd_controller|state.initialize~DUPLICATE_q\ & (!\lcd_controller|state.send~q\ & (\lcd_controller|LessThan3~8_combout\ & !\lcd_controller|Add0~57_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000000000000000001000100000000000100010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_state.initialize~DUPLICATE_q\,
	datab => \lcd_controller|ALT_INV_state.send~q\,
	datac => \lcd_controller|ALT_INV_LessThan3~8_combout\,
	datad => \lcd_controller|ALT_INV_Add0~57_sumout\,
	datae => \lcd_controller|ALT_INV_LessThan2~2_combout\,
	dataf => \lcd_controller|ALT_INV_LessThan1~3_combout\,
	combout => \lcd_controller|Selector46~3_combout\);

-- Location: MLABCELL_X84_Y3_N12
\lcd_controller|Selector46~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Selector46~8_combout\ = ( \lcd_controller|Selector46~4_combout\ & ( \lcd_controller|Selector46~3_combout\ ) ) # ( !\lcd_controller|Selector46~4_combout\ & ( \lcd_controller|Selector46~3_combout\ ) ) # ( 
-- \lcd_controller|Selector46~4_combout\ & ( !\lcd_controller|Selector46~3_combout\ ) ) # ( !\lcd_controller|Selector46~4_combout\ & ( !\lcd_controller|Selector46~3_combout\ & ( (((!\lcd_controller|Selector46~1_combout\ & 
-- \lcd_controller|Selector46~2_combout\)) # (\lcd_controller|Selector46~7_combout\)) # (\lcd_controller|Selector46~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111110111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_Selector46~1_combout\,
	datab => \lcd_controller|ALT_INV_Selector46~0_combout\,
	datac => \lcd_controller|ALT_INV_Selector46~7_combout\,
	datad => \lcd_controller|ALT_INV_Selector46~2_combout\,
	datae => \lcd_controller|ALT_INV_Selector46~4_combout\,
	dataf => \lcd_controller|ALT_INV_Selector46~3_combout\,
	combout => \lcd_controller|Selector46~8_combout\);

-- Location: FF_X84_Y3_N14
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

-- Location: LABCELL_X81_Y4_N54
\lcd_controller|Selector45~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Selector45~1_combout\ = ( \lcd_controller|state.initialize~DUPLICATE_q\ & ( \main_fsm|lcd_enable~DUPLICATE_q\ & ( (!\lcd_controller|state.ready~q\ & (!\lcd_controller|Add0~1_sumout\ & !\lcd_controller|Add0~57_sumout\)) ) ) ) # ( 
-- \lcd_controller|state.initialize~DUPLICATE_q\ & ( !\main_fsm|lcd_enable~DUPLICATE_q\ & ( (!\lcd_controller|Add0~1_sumout\ & !\lcd_controller|Add0~57_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100000000000000000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \lcd_controller|ALT_INV_state.ready~q\,
	datac => \lcd_controller|ALT_INV_Add0~1_sumout\,
	datad => \lcd_controller|ALT_INV_Add0~57_sumout\,
	datae => \lcd_controller|ALT_INV_state.initialize~DUPLICATE_q\,
	dataf => \main_fsm|ALT_INV_lcd_enable~DUPLICATE_q\,
	combout => \lcd_controller|Selector45~1_combout\);

-- Location: LABCELL_X85_Y3_N24
\lcd_controller|LessThan3~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan3~9_combout\ = ( !\lcd_controller|Add0~13_sumout\ & ( !\lcd_controller|Add0~17_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \lcd_controller|ALT_INV_Add0~13_sumout\,
	dataf => \lcd_controller|ALT_INV_Add0~17_sumout\,
	combout => \lcd_controller|LessThan3~9_combout\);

-- Location: LABCELL_X80_Y3_N36
\lcd_controller|busy~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|busy~5_combout\ = ( !\lcd_controller|Add0~25_sumout\ & ( \lcd_controller|LessThan3~9_combout\ & ( (!\lcd_controller|Add0~21_sumout\ & (\lcd_controller|busy~4_combout\ & (\lcd_controller|LessThan3~0_combout\ & 
-- !\lcd_controller|Add0~29_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_Add0~21_sumout\,
	datab => \lcd_controller|ALT_INV_busy~4_combout\,
	datac => \lcd_controller|ALT_INV_LessThan3~0_combout\,
	datad => \lcd_controller|ALT_INV_Add0~29_sumout\,
	datae => \lcd_controller|ALT_INV_Add0~25_sumout\,
	dataf => \lcd_controller|ALT_INV_LessThan3~9_combout\,
	combout => \lcd_controller|busy~5_combout\);

-- Location: MLABCELL_X82_Y7_N48
\main_fsm|Selector51~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \main_fsm|Selector51~0_combout\ = (!\main_fsm|state.PRSD_MSG~q\ & (((\main_fsm|lcd_bus\(0))) # (\main_fsm|state.DISPL_CLEAR~q\))) # (\main_fsm|state.PRSD_MSG~q\ & (((\btn_controller|btn_num\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011111001111010001111100111101000111110011110100011111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \main_fsm|ALT_INV_state.DISPL_CLEAR~q\,
	datab => \main_fsm|ALT_INV_state.PRSD_MSG~q\,
	datac => \btn_controller|ALT_INV_btn_num\(0),
	datad => \main_fsm|ALT_INV_lcd_bus\(0),
	combout => \main_fsm|Selector51~0_combout\);

-- Location: FF_X82_Y7_N17
\main_fsm|lcd_bus[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	asdata => \main_fsm|Selector51~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_fsm|lcd_bus\(0));

-- Location: LABCELL_X81_Y5_N42
\lcd_controller|Selector45~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Selector45~0_combout\ = ( \lcd_controller|state.ready~q\ & ( \main_fsm|lcd_enable~DUPLICATE_q\ & ( \main_fsm|lcd_bus\(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \main_fsm|ALT_INV_lcd_bus\(0),
	datae => \lcd_controller|ALT_INV_state.ready~q\,
	dataf => \main_fsm|ALT_INV_lcd_enable~DUPLICATE_q\,
	combout => \lcd_controller|Selector45~0_combout\);

-- Location: LABCELL_X81_Y4_N42
\lcd_controller|Selector45~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Selector45~2_combout\ = ( \lcd_controller|LessThan5~2_combout\ & ( \lcd_controller|Selector45~0_combout\ ) ) # ( !\lcd_controller|LessThan5~2_combout\ & ( \lcd_controller|Selector45~0_combout\ ) ) # ( \lcd_controller|LessThan5~2_combout\ & 
-- ( !\lcd_controller|Selector45~0_combout\ & ( (\lcd_controller|Selector45~1_combout\ & (!\lcd_controller|busy~5_combout\ & ((!\lcd_controller|LessThan4~2_combout\) # (\lcd_controller|Add0~57_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000000101000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_Selector45~1_combout\,
	datab => \lcd_controller|ALT_INV_LessThan4~2_combout\,
	datac => \lcd_controller|ALT_INV_busy~5_combout\,
	datad => \lcd_controller|ALT_INV_Add0~57_sumout\,
	datae => \lcd_controller|ALT_INV_LessThan5~2_combout\,
	dataf => \lcd_controller|ALT_INV_Selector45~0_combout\,
	combout => \lcd_controller|Selector45~2_combout\);

-- Location: LABCELL_X81_Y3_N18
\lcd_controller|lcd_data[1]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|lcd_data[1]~4_combout\ = ( \lcd_controller|lcd_data[1]~2_combout\ & ( \lcd_controller|lcd_data[1]~0_combout\ ) ) # ( !\lcd_controller|lcd_data[1]~2_combout\ & ( (\lcd_controller|lcd_data[1]~0_combout\ & 
-- ((!\lcd_controller|lcd_data[1]~1_combout\) # (!\lcd_controller|lcd_data[1]~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110000001100110011000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \lcd_controller|ALT_INV_lcd_data[1]~0_combout\,
	datac => \lcd_controller|ALT_INV_lcd_data[1]~1_combout\,
	datad => \lcd_controller|ALT_INV_lcd_data[1]~3_combout\,
	dataf => \lcd_controller|ALT_INV_lcd_data[1]~2_combout\,
	combout => \lcd_controller|lcd_data[1]~4_combout\);

-- Location: FF_X81_Y4_N43
\lcd_controller|lcd_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \lcd_controller|Selector45~2_combout\,
	ena => \lcd_controller|lcd_data[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_controller|lcd_data\(0));

-- Location: LABCELL_X80_Y3_N48
\lcd_controller|Selector44~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Selector44~2_combout\ = ( \lcd_controller|LessThan6~3_combout\ & ( !\lcd_controller|LessThan7~1_combout\ & ( (!\lcd_controller|Add0~57_sumout\ & (\lcd_controller|LessThan3~3_combout\ & (\lcd_controller|busy~2_combout\ & 
-- \lcd_controller|LessThan3~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_Add0~57_sumout\,
	datab => \lcd_controller|ALT_INV_LessThan3~3_combout\,
	datac => \lcd_controller|ALT_INV_busy~2_combout\,
	datad => \lcd_controller|ALT_INV_LessThan3~0_combout\,
	datae => \lcd_controller|ALT_INV_LessThan6~3_combout\,
	dataf => \lcd_controller|ALT_INV_LessThan7~1_combout\,
	combout => \lcd_controller|Selector44~2_combout\);

-- Location: LABCELL_X79_Y3_N12
\lcd_controller|Selector44~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Selector44~3_combout\ = ( \main_fsm|lcd_enable~DUPLICATE_q\ & ( !\lcd_controller|Add0~1_sumout\ & ( (\lcd_controller|state.initialize~DUPLICATE_q\ & !\lcd_controller|state.ready~q\) ) ) ) # ( !\main_fsm|lcd_enable~DUPLICATE_q\ & ( 
-- !\lcd_controller|Add0~1_sumout\ & ( \lcd_controller|state.initialize~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \lcd_controller|ALT_INV_state.initialize~DUPLICATE_q\,
	datac => \lcd_controller|ALT_INV_state.ready~q\,
	datae => \main_fsm|ALT_INV_lcd_enable~DUPLICATE_q\,
	dataf => \lcd_controller|ALT_INV_Add0~1_sumout\,
	combout => \lcd_controller|Selector44~3_combout\);

-- Location: LABCELL_X80_Y3_N0
\lcd_controller|LessThan4~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan4~3_combout\ = ( \lcd_controller|LessThan3~4_combout\ & ( \lcd_controller|busy~2_combout\ & ( (!\lcd_controller|LessThan4~1_combout\ & (\lcd_controller|LessThan3~3_combout\ & (!\lcd_controller|Add0~57_sumout\ & 
-- \lcd_controller|LessThan3~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_LessThan4~1_combout\,
	datab => \lcd_controller|ALT_INV_LessThan3~3_combout\,
	datac => \lcd_controller|ALT_INV_Add0~57_sumout\,
	datad => \lcd_controller|ALT_INV_LessThan3~0_combout\,
	datae => \lcd_controller|ALT_INV_LessThan3~4_combout\,
	dataf => \lcd_controller|ALT_INV_busy~2_combout\,
	combout => \lcd_controller|LessThan4~3_combout\);

-- Location: LABCELL_X80_Y3_N21
\lcd_controller|Selector44~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Selector44~0_combout\ = ( \lcd_controller|LessThan3~4_combout\ & ( \lcd_controller|busy~2_combout\ & ( (!\lcd_controller|Add0~57_sumout\ & (!\lcd_controller|LessThan5~1_combout\ & (\lcd_controller|LessThan3~3_combout\ & 
-- \lcd_controller|LessThan3~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_Add0~57_sumout\,
	datab => \lcd_controller|ALT_INV_LessThan5~1_combout\,
	datac => \lcd_controller|ALT_INV_LessThan3~3_combout\,
	datad => \lcd_controller|ALT_INV_LessThan3~0_combout\,
	datae => \lcd_controller|ALT_INV_LessThan3~4_combout\,
	dataf => \lcd_controller|ALT_INV_busy~2_combout\,
	combout => \lcd_controller|Selector44~0_combout\);

-- Location: LABCELL_X81_Y7_N54
\main_fsm|Selector50~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \main_fsm|Selector50~1_combout\ = ( \main_fsm|state.PRSD_MSG~q\ & ( \btn_controller|btn_num\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \btn_controller|ALT_INV_btn_num\(1),
	dataf => \main_fsm|ALT_INV_state.PRSD_MSG~q\,
	combout => \main_fsm|Selector50~1_combout\);

-- Location: FF_X81_Y7_N56
\main_fsm|lcd_bus[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \main_fsm|Selector50~1_combout\,
	ena => \main_fsm|Selector50~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_fsm|lcd_bus\(1));

-- Location: LABCELL_X80_Y7_N42
\lcd_controller|Selector44~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Selector44~1_combout\ = ( \lcd_controller|state.ready~q\ & ( \main_fsm|lcd_bus\(1) & ( \main_fsm|lcd_enable~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \main_fsm|ALT_INV_lcd_enable~DUPLICATE_q\,
	datae => \lcd_controller|ALT_INV_state.ready~q\,
	dataf => \main_fsm|ALT_INV_lcd_bus\(1),
	combout => \lcd_controller|Selector44~1_combout\);

-- Location: LABCELL_X80_Y3_N24
\lcd_controller|Selector44~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Selector44~4_combout\ = ( \lcd_controller|Selector44~0_combout\ & ( \lcd_controller|Selector44~1_combout\ ) ) # ( !\lcd_controller|Selector44~0_combout\ & ( \lcd_controller|Selector44~1_combout\ ) ) # ( 
-- !\lcd_controller|Selector44~0_combout\ & ( !\lcd_controller|Selector44~1_combout\ & ( (\lcd_controller|Selector44~2_combout\ & (\lcd_controller|Selector44~3_combout\ & (!\lcd_controller|LessThan4~3_combout\ & !\lcd_controller|busy~6_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_Selector44~2_combout\,
	datab => \lcd_controller|ALT_INV_Selector44~3_combout\,
	datac => \lcd_controller|ALT_INV_LessThan4~3_combout\,
	datad => \lcd_controller|ALT_INV_busy~6_combout\,
	datae => \lcd_controller|ALT_INV_Selector44~0_combout\,
	dataf => \lcd_controller|ALT_INV_Selector44~1_combout\,
	combout => \lcd_controller|Selector44~4_combout\);

-- Location: FF_X80_Y3_N25
\lcd_controller|lcd_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \lcd_controller|Selector44~4_combout\,
	ena => \lcd_controller|lcd_data[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_controller|lcd_data\(1));

-- Location: LABCELL_X80_Y3_N6
\lcd_controller|Selector44~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Selector44~5_combout\ = ( \lcd_controller|LessThan3~4_combout\ & ( \lcd_controller|busy~2_combout\ & ( (!\lcd_controller|Add0~57_sumout\ & (\lcd_controller|LessThan3~1_combout\ & ((!\lcd_controller|LessThan4~1_combout\) # 
-- (!\lcd_controller|LessThan5~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_LessThan4~1_combout\,
	datab => \lcd_controller|ALT_INV_LessThan5~1_combout\,
	datac => \lcd_controller|ALT_INV_Add0~57_sumout\,
	datad => \lcd_controller|ALT_INV_LessThan3~1_combout\,
	datae => \lcd_controller|ALT_INV_LessThan3~4_combout\,
	dataf => \lcd_controller|ALT_INV_busy~2_combout\,
	combout => \lcd_controller|Selector44~5_combout\);

-- Location: LABCELL_X80_Y3_N42
\lcd_controller|Selector43~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Selector43~0_combout\ = ( !\lcd_controller|Add0~1_sumout\ & ( \lcd_controller|LessThan1~2_combout\ & ( (!\lcd_controller|LessThan3~4_combout\) # ((!\lcd_controller|LessThan3~3_combout\) # ((!\lcd_controller|busy~2_combout\) # 
-- (!\lcd_controller|LessThan3~0_combout\))) ) ) ) # ( !\lcd_controller|Add0~1_sumout\ & ( !\lcd_controller|LessThan1~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_LessThan3~4_combout\,
	datab => \lcd_controller|ALT_INV_LessThan3~3_combout\,
	datac => \lcd_controller|ALT_INV_busy~2_combout\,
	datad => \lcd_controller|ALT_INV_LessThan3~0_combout\,
	datae => \lcd_controller|ALT_INV_Add0~1_sumout\,
	dataf => \lcd_controller|ALT_INV_LessThan1~2_combout\,
	combout => \lcd_controller|Selector43~0_combout\);

-- Location: LABCELL_X80_Y3_N30
\lcd_controller|Selector43~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Selector43~1_combout\ = ( \lcd_controller|LessThan3~8_combout\ & ( !\lcd_controller|LessThan2~2_combout\ & ( (\lcd_controller|Selector33~0_combout\ & \lcd_controller|Selector43~0_combout\) ) ) ) # ( !\lcd_controller|LessThan3~8_combout\ & 
-- ( !\lcd_controller|LessThan2~2_combout\ & ( (\lcd_controller|Selector44~2_combout\ & (!\lcd_controller|Selector44~5_combout\ & (\lcd_controller|Selector33~0_combout\ & \lcd_controller|Selector43~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_Selector44~2_combout\,
	datab => \lcd_controller|ALT_INV_Selector44~5_combout\,
	datac => \lcd_controller|ALT_INV_Selector33~0_combout\,
	datad => \lcd_controller|ALT_INV_Selector43~0_combout\,
	datae => \lcd_controller|ALT_INV_LessThan3~8_combout\,
	dataf => \lcd_controller|ALT_INV_LessThan2~2_combout\,
	combout => \lcd_controller|Selector43~1_combout\);

-- Location: FF_X80_Y3_N31
\lcd_controller|lcd_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \lcd_controller|Selector43~1_combout\,
	ena => \lcd_controller|lcd_data[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_controller|lcd_data\(2));

-- Location: LABCELL_X81_Y3_N42
\lcd_controller|LessThan3~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan3~12_combout\ = ( !\lcd_controller|Add0~81_sumout\ & ( !\lcd_controller|Add0~9_sumout\ & ( (\lcd_controller|LessThan3~0_combout\ & (!\lcd_controller|Add0~5_sumout\ & (\lcd_controller|LessThan3~4_combout\ & 
-- \lcd_controller|LessThan3~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_LessThan3~0_combout\,
	datab => \lcd_controller|ALT_INV_Add0~5_sumout\,
	datac => \lcd_controller|ALT_INV_LessThan3~4_combout\,
	datad => \lcd_controller|ALT_INV_LessThan3~3_combout\,
	datae => \lcd_controller|ALT_INV_Add0~81_sumout\,
	dataf => \lcd_controller|ALT_INV_Add0~9_sumout\,
	combout => \lcd_controller|LessThan3~12_combout\);

-- Location: LABCELL_X79_Y3_N27
\lcd_controller|Selector42~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Selector42~0_combout\ = ( \lcd_controller|Add0~1_sumout\ & ( \lcd_controller|state.initialize~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \lcd_controller|ALT_INV_state.initialize~DUPLICATE_q\,
	dataf => \lcd_controller|ALT_INV_Add0~1_sumout\,
	combout => \lcd_controller|Selector42~0_combout\);

-- Location: LABCELL_X81_Y3_N6
\lcd_controller|Selector42~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Selector42~1_combout\ = ( \lcd_controller|Selector33~0_combout\ & ( \lcd_controller|Selector42~0_combout\ ) ) # ( !\lcd_controller|Selector33~0_combout\ & ( \lcd_controller|Selector42~0_combout\ ) ) # ( 
-- \lcd_controller|Selector33~0_combout\ & ( !\lcd_controller|Selector42~0_combout\ & ( ((\lcd_controller|LessThan2~1_combout\ & (!\lcd_controller|LessThan3~7_combout\ & \lcd_controller|LessThan3~12_combout\))) # (\lcd_controller|LessThan1~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110100111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_LessThan2~1_combout\,
	datab => \lcd_controller|ALT_INV_LessThan3~7_combout\,
	datac => \lcd_controller|ALT_INV_LessThan1~3_combout\,
	datad => \lcd_controller|ALT_INV_LessThan3~12_combout\,
	datae => \lcd_controller|ALT_INV_Selector33~0_combout\,
	dataf => \lcd_controller|ALT_INV_Selector42~0_combout\,
	combout => \lcd_controller|Selector42~1_combout\);

-- Location: FF_X81_Y3_N7
\lcd_controller|lcd_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \lcd_controller|Selector42~1_combout\,
	ena => \lcd_controller|lcd_data[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_controller|lcd_data\(3));

-- Location: LABCELL_X81_Y3_N48
\lcd_controller|Selector41~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Selector41~0_combout\ = ( \lcd_controller|LessThan3~4_combout\ & ( \lcd_controller|LessThan3~1_combout\ & ( (!\lcd_controller|state.ready~q\ & (\lcd_controller|LessThan1~2_combout\ & (\lcd_controller|busy~2_combout\ & 
-- !\lcd_controller|Add0~57_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_state.ready~q\,
	datab => \lcd_controller|ALT_INV_LessThan1~2_combout\,
	datac => \lcd_controller|ALT_INV_busy~2_combout\,
	datad => \lcd_controller|ALT_INV_Add0~57_sumout\,
	datae => \lcd_controller|ALT_INV_LessThan3~4_combout\,
	dataf => \lcd_controller|ALT_INV_LessThan3~1_combout\,
	combout => \lcd_controller|Selector41~0_combout\);

-- Location: LABCELL_X81_Y3_N30
\lcd_controller|Selector41~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Selector41~1_combout\ = ( \lcd_controller|state.initialize~DUPLICATE_q\ & ( \main_fsm|lcd_enable~DUPLICATE_q\ & ( ((!\lcd_controller|state.ready~q\ & (\lcd_controller|Add0~1_sumout\)) # (\lcd_controller|state.ready~q\ & 
-- ((\main_fsm|lcd_bus\(4))))) # (\lcd_controller|Selector41~0_combout\) ) ) ) # ( !\lcd_controller|state.initialize~DUPLICATE_q\ & ( \main_fsm|lcd_enable~DUPLICATE_q\ & ( (!\lcd_controller|state.ready~q\) # ((\main_fsm|lcd_bus\(4)) # 
-- (\lcd_controller|Selector41~0_combout\)) ) ) ) # ( \lcd_controller|state.initialize~DUPLICATE_q\ & ( !\main_fsm|lcd_enable~DUPLICATE_q\ & ( ((!\lcd_controller|state.ready~q\ & \lcd_controller|Add0~1_sumout\)) # (\lcd_controller|Selector41~0_combout\) ) ) 
-- ) # ( !\lcd_controller|state.initialize~DUPLICATE_q\ & ( !\main_fsm|lcd_enable~DUPLICATE_q\ & ( (!\lcd_controller|state.ready~q\) # (\lcd_controller|Selector41~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111110101111001011110010111110101111111111110010111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_state.ready~q\,
	datab => \lcd_controller|ALT_INV_Add0~1_sumout\,
	datac => \lcd_controller|ALT_INV_Selector41~0_combout\,
	datad => \main_fsm|ALT_INV_lcd_bus\(4),
	datae => \lcd_controller|ALT_INV_state.initialize~DUPLICATE_q\,
	dataf => \main_fsm|ALT_INV_lcd_enable~DUPLICATE_q\,
	combout => \lcd_controller|Selector41~1_combout\);

-- Location: FF_X81_Y3_N32
\lcd_controller|lcd_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \lcd_controller|Selector41~1_combout\,
	ena => \lcd_controller|lcd_data[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_controller|lcd_data\(4));

-- Location: IOIBUF_X8_Y0_N18
\PCB_MISO~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PCB_MISO,
	o => \PCB_MISO~input_o\);

-- Location: IOIBUF_X89_Y23_N55
\PCB_MOSI~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PCB_MOSI,
	o => \PCB_MOSI~input_o\);

-- Location: LABCELL_X60_Y1_N0
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


