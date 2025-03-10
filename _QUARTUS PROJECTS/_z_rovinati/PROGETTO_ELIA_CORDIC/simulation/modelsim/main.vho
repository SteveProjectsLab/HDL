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

-- DATE "01/26/2025 17:02:10"

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

ENTITY 	main IS
    PORT (
	FPGA_CLK1_50 : IN std_logic;
	SW : IN std_logic_vector(3 DOWNTO 0);
	LED : BUFFER std_logic_vector(7 DOWNTO 0);
	ARDUINO_IO : BUFFER std_logic_vector(15 DOWNTO 0)
	);
END main;

-- Design Ports Information
-- SW[1]	=>  Location: PIN_W24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[0]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[1]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[2]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[3]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[4]	=>  Location: PIN_AF26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[5]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[6]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[7]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ARDUINO_IO[0]	=>  Location: PIN_AG13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ARDUINO_IO[1]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ARDUINO_IO[2]	=>  Location: PIN_AG10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ARDUINO_IO[3]	=>  Location: PIN_AG9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ARDUINO_IO[4]	=>  Location: PIN_U14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ARDUINO_IO[5]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ARDUINO_IO[6]	=>  Location: PIN_AG8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ARDUINO_IO[7]	=>  Location: PIN_AH8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ARDUINO_IO[8]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ARDUINO_IO[9]	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ARDUINO_IO[10]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ARDUINO_IO[14]	=>  Location: PIN_AH9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ARDUINO_IO[15]	=>  Location: PIN_AG11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ARDUINO_IO[11]	=>  Location: PIN_AG16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ARDUINO_IO[12]	=>  Location: PIN_AH11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ARDUINO_IO[13]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FPGA_CLK1_50	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF main IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_FPGA_CLK1_50 : std_logic;
SIGNAL ww_SW : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_LED : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_ARDUINO_IO : std_logic_vector(15 DOWNTO 0);
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \ARDUINO_IO[0]~input_o\ : std_logic;
SIGNAL \ARDUINO_IO[1]~input_o\ : std_logic;
SIGNAL \ARDUINO_IO[2]~input_o\ : std_logic;
SIGNAL \ARDUINO_IO[3]~input_o\ : std_logic;
SIGNAL \ARDUINO_IO[4]~input_o\ : std_logic;
SIGNAL \ARDUINO_IO[5]~input_o\ : std_logic;
SIGNAL \ARDUINO_IO[6]~input_o\ : std_logic;
SIGNAL \ARDUINO_IO[7]~input_o\ : std_logic;
SIGNAL \ARDUINO_IO[8]~input_o\ : std_logic;
SIGNAL \ARDUINO_IO[9]~input_o\ : std_logic;
SIGNAL \ARDUINO_IO[10]~input_o\ : std_logic;
SIGNAL \ARDUINO_IO[14]~input_o\ : std_logic;
SIGNAL \ARDUINO_IO[15]~input_o\ : std_logic;
SIGNAL \ARDUINO_IO[12]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \FPGA_CLK1_50~input_o\ : std_logic;
SIGNAL \FPGA_CLK1_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \ARDUINO_IO[13]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \spi0|spi|fall_flag~DUPLICATE_q\ : std_logic;
SIGNAL \spi0|spi|fall_flag~0_combout\ : std_logic;
SIGNAL \spi0|spi|fall_flag~q\ : std_logic;
SIGNAL \spi0|spi|rise_flag~q\ : std_logic;
SIGNAL \spi0|spi|rise_flag~0_combout\ : std_logic;
SIGNAL \spi0|spi|rise_flag~DUPLICATE_q\ : std_logic;
SIGNAL \spi0|spi|data_to_sent~0_combout\ : std_logic;
SIGNAL \spi0|cordic|core|state.DONE~q\ : std_logic;
SIGNAL \spi0|cordic|Selector3~0_combout\ : std_logic;
SIGNAL \spi0|cordic|state.WAIT_CORE_DONE~q\ : std_logic;
SIGNAL \spi0|state.RESET_S~feeder_combout\ : std_logic;
SIGNAL \spi0|state.RESET_S~q\ : std_logic;
SIGNAL \spi0|spi|SPI_FW~1_combout\ : std_logic;
SIGNAL \spi0|spi|MOSI_counter[0]~2_combout\ : std_logic;
SIGNAL \spi0|spi|MOSI_counter[0]~DUPLICATE_q\ : std_logic;
SIGNAL \spi0|spi|MOSI_counter[1]~3_combout\ : std_logic;
SIGNAL \spi0|spi|MOSI_counter[1]~DUPLICATE_q\ : std_logic;
SIGNAL \spi0|spi|MOSI_counter[2]~4_combout\ : std_logic;
SIGNAL \spi0|spi|MOSI_counter[2]~DUPLICATE_q\ : std_logic;
SIGNAL \spi0|spi|Add1~0_combout\ : std_logic;
SIGNAL \spi0|spi|MOSI_counter[3]~1_combout\ : std_logic;
SIGNAL \spi0|spi|MOSI_counter[4]~0_combout\ : std_logic;
SIGNAL \spi0|spi|Equal6~0_combout\ : std_logic;
SIGNAL \spi0|spi|SPI_rd_wr_done_flag~q\ : std_logic;
SIGNAL \ARDUINO_IO[11]~input_o\ : std_logic;
SIGNAL \spi0|spi|data_to_read[15]~0_combout\ : std_logic;
SIGNAL \spi0|spi|data_to_read[1]~feeder_combout\ : std_logic;
SIGNAL \spi0|spi|data_out[2]~DUPLICATE_q\ : std_logic;
SIGNAL \spi0|spi|data_to_read[3]~feeder_combout\ : std_logic;
SIGNAL \spi0|next_state~13_combout\ : std_logic;
SIGNAL \spi0|Selector2~0_combout\ : std_logic;
SIGNAL \spi0|spi|data_out[6]~DUPLICATE_q\ : std_logic;
SIGNAL \spi0|next_state~15_combout\ : std_logic;
SIGNAL \spi0|spi|data_to_read[13]~feeder_combout\ : std_logic;
SIGNAL \spi0|next_state~14_combout\ : std_logic;
SIGNAL \spi0|cordic|Selector0~0_combout\ : std_logic;
SIGNAL \spi0|cordic|state.IDLE~q\ : std_logic;
SIGNAL \spi0|cordic|WideOr1~0_combout\ : std_logic;
SIGNAL \spi0|cordic|done_flag~combout\ : std_logic;
SIGNAL \spi0|Selector7~1_combout\ : std_logic;
SIGNAL \spi0|Selector7~2_combout\ : std_logic;
SIGNAL \spi0|state.CORDIC_DONE~q\ : std_logic;
SIGNAL \spi0|Selector8~0_combout\ : std_logic;
SIGNAL \spi0|state.WRITE_PATH~q\ : std_logic;
SIGNAL \spi0|state.WRITE_X~q\ : std_logic;
SIGNAL \spi0|state.WRITE_Y~q\ : std_logic;
SIGNAL \spi0|state.WRITE_Z~q\ : std_logic;
SIGNAL \spi0|Selector12~0_combout\ : std_logic;
SIGNAL \spi0|state.DONE_S~q\ : std_logic;
SIGNAL \spi0|Selector7~0_combout\ : std_logic;
SIGNAL \spi0|Selector1~0_combout\ : std_logic;
SIGNAL \spi0|state.WAIT_PATH_START~q\ : std_logic;
SIGNAL \spi0|Selector0~2_combout\ : std_logic;
SIGNAL \spi0|Selector2~1_combout\ : std_logic;
SIGNAL \spi0|state.READ_X~q\ : std_logic;
SIGNAL \spi0|state.READ_Y~q\ : std_logic;
SIGNAL \spi0|state.READ_Z_L~q\ : std_logic;
SIGNAL \spi0|state.READ_Z_H~q\ : std_logic;
SIGNAL \spi0|Selector6~0_combout\ : std_logic;
SIGNAL \spi0|state.START_CORDIC~q\ : std_logic;
SIGNAL \spi0|WideOr2~0_combout\ : std_logic;
SIGNAL \spi0|start~combout\ : std_logic;
SIGNAL \spi0|cordic|Selector6~2_combout\ : std_logic;
SIGNAL \spi0|cordic|state.CHECK_R~q\ : std_logic;
SIGNAL \spi0|cordic|index_loop[0]~3_combout\ : std_logic;
SIGNAL \spi0|cordic|index_loop[3]~0_combout\ : std_logic;
SIGNAL \spi0|cordic|index_loop[1]~2_combout\ : std_logic;
SIGNAL \spi0|cordic|index_loop[2]~1_combout\ : std_logic;
SIGNAL \spi0|cordic|Selector1~0_combout\ : std_logic;
SIGNAL \spi0|cordic|Selector1~1_combout\ : std_logic;
SIGNAL \spi0|cordic|state.LOAD_DATA~q\ : std_logic;
SIGNAL \spi0|cordic|state.START_STATE~q\ : std_logic;
SIGNAL \spi0|cordic|WideOr5~0_combout\ : std_logic;
SIGNAL \spi0|cordic|start_core~combout\ : std_logic;
SIGNAL \spi0|cordic|core|Selector0~0_combout\ : std_logic;
SIGNAL \spi0|cordic|core|state.IDLE~q\ : std_logic;
SIGNAL \spi0|cordic|core|next_state.EXECUTE~0_combout\ : std_logic;
SIGNAL \spi0|cordic|core|state.EXECUTE~q\ : std_logic;
SIGNAL \spi0|cordic|core|done_core_flag~combout\ : std_logic;
SIGNAL \spi0|cordic|Selector6~0_combout\ : std_logic;
SIGNAL \spi0|cordic|Selector6~1_combout\ : std_logic;
SIGNAL \spi0|cordic|state.DONE~q\ : std_logic;
SIGNAL \spi0|y_in[0]~0_combout\ : std_logic;
SIGNAL \spi0|cordic|y_in_c~0_combout\ : std_logic;
SIGNAL \spi0|cordic|z_in_c~3_combout\ : std_logic;
SIGNAL \spi0|cordic|core|Mux1~0_combout\ : std_logic;
SIGNAL \spi0|cordic|core|Mux0~0_combout\ : std_logic;
SIGNAL \spi0|cordic|core|Mux1~1_combout\ : std_logic;
SIGNAL \spi0|spi|data_out[0]~DUPLICATE_q\ : std_logic;
SIGNAL \spi0|cordic|core|Mux2~0_combout\ : std_logic;
SIGNAL \spi0|cordic|core|Mux3~0_combout\ : std_logic;
SIGNAL \spi0|cordic|core|Mux4~0_combout\ : std_logic;
SIGNAL \spi0|cordic|core|Mux5~0_combout\ : std_logic;
SIGNAL \spi0|cordic|core|Mux6~0_combout\ : std_logic;
SIGNAL \spi0|cordic|core|Mux7~0_combout\ : std_logic;
SIGNAL \spi0|cordic|core|Mux8~0_combout\ : std_logic;
SIGNAL \spi0|cordic|core|Mux9~0_combout\ : std_logic;
SIGNAL \spi0|cordic|core|Mux10~0_combout\ : std_logic;
SIGNAL \spi0|cordic|core|Mux11~0_combout\ : std_logic;
SIGNAL \spi0|cordic|core|Mux12~0_combout\ : std_logic;
SIGNAL \spi0|cordic|core|Mux13~0_combout\ : std_logic;
SIGNAL \spi0|cordic|core|Mux14~0_combout\ : std_logic;
SIGNAL \spi0|cordic|core|Mux15~0_combout\ : std_logic;
SIGNAL \spi0|cordic|core|Mux16~0_combout\ : std_logic;
SIGNAL \spi0|cordic|core|Mux17~0_combout\ : std_logic;
SIGNAL \spi0|cordic|core|Add5~82_cout\ : std_logic;
SIGNAL \spi0|cordic|core|Add5~77_sumout\ : std_logic;
SIGNAL \spi0|Selector5~0_combout\ : std_logic;
SIGNAL \spi0|cordic|z_in_c~19_combout\ : std_logic;
SIGNAL \spi0|cordic|core|Add5~78\ : std_logic;
SIGNAL \spi0|cordic|core|Add5~73_sumout\ : std_logic;
SIGNAL \spi0|cordic|z_in_c~18_combout\ : std_logic;
SIGNAL \spi0|cordic|core|Add5~74\ : std_logic;
SIGNAL \spi0|cordic|core|Add5~69_sumout\ : std_logic;
SIGNAL \spi0|cordic|z_in_c~17_combout\ : std_logic;
SIGNAL \spi0|cordic|core|Add5~70\ : std_logic;
SIGNAL \spi0|cordic|core|Add5~65_sumout\ : std_logic;
SIGNAL \spi0|cordic|z_in_c~16_combout\ : std_logic;
SIGNAL \spi0|cordic|core|Add5~66\ : std_logic;
SIGNAL \spi0|cordic|core|Add5~61_sumout\ : std_logic;
SIGNAL \spi0|spi|data_out[4]~DUPLICATE_q\ : std_logic;
SIGNAL \spi0|cordic|z_in_c~15_combout\ : std_logic;
SIGNAL \spi0|cordic|core|Add5~62\ : std_logic;
SIGNAL \spi0|cordic|core|Add5~57_sumout\ : std_logic;
SIGNAL \spi0|cordic|z_in_c~14_combout\ : std_logic;
SIGNAL \spi0|cordic|core|Add5~58\ : std_logic;
SIGNAL \spi0|cordic|core|Add5~53_sumout\ : std_logic;
SIGNAL \spi0|cordic|z_in_c~13_combout\ : std_logic;
SIGNAL \spi0|cordic|core|Add5~54\ : std_logic;
SIGNAL \spi0|cordic|core|Add5~49_sumout\ : std_logic;
SIGNAL \spi0|cordic|z_in_c~12_combout\ : std_logic;
SIGNAL \spi0|cordic|core|Add5~50\ : std_logic;
SIGNAL \spi0|cordic|core|Add5~45_sumout\ : std_logic;
SIGNAL \spi0|cordic|z_in_c~11_combout\ : std_logic;
SIGNAL \spi0|cordic|core|Add5~46\ : std_logic;
SIGNAL \spi0|cordic|core|Add5~41_sumout\ : std_logic;
SIGNAL \spi0|spi|data_out[9]~DUPLICATE_q\ : std_logic;
SIGNAL \spi0|cordic|z_in_c~10_combout\ : std_logic;
SIGNAL \spi0|cordic|core|Add5~42\ : std_logic;
SIGNAL \spi0|cordic|core|Add5~33_sumout\ : std_logic;
SIGNAL \spi0|cordic|z_in_c~8_combout\ : std_logic;
SIGNAL \spi0|cordic|core|Add5~34\ : std_logic;
SIGNAL \spi0|cordic|core|Add5~25_sumout\ : std_logic;
SIGNAL \spi0|spi|data_out[11]~DUPLICATE_q\ : std_logic;
SIGNAL \spi0|cordic|z_in_c~6_combout\ : std_logic;
SIGNAL \spi0|cordic|core|Add5~26\ : std_logic;
SIGNAL \spi0|cordic|core|Add5~17_sumout\ : std_logic;
SIGNAL \spi0|spi|data_out[12]~DUPLICATE_q\ : std_logic;
SIGNAL \spi0|cordic|z_in_c~4_combout\ : std_logic;
SIGNAL \spi0|cordic|core|Add5~18\ : std_logic;
SIGNAL \spi0|cordic|core|Add5~9_sumout\ : std_logic;
SIGNAL \spi0|spi|data_out[13]~DUPLICATE_q\ : std_logic;
SIGNAL \spi0|cordic|z_in_c~2_combout\ : std_logic;
SIGNAL \spi0|cordic|core|Add5~10\ : std_logic;
SIGNAL \spi0|cordic|core|Add5~5_sumout\ : std_logic;
SIGNAL \spi0|cordic|z_in_c~1_combout\ : std_logic;
SIGNAL \spi0|cordic|core|Add5~6\ : std_logic;
SIGNAL \spi0|cordic|core|Add5~1_sumout\ : std_logic;
SIGNAL \spi0|cordic|z_in_c~0_combout\ : std_logic;
SIGNAL \spi0|cordic|core|Add5~2\ : std_logic;
SIGNAL \spi0|cordic|core|Add5~37_sumout\ : std_logic;
SIGNAL \spi0|cordic|z_in_c~9_combout\ : std_logic;
SIGNAL \spi0|cordic|core|Add5~38\ : std_logic;
SIGNAL \spi0|cordic|core|Add5~29_sumout\ : std_logic;
SIGNAL \spi0|cordic|z_in_c~7_combout\ : std_logic;
SIGNAL \spi0|cordic|core|Add5~30\ : std_logic;
SIGNAL \spi0|cordic|core|Add5~21_sumout\ : std_logic;
SIGNAL \spi0|cordic|z_in_c~5_combout\ : std_logic;
SIGNAL \spi0|cordic|core|Add5~22\ : std_logic;
SIGNAL \spi0|cordic|core|Add5~13_sumout\ : std_logic;
SIGNAL \spi0|cordic|Equal0~0_combout\ : std_logic;
SIGNAL \spi0|cordic|Selector11~0_combout\ : std_logic;
SIGNAL \spi0|cordic|WideOr0~0_combout\ : std_logic;
SIGNAL \spi0|cordic|sgn~combout\ : std_logic;
SIGNAL \spi0|cordic|core|ShiftRight1~0_combout\ : std_logic;
SIGNAL \spi0|cordic|core|ShiftRight0~3_combout\ : std_logic;
SIGNAL \spi0|cordic|core|ShiftRight1~12_combout\ : std_logic;
SIGNAL \spi0|cordic|core|ShiftRight1~13_combout\ : std_logic;
SIGNAL \spi0|x_in[0]~0_combout\ : std_logic;
SIGNAL \spi0|cordic|core|ShiftRight0~18_combout\ : std_logic;
SIGNAL \spi0|cordic|core|ShiftRight0~19_combout\ : std_logic;
SIGNAL \spi0|cordic|core|ShiftRight1~22_combout\ : std_logic;
SIGNAL \spi0|cordic|core|ShiftRight1~23_combout\ : std_logic;
SIGNAL \spi0|cordic|core|Add1~66_cout\ : std_logic;
SIGNAL \spi0|cordic|core|Add1~61_sumout\ : std_logic;
SIGNAL \spi0|cordic|y_in_c~15_combout\ : std_logic;
SIGNAL \spi0|cordic|core|ShiftRight0~24_combout\ : std_logic;
SIGNAL \spi0|cordic|core|ShiftRight0~25_combout\ : std_logic;
SIGNAL \spi0|cordic|core|Add3~66_cout\ : std_logic;
SIGNAL \spi0|cordic|core|Add3~61_sumout\ : std_logic;
SIGNAL \spi0|cordic|x_in_c~15_combout\ : std_logic;
SIGNAL \spi0|cordic|core|ShiftRight1~24_combout\ : std_logic;
SIGNAL \spi0|cordic|core|ShiftRight1~25_combout\ : std_logic;
SIGNAL \spi0|cordic|core|Add1~62\ : std_logic;
SIGNAL \spi0|cordic|core|Add1~57_sumout\ : std_logic;
SIGNAL \spi0|cordic|y_in_c~14_combout\ : std_logic;
SIGNAL \spi0|cordic|core|ShiftRight0~22_combout\ : std_logic;
SIGNAL \spi0|cordic|core|ShiftRight0~23_combout\ : std_logic;
SIGNAL \spi0|cordic|core|Add3~62\ : std_logic;
SIGNAL \spi0|cordic|core|Add3~57_sumout\ : std_logic;
SIGNAL \spi0|cordic|x_in_c~14_combout\ : std_logic;
SIGNAL \spi0|cordic|core|Add3~58\ : std_logic;
SIGNAL \spi0|cordic|core|Add3~53_sumout\ : std_logic;
SIGNAL \spi0|cordic|x_in_c~13_combout\ : std_logic;
SIGNAL \spi0|cordic|core|ShiftRight1~20_combout\ : std_logic;
SIGNAL \spi0|cordic|core|ShiftRight1~21_combout\ : std_logic;
SIGNAL \spi0|cordic|core|Add1~58\ : std_logic;
SIGNAL \spi0|cordic|core|Add1~53_sumout\ : std_logic;
SIGNAL \spi0|cordic|y_in_c~13_combout\ : std_logic;
SIGNAL \spi0|cordic|core|ShiftRight0~20_combout\ : std_logic;
SIGNAL \spi0|cordic|core|ShiftRight0~21_combout\ : std_logic;
SIGNAL \spi0|cordic|core|Add3~54\ : std_logic;
SIGNAL \spi0|cordic|core|Add3~49_sumout\ : std_logic;
SIGNAL \spi0|cordic|x_in_c~12_combout\ : std_logic;
SIGNAL \spi0|cordic|core|ShiftRight1~18_combout\ : std_logic;
SIGNAL \spi0|cordic|core|ShiftRight1~19_combout\ : std_logic;
SIGNAL \spi0|cordic|core|Add1~54\ : std_logic;
SIGNAL \spi0|cordic|core|Add1~49_sumout\ : std_logic;
SIGNAL \spi0|cordic|y_in_c~12_combout\ : std_logic;
SIGNAL \spi0|cordic|core|Add1~50\ : std_logic;
SIGNAL \spi0|cordic|core|Add1~45_sumout\ : std_logic;
SIGNAL \spi0|cordic|y_in_c~11_combout\ : std_logic;
SIGNAL \spi0|cordic|core|ShiftRight0~16_combout\ : std_logic;
SIGNAL \spi0|cordic|core|ShiftRight0~17_combout\ : std_logic;
SIGNAL \spi0|cordic|core|Add3~50\ : std_logic;
SIGNAL \spi0|cordic|core|Add3~45_sumout\ : std_logic;
SIGNAL \spi0|cordic|x_in_c~11_combout\ : std_logic;
SIGNAL \spi0|cordic|core|ShiftRight1~16_combout\ : std_logic;
SIGNAL \spi0|cordic|core|ShiftRight1~17_combout\ : std_logic;
SIGNAL \spi0|cordic|core|Add1~46\ : std_logic;
SIGNAL \spi0|cordic|core|Add1~41_sumout\ : std_logic;
SIGNAL \spi0|cordic|y_in_c~10_combout\ : std_logic;
SIGNAL \spi0|cordic|core|ShiftRight0~14_combout\ : std_logic;
SIGNAL \spi0|cordic|core|ShiftRight0~15_combout\ : std_logic;
SIGNAL \spi0|cordic|core|Add3~46\ : std_logic;
SIGNAL \spi0|cordic|core|Add3~41_sumout\ : std_logic;
SIGNAL \spi0|cordic|x_in_c~10_combout\ : std_logic;
SIGNAL \spi0|cordic|core|ShiftRight1~14_combout\ : std_logic;
SIGNAL \spi0|cordic|core|ShiftRight1~15_combout\ : std_logic;
SIGNAL \spi0|cordic|core|Add1~42\ : std_logic;
SIGNAL \spi0|cordic|core|Add1~37_sumout\ : std_logic;
SIGNAL \spi0|cordic|y_in_c~9_combout\ : std_logic;
SIGNAL \spi0|cordic|core|ShiftRight0~12_combout\ : std_logic;
SIGNAL \spi0|cordic|core|ShiftRight0~13_combout\ : std_logic;
SIGNAL \spi0|cordic|core|Add3~42\ : std_logic;
SIGNAL \spi0|cordic|core|Add3~37_sumout\ : std_logic;
SIGNAL \spi0|cordic|x_in_c~9_combout\ : std_logic;
SIGNAL \spi0|cordic|core|Add3~38\ : std_logic;
SIGNAL \spi0|cordic|core|Add3~33_sumout\ : std_logic;
SIGNAL \spi0|cordic|x_in_c~8_combout\ : std_logic;
SIGNAL \spi0|cordic|core|ShiftRight1~10_combout\ : std_logic;
SIGNAL \spi0|cordic|core|ShiftRight1~11_combout\ : std_logic;
SIGNAL \spi0|cordic|core|Add1~38\ : std_logic;
SIGNAL \spi0|cordic|core|Add1~33_sumout\ : std_logic;
SIGNAL \spi0|cordic|y_in_c~8_combout\ : std_logic;
SIGNAL \spi0|cordic|core|ShiftRight0~10_combout\ : std_logic;
SIGNAL \spi0|cordic|core|ShiftRight0~11_combout\ : std_logic;
SIGNAL \spi0|cordic|core|Add3~34\ : std_logic;
SIGNAL \spi0|cordic|core|Add3~29_sumout\ : std_logic;
SIGNAL \spi0|spi|data_out[8]~DUPLICATE_q\ : std_logic;
SIGNAL \spi0|cordic|x_in_c~7_combout\ : std_logic;
SIGNAL \spi0|cordic|core|ShiftRight1~8_combout\ : std_logic;
SIGNAL \spi0|cordic|core|ShiftRight1~9_combout\ : std_logic;
SIGNAL \spi0|cordic|core|Add1~34\ : std_logic;
SIGNAL \spi0|cordic|core|Add1~29_sumout\ : std_logic;
SIGNAL \spi0|cordic|y_in_c~7_combout\ : std_logic;
SIGNAL \spi0|cordic|core|ShiftRight0~8_combout\ : std_logic;
SIGNAL \spi0|cordic|core|ShiftRight0~9_combout\ : std_logic;
SIGNAL \spi0|cordic|core|Add3~30\ : std_logic;
SIGNAL \spi0|cordic|core|Add3~25_sumout\ : std_logic;
SIGNAL \spi0|cordic|x_in_c~6_combout\ : std_logic;
SIGNAL \spi0|cordic|core|ShiftRight1~6_combout\ : std_logic;
SIGNAL \spi0|cordic|core|ShiftRight1~7_combout\ : std_logic;
SIGNAL \spi0|cordic|core|Add1~30\ : std_logic;
SIGNAL \spi0|cordic|core|Add1~25_sumout\ : std_logic;
SIGNAL \spi0|cordic|y_in_c~6_combout\ : std_logic;
SIGNAL \spi0|cordic|core|ShiftRight0~6_combout\ : std_logic;
SIGNAL \spi0|cordic|core|ShiftRight0~7_combout\ : std_logic;
SIGNAL \spi0|cordic|core|Add3~26\ : std_logic;
SIGNAL \spi0|cordic|core|Add3~21_sumout\ : std_logic;
SIGNAL \spi0|cordic|x_in_c~5_combout\ : std_logic;
SIGNAL \spi0|cordic|core|ShiftRight1~4_combout\ : std_logic;
SIGNAL \spi0|cordic|core|ShiftRight1~5_combout\ : std_logic;
SIGNAL \spi0|cordic|core|Add1~26\ : std_logic;
SIGNAL \spi0|cordic|core|Add1~21_sumout\ : std_logic;
SIGNAL \spi0|cordic|y_in_c~5_combout\ : std_logic;
SIGNAL \spi0|cordic|core|ShiftRight0~4_combout\ : std_logic;
SIGNAL \spi0|cordic|core|ShiftRight0~5_combout\ : std_logic;
SIGNAL \spi0|cordic|core|Add3~22\ : std_logic;
SIGNAL \spi0|cordic|core|Add3~17_sumout\ : std_logic;
SIGNAL \spi0|cordic|x_in_c~4_combout\ : std_logic;
SIGNAL \spi0|cordic|core|ShiftRight1~3_combout\ : std_logic;
SIGNAL \spi0|cordic|core|Add1~22\ : std_logic;
SIGNAL \spi0|cordic|core|Add1~17_sumout\ : std_logic;
SIGNAL \spi0|cordic|y_in_c~4_combout\ : std_logic;
SIGNAL \spi0|cordic|core|Add1~18\ : std_logic;
SIGNAL \spi0|cordic|core|Add1~13_sumout\ : std_logic;
SIGNAL \spi0|cordic|y_in_c~3_combout\ : std_logic;
SIGNAL \spi0|cordic|core|ShiftRight0~2_combout\ : std_logic;
SIGNAL \spi0|cordic|core|Add3~18\ : std_logic;
SIGNAL \spi0|cordic|core|Add3~13_sumout\ : std_logic;
SIGNAL \spi0|cordic|x_in_c~3_combout\ : std_logic;
SIGNAL \spi0|cordic|core|ShiftRight1~2_combout\ : std_logic;
SIGNAL \spi0|cordic|core|Add1~14\ : std_logic;
SIGNAL \spi0|cordic|core|Add1~9_sumout\ : std_logic;
SIGNAL \spi0|cordic|y_in_c~2_combout\ : std_logic;
SIGNAL \spi0|cordic|core|ShiftRight0~1_combout\ : std_logic;
SIGNAL \spi0|cordic|core|Add3~14\ : std_logic;
SIGNAL \spi0|cordic|core|Add3~9_sumout\ : std_logic;
SIGNAL \spi0|cordic|x_in_c~2_combout\ : std_logic;
SIGNAL \spi0|cordic|core|ShiftRight1~1_combout\ : std_logic;
SIGNAL \spi0|cordic|core|Add1~10\ : std_logic;
SIGNAL \spi0|cordic|core|Add1~5_sumout\ : std_logic;
SIGNAL \spi0|cordic|y_in_c~1_combout\ : std_logic;
SIGNAL \spi0|cordic|core|ShiftRight0~0_combout\ : std_logic;
SIGNAL \spi0|cordic|core|Add3~10\ : std_logic;
SIGNAL \spi0|cordic|core|Add3~5_sumout\ : std_logic;
SIGNAL \spi0|spi|data_out[14]~DUPLICATE_q\ : std_logic;
SIGNAL \spi0|cordic|x_in_c~1_combout\ : std_logic;
SIGNAL \spi0|cordic|core|Add3~6\ : std_logic;
SIGNAL \spi0|cordic|core|Add3~1_sumout\ : std_logic;
SIGNAL \spi0|cordic|x_in_c~0_combout\ : std_logic;
SIGNAL \spi0|cordic|core|Add1~6\ : std_logic;
SIGNAL \spi0|cordic|core|Add1~1_sumout\ : std_logic;
SIGNAL \spi0|Selector24~0_combout\ : std_logic;
SIGNAL \spi0|WideOr1~0_combout\ : std_logic;
SIGNAL \spi0|Selector32~0_combout\ : std_logic;
SIGNAL \spi0|WideOr1~1_combout\ : std_logic;
SIGNAL \spi0|Selector31~0_combout\ : std_logic;
SIGNAL \spi0|Selector30~0_combout\ : std_logic;
SIGNAL \spi0|Selector29~0_combout\ : std_logic;
SIGNAL \spi0|Selector28~0_combout\ : std_logic;
SIGNAL \spi0|Selector27~0_combout\ : std_logic;
SIGNAL \spi0|Selector26~0_combout\ : std_logic;
SIGNAL \spi0|Selector25~0_combout\ : std_logic;
SIGNAL \spi0|Selector24~1_combout\ : std_logic;
SIGNAL \spi0|Selector23~0_combout\ : std_logic;
SIGNAL \spi0|Selector22~0_combout\ : std_logic;
SIGNAL \spi0|Selector21~0_combout\ : std_logic;
SIGNAL \spi0|Selector20~0_combout\ : std_logic;
SIGNAL \spi0|Selector19~0_combout\ : std_logic;
SIGNAL \spi0|Selector17~0_combout\ : std_logic;
SIGNAL \spi0|spi|SPI_FW~0_combout\ : std_logic;
SIGNAL \spi0|spi|MISO_counter[0]~DUPLICATE_q\ : std_logic;
SIGNAL \spi0|spi|MISO_counter[2]~4_combout\ : std_logic;
SIGNAL \spi0|spi|MISO_counter[2]~DUPLICATE_q\ : std_logic;
SIGNAL \spi0|spi|MISO_counter[1]~DUPLICATE_q\ : std_logic;
SIGNAL \spi0|spi|Add0~0_combout\ : std_logic;
SIGNAL \spi0|spi|MISO_counter[3]~1_combout\ : std_logic;
SIGNAL \spi0|spi|MISO_counter[4]~0_combout\ : std_logic;
SIGNAL \spi0|spi|Equal5~0_combout\ : std_logic;
SIGNAL \spi0|spi|MISO_counter[0]~2_combout\ : std_logic;
SIGNAL \spi0|spi|MISO_counter[1]~3_combout\ : std_logic;
SIGNAL \spi0|spi|Equal0~0_combout\ : std_logic;
SIGNAL \spi0|Selector15~0_combout\ : std_logic;
SIGNAL \spi0|spi|data_to_sent~2_combout\ : std_logic;
SIGNAL \spi0|spi|data_to_sent[1]~1_combout\ : std_logic;
SIGNAL \spi0|spi|SPI_MISO~0_combout\ : std_logic;
SIGNAL \spi0|spi|SPI_MISO~q\ : std_logic;
SIGNAL \spi0|blink_hb|counter_output[24]~DUPLICATE_q\ : std_logic;
SIGNAL \spi0|blink_hb|counter_output[0]~0_combout\ : std_logic;
SIGNAL \spi0|blink_hb|Add0~93_sumout\ : std_logic;
SIGNAL \spi0|blink_hb|counter_output[1]~feeder_combout\ : std_logic;
SIGNAL \spi0|blink_hb|Add0~94\ : std_logic;
SIGNAL \spi0|blink_hb|Add0~89_sumout\ : std_logic;
SIGNAL \spi0|blink_hb|Add0~90\ : std_logic;
SIGNAL \spi0|blink_hb|Add0~85_sumout\ : std_logic;
SIGNAL \spi0|blink_hb|Add0~86\ : std_logic;
SIGNAL \spi0|blink_hb|Add0~81_sumout\ : std_logic;
SIGNAL \spi0|blink_hb|Add0~82\ : std_logic;
SIGNAL \spi0|blink_hb|Add0~77_sumout\ : std_logic;
SIGNAL \spi0|blink_hb|Add0~78\ : std_logic;
SIGNAL \spi0|blink_hb|Add0~73_sumout\ : std_logic;
SIGNAL \spi0|blink_hb|Add0~74\ : std_logic;
SIGNAL \spi0|blink_hb|Add0~69_sumout\ : std_logic;
SIGNAL \spi0|blink_hb|Add0~70\ : std_logic;
SIGNAL \spi0|blink_hb|Add0~65_sumout\ : std_logic;
SIGNAL \spi0|blink_hb|Add0~66\ : std_logic;
SIGNAL \spi0|blink_hb|Add0~61_sumout\ : std_logic;
SIGNAL \spi0|blink_hb|Add0~62\ : std_logic;
SIGNAL \spi0|blink_hb|Add0~57_sumout\ : std_logic;
SIGNAL \spi0|blink_hb|Add0~58\ : std_logic;
SIGNAL \spi0|blink_hb|Add0~53_sumout\ : std_logic;
SIGNAL \spi0|blink_hb|Add0~54\ : std_logic;
SIGNAL \spi0|blink_hb|Add0~49_sumout\ : std_logic;
SIGNAL \spi0|blink_hb|Add0~50\ : std_logic;
SIGNAL \spi0|blink_hb|Add0~45_sumout\ : std_logic;
SIGNAL \spi0|blink_hb|Add0~46\ : std_logic;
SIGNAL \spi0|blink_hb|Add0~41_sumout\ : std_logic;
SIGNAL \spi0|blink_hb|Add0~42\ : std_logic;
SIGNAL \spi0|blink_hb|Add0~37_sumout\ : std_logic;
SIGNAL \spi0|blink_hb|Add0~38\ : std_logic;
SIGNAL \spi0|blink_hb|Add0~33_sumout\ : std_logic;
SIGNAL \spi0|blink_hb|Add0~34\ : std_logic;
SIGNAL \spi0|blink_hb|Add0~29_sumout\ : std_logic;
SIGNAL \spi0|blink_hb|Add0~30\ : std_logic;
SIGNAL \spi0|blink_hb|Add0~25_sumout\ : std_logic;
SIGNAL \spi0|blink_hb|Add0~26\ : std_logic;
SIGNAL \spi0|blink_hb|Add0~21_sumout\ : std_logic;
SIGNAL \spi0|blink_hb|Add0~22\ : std_logic;
SIGNAL \spi0|blink_hb|Add0~17_sumout\ : std_logic;
SIGNAL \spi0|blink_hb|Add0~18\ : std_logic;
SIGNAL \spi0|blink_hb|Add0~13_sumout\ : std_logic;
SIGNAL \spi0|blink_hb|Add0~14\ : std_logic;
SIGNAL \spi0|blink_hb|Add0~9_sumout\ : std_logic;
SIGNAL \spi0|blink_hb|Add0~10\ : std_logic;
SIGNAL \spi0|blink_hb|Add0~5_sumout\ : std_logic;
SIGNAL \spi0|blink_hb|Add0~6\ : std_logic;
SIGNAL \spi0|blink_hb|Add0~1_sumout\ : std_logic;
SIGNAL \spi0|spi|data_to_sent\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \spi0|cordic|z_output\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \spi0|blink_hb|counter_output\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \spi0|spi|sck_synchronizer\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \spi0|cordic|index_loop\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \spi0|spi|MISO_counter\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \spi0|spi|data_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \spi0|dataIn\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \spi0|spi|MOSI_counter\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \spi0|spi|data_to_read\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \spi0|cordic|y_output\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \spi0|cordic|x_output\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \spi0|cordic|core|y_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \spi0|cordic|core|x_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \spi0|cordic|core|z_out\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \spi0|cordic|x_in_c\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \spi0|cordic|y_in_c\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \spi0|cordic|index\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \spi0|cordic|z_in_c\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \spi0|z_in\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \spi0|x_in\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \spi0|y_in\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \spi0|cordic|core|ALT_INV_Add5~9_sumout\ : std_logic;
SIGNAL \spi0|cordic|core|ALT_INV_Add3~9_sumout\ : std_logic;
SIGNAL \spi0|cordic|core|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \spi0|cordic|core|ALT_INV_Add5~5_sumout\ : std_logic;
SIGNAL \spi0|cordic|core|ALT_INV_Add3~5_sumout\ : std_logic;
SIGNAL \spi0|cordic|core|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \spi0|cordic|core|ALT_INV_Add5~1_sumout\ : std_logic;
SIGNAL \spi0|cordic|core|ALT_INV_Add3~1_sumout\ : std_logic;
SIGNAL \spi0|cordic|core|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \spi0|spi|ALT_INV_data_to_sent\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \spi0|blink_hb|ALT_INV_Add0~93_sumout\ : std_logic;
SIGNAL \spi0|cordic|core|ALT_INV_Add5~77_sumout\ : std_logic;
SIGNAL \spi0|cordic|core|ALT_INV_Add3~61_sumout\ : std_logic;
SIGNAL \spi0|cordic|core|ALT_INV_Add1~61_sumout\ : std_logic;
SIGNAL \spi0|cordic|core|ALT_INV_Add5~73_sumout\ : std_logic;
SIGNAL \spi0|cordic|core|ALT_INV_Add3~57_sumout\ : std_logic;
SIGNAL \spi0|cordic|core|ALT_INV_Add1~57_sumout\ : std_logic;
SIGNAL \spi0|cordic|core|ALT_INV_Add5~69_sumout\ : std_logic;
SIGNAL \spi0|cordic|core|ALT_INV_Add3~53_sumout\ : std_logic;
SIGNAL \spi0|cordic|core|ALT_INV_Add1~53_sumout\ : std_logic;
SIGNAL \spi0|cordic|core|ALT_INV_Add5~65_sumout\ : std_logic;
SIGNAL \spi0|cordic|core|ALT_INV_Add3~49_sumout\ : std_logic;
SIGNAL \spi0|cordic|core|ALT_INV_Add1~49_sumout\ : std_logic;
SIGNAL \spi0|cordic|core|ALT_INV_Add5~61_sumout\ : std_logic;
SIGNAL \spi0|cordic|core|ALT_INV_Add3~45_sumout\ : std_logic;
SIGNAL \spi0|cordic|core|ALT_INV_Add1~45_sumout\ : std_logic;
SIGNAL \spi0|cordic|core|ALT_INV_Add5~57_sumout\ : std_logic;
SIGNAL \spi0|cordic|core|ALT_INV_Add3~41_sumout\ : std_logic;
SIGNAL \spi0|cordic|core|ALT_INV_Add1~41_sumout\ : std_logic;
SIGNAL \spi0|cordic|core|ALT_INV_Add5~53_sumout\ : std_logic;
SIGNAL \spi0|cordic|core|ALT_INV_Add3~37_sumout\ : std_logic;
SIGNAL \spi0|cordic|core|ALT_INV_Add1~37_sumout\ : std_logic;
SIGNAL \spi0|cordic|core|ALT_INV_Add5~49_sumout\ : std_logic;
SIGNAL \spi0|cordic|core|ALT_INV_Add3~33_sumout\ : std_logic;
SIGNAL \spi0|cordic|core|ALT_INV_Add1~33_sumout\ : std_logic;
SIGNAL \spi0|cordic|core|ALT_INV_Add5~45_sumout\ : std_logic;
SIGNAL \spi0|cordic|core|ALT_INV_Add3~29_sumout\ : std_logic;
SIGNAL \spi0|cordic|core|ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \spi0|cordic|core|ALT_INV_Add5~41_sumout\ : std_logic;
SIGNAL \spi0|cordic|core|ALT_INV_Add3~25_sumout\ : std_logic;
SIGNAL \spi0|cordic|core|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \spi0|cordic|core|ALT_INV_Add5~37_sumout\ : std_logic;
SIGNAL \spi0|cordic|core|ALT_INV_Add5~33_sumout\ : std_logic;
SIGNAL \spi0|cordic|core|ALT_INV_Add3~21_sumout\ : std_logic;
SIGNAL \spi0|cordic|core|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \spi0|cordic|core|ALT_INV_Add5~29_sumout\ : std_logic;
SIGNAL \spi0|cordic|core|ALT_INV_Add5~25_sumout\ : std_logic;
SIGNAL \spi0|cordic|core|ALT_INV_Add3~17_sumout\ : std_logic;
SIGNAL \spi0|cordic|core|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \spi0|cordic|core|ALT_INV_Add5~21_sumout\ : std_logic;
SIGNAL \spi0|cordic|core|ALT_INV_Add5~17_sumout\ : std_logic;
SIGNAL \spi0|cordic|core|ALT_INV_Add3~13_sumout\ : std_logic;
SIGNAL \spi0|cordic|core|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \spi0|cordic|core|ALT_INV_Add5~13_sumout\ : std_logic;
SIGNAL \spi0|cordic|core|ALT_INV_state.DONE~q\ : std_logic;
SIGNAL \spi0|cordic|core|ALT_INV_state.IDLE~q\ : std_logic;
SIGNAL \spi0|spi|ALT_INV_Add1~0_combout\ : std_logic;
SIGNAL \spi0|spi|ALT_INV_SPI_FW~1_combout\ : std_logic;
SIGNAL \spi0|blink_hb|ALT_INV_counter_output\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \spi0|ALT_INV_Selector30~0_combout\ : std_logic;
SIGNAL \spi0|spi|ALT_INV_data_to_read\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \spi0|ALT_INV_Selector6~0_combout\ : std_logic;
SIGNAL \spi0|ALT_INV_state.READ_Z_H~q\ : std_logic;
SIGNAL \spi0|cordic|ALT_INV_Selector6~0_combout\ : std_logic;
SIGNAL \spi0|cordic|ALT_INV_index_loop\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \spi0|cordic|ALT_INV_state.CHECK_R~q\ : std_logic;
SIGNAL \spi0|cordic|ALT_INV_state.WAIT_CORE_DONE~q\ : std_logic;
SIGNAL \spi0|cordic|core|ALT_INV_state.EXECUTE~q\ : std_logic;
SIGNAL \spi0|ALT_INV_Selector7~1_combout\ : std_logic;
SIGNAL \spi0|cordic|ALT_INV_WideOr1~0_combout\ : std_logic;
SIGNAL \spi0|cordic|ALT_INV_state.IDLE~q\ : std_logic;
SIGNAL \spi0|spi|ALT_INV_Equal6~0_combout\ : std_logic;
SIGNAL \spi0|spi|ALT_INV_MOSI_counter\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \spi0|ALT_INV_Selector31~0_combout\ : std_logic;
SIGNAL \spi0|ALT_INV_Selector7~0_combout\ : std_logic;
SIGNAL \spi0|ALT_INV_state.DONE_S~q\ : std_logic;
SIGNAL \spi0|ALT_INV_next_state~15_combout\ : std_logic;
SIGNAL \spi0|spi|ALT_INV_data_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \spi0|ALT_INV_next_state~14_combout\ : std_logic;
SIGNAL \spi0|ALT_INV_next_state~13_combout\ : std_logic;
SIGNAL \spi0|ALT_INV_state.START_CORDIC~q\ : std_logic;
SIGNAL \spi0|cordic|ALT_INV_state.DONE~q\ : std_logic;
SIGNAL \spi0|ALT_INV_state.CORDIC_DONE~q\ : std_logic;
SIGNAL \spi0|spi|ALT_INV_SPI_rd_wr_done_flag~q\ : std_logic;
SIGNAL \spi0|spi|ALT_INV_Add0~0_combout\ : std_logic;
SIGNAL \spi0|spi|ALT_INV_Equal5~0_combout\ : std_logic;
SIGNAL \spi0|spi|ALT_INV_SPI_FW~0_combout\ : std_logic;
SIGNAL \spi0|ALT_INV_WideOr1~1_combout\ : std_logic;
SIGNAL \spi0|ALT_INV_state.WAIT_PATH_START~q\ : std_logic;
SIGNAL \spi0|ALT_INV_state.RESET_S~q\ : std_logic;
SIGNAL \spi0|ALT_INV_Selector32~0_combout\ : std_logic;
SIGNAL \spi0|ALT_INV_WideOr1~0_combout\ : std_logic;
SIGNAL \spi0|ALT_INV_state.WRITE_X~q\ : std_logic;
SIGNAL \spi0|ALT_INV_Selector24~0_combout\ : std_logic;
SIGNAL \spi0|ALT_INV_state.WRITE_Z~q\ : std_logic;
SIGNAL \spi0|ALT_INV_state.WRITE_Y~q\ : std_logic;
SIGNAL \spi0|ALT_INV_state.WRITE_PATH~q\ : std_logic;
SIGNAL \spi0|spi|ALT_INV_fall_flag~q\ : std_logic;
SIGNAL \spi0|spi|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \spi0|spi|ALT_INV_MISO_counter\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \spi0|spi|ALT_INV_data_to_sent~0_combout\ : std_logic;
SIGNAL \spi0|spi|ALT_INV_rise_flag~q\ : std_logic;
SIGNAL \spi0|spi|ALT_INV_sck_synchronizer\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \spi0|spi|ALT_INV_SPI_MISO~q\ : std_logic;
SIGNAL \spi0|ALT_INV_Selector19~0_combout\ : std_logic;
SIGNAL \spi0|cordic|core|ALT_INV_Mux12~0_combout\ : std_logic;
SIGNAL \spi0|cordic|ALT_INV_z_in_c~13_combout\ : std_logic;
SIGNAL \spi0|cordic|core|ALT_INV_ShiftRight0~15_combout\ : std_logic;
SIGNAL \spi0|cordic|core|ALT_INV_ShiftRight0~14_combout\ : std_logic;
SIGNAL \spi0|cordic|core|ALT_INV_ShiftRight1~15_combout\ : std_logic;
SIGNAL \spi0|cordic|core|ALT_INV_ShiftRight1~14_combout\ : std_logic;
SIGNAL \spi0|cordic|ALT_INV_y_in_c~9_combout\ : std_logic;
SIGNAL \spi0|cordic|ALT_INV_x_in_c~9_combout\ : std_logic;
SIGNAL \spi0|ALT_INV_Selector20~0_combout\ : std_logic;
SIGNAL \spi0|cordic|core|ALT_INV_Mux11~0_combout\ : std_logic;
SIGNAL \spi0|cordic|ALT_INV_z_in_c~12_combout\ : std_logic;
SIGNAL \spi0|cordic|core|ALT_INV_ShiftRight0~13_combout\ : std_logic;
SIGNAL \spi0|cordic|core|ALT_INV_ShiftRight0~12_combout\ : std_logic;
SIGNAL \spi0|cordic|core|ALT_INV_ShiftRight1~13_combout\ : std_logic;
SIGNAL \spi0|cordic|core|ALT_INV_ShiftRight1~12_combout\ : std_logic;
SIGNAL \spi0|cordic|ALT_INV_y_in_c~8_combout\ : std_logic;
SIGNAL \spi0|cordic|ALT_INV_x_in_c~8_combout\ : std_logic;
SIGNAL \spi0|ALT_INV_Selector21~0_combout\ : std_logic;
SIGNAL \spi0|cordic|core|ALT_INV_Mux10~0_combout\ : std_logic;
SIGNAL \spi0|cordic|ALT_INV_z_in_c~11_combout\ : std_logic;
SIGNAL \spi0|cordic|core|ALT_INV_ShiftRight0~11_combout\ : std_logic;
SIGNAL \spi0|cordic|core|ALT_INV_ShiftRight0~10_combout\ : std_logic;
SIGNAL \spi0|cordic|core|ALT_INV_ShiftRight1~11_combout\ : std_logic;
SIGNAL \spi0|cordic|core|ALT_INV_ShiftRight1~10_combout\ : std_logic;
SIGNAL \spi0|cordic|ALT_INV_y_in_c~7_combout\ : std_logic;
SIGNAL \spi0|cordic|ALT_INV_x_in_c~7_combout\ : std_logic;
SIGNAL \spi0|ALT_INV_Selector22~0_combout\ : std_logic;
SIGNAL \spi0|cordic|core|ALT_INV_Mux9~0_combout\ : std_logic;
SIGNAL \spi0|cordic|ALT_INV_z_in_c~10_combout\ : std_logic;
SIGNAL \spi0|cordic|core|ALT_INV_ShiftRight0~9_combout\ : std_logic;
SIGNAL \spi0|cordic|core|ALT_INV_ShiftRight0~8_combout\ : std_logic;
SIGNAL \spi0|cordic|core|ALT_INV_ShiftRight1~9_combout\ : std_logic;
SIGNAL \spi0|cordic|core|ALT_INV_ShiftRight1~8_combout\ : std_logic;
SIGNAL \spi0|cordic|ALT_INV_y_in_c~6_combout\ : std_logic;
SIGNAL \spi0|cordic|ALT_INV_x_in_c~6_combout\ : std_logic;
SIGNAL \spi0|cordic|ALT_INV_z_in_c~9_combout\ : std_logic;
SIGNAL \spi0|ALT_INV_Selector23~0_combout\ : std_logic;
SIGNAL \spi0|cordic|core|ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \spi0|cordic|ALT_INV_z_in_c~8_combout\ : std_logic;
SIGNAL \spi0|cordic|core|ALT_INV_ShiftRight0~7_combout\ : std_logic;
SIGNAL \spi0|cordic|core|ALT_INV_ShiftRight0~6_combout\ : std_logic;
SIGNAL \spi0|cordic|core|ALT_INV_ShiftRight1~7_combout\ : std_logic;
SIGNAL \spi0|cordic|core|ALT_INV_ShiftRight1~6_combout\ : std_logic;
SIGNAL \spi0|cordic|ALT_INV_y_in_c~5_combout\ : std_logic;
SIGNAL \spi0|cordic|ALT_INV_x_in_c~5_combout\ : std_logic;
SIGNAL \spi0|cordic|core|ALT_INV_Mux1~1_combout\ : std_logic;
SIGNAL \spi0|cordic|ALT_INV_z_in_c~7_combout\ : std_logic;
SIGNAL \spi0|ALT_INV_Selector24~1_combout\ : std_logic;
SIGNAL \spi0|cordic|core|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \spi0|cordic|ALT_INV_z_in_c~6_combout\ : std_logic;
SIGNAL \spi0|cordic|core|ALT_INV_ShiftRight0~5_combout\ : std_logic;
SIGNAL \spi0|cordic|core|ALT_INV_ShiftRight0~4_combout\ : std_logic;
SIGNAL \spi0|cordic|core|ALT_INV_ShiftRight1~5_combout\ : std_logic;
SIGNAL \spi0|cordic|core|ALT_INV_ShiftRight1~4_combout\ : std_logic;
SIGNAL \spi0|cordic|ALT_INV_y_in_c~4_combout\ : std_logic;
SIGNAL \spi0|cordic|ALT_INV_x_in_c~4_combout\ : std_logic;
SIGNAL \spi0|cordic|core|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \spi0|cordic|ALT_INV_z_in_c~5_combout\ : std_logic;
SIGNAL \spi0|ALT_INV_Selector25~0_combout\ : std_logic;
SIGNAL \spi0|cordic|core|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \spi0|cordic|ALT_INV_z_in_c~4_combout\ : std_logic;
SIGNAL \spi0|cordic|core|ALT_INV_ShiftRight0~3_combout\ : std_logic;
SIGNAL \spi0|cordic|core|ALT_INV_ShiftRight1~3_combout\ : std_logic;
SIGNAL \spi0|cordic|ALT_INV_y_in_c~3_combout\ : std_logic;
SIGNAL \spi0|cordic|ALT_INV_x_in_c~3_combout\ : std_logic;
SIGNAL \spi0|cordic|ALT_INV_z_in_c~3_combout\ : std_logic;
SIGNAL \spi0|ALT_INV_Selector26~0_combout\ : std_logic;
SIGNAL \spi0|cordic|core|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \spi0|cordic|ALT_INV_z_in_c~2_combout\ : std_logic;
SIGNAL \spi0|cordic|core|ALT_INV_ShiftRight0~2_combout\ : std_logic;
SIGNAL \spi0|cordic|core|ALT_INV_ShiftRight1~2_combout\ : std_logic;
SIGNAL \spi0|cordic|ALT_INV_y_in_c~2_combout\ : std_logic;
SIGNAL \spi0|cordic|ALT_INV_x_in_c~2_combout\ : std_logic;
SIGNAL \spi0|ALT_INV_Selector2~0_combout\ : std_logic;
SIGNAL \spi0|ALT_INV_Selector0~2_combout\ : std_logic;
SIGNAL \spi0|ALT_INV_Selector27~0_combout\ : std_logic;
SIGNAL \spi0|cordic|core|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \spi0|cordic|ALT_INV_z_in_c~1_combout\ : std_logic;
SIGNAL \spi0|ALT_INV_Selector5~0_combout\ : std_logic;
SIGNAL \spi0|cordic|core|ALT_INV_ShiftRight0~1_combout\ : std_logic;
SIGNAL \spi0|cordic|core|ALT_INV_ShiftRight1~1_combout\ : std_logic;
SIGNAL \spi0|cordic|ALT_INV_y_in_c~1_combout\ : std_logic;
SIGNAL \spi0|cordic|ALT_INV_x_in_c~1_combout\ : std_logic;
SIGNAL \spi0|ALT_INV_y_in[0]~0_combout\ : std_logic;
SIGNAL \spi0|ALT_INV_x_in[0]~0_combout\ : std_logic;
SIGNAL \spi0|ALT_INV_state.READ_X~q\ : std_logic;
SIGNAL \spi0|cordic|ALT_INV_Selector1~0_combout\ : std_logic;
SIGNAL \spi0|ALT_INV_Selector28~0_combout\ : std_logic;
SIGNAL \spi0|ALT_INV_state.READ_Y~q\ : std_logic;
SIGNAL \spi0|cordic|core|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \spi0|cordic|ALT_INV_z_in_c~0_combout\ : std_logic;
SIGNAL \spi0|cordic|core|ALT_INV_ShiftRight0~0_combout\ : std_logic;
SIGNAL \spi0|cordic|ALT_INV_WideOr5~0_combout\ : std_logic;
SIGNAL \spi0|cordic|core|ALT_INV_ShiftRight1~0_combout\ : std_logic;
SIGNAL \spi0|cordic|ALT_INV_y_in_c~0_combout\ : std_logic;
SIGNAL \spi0|cordic|ALT_INV_x_in_c~0_combout\ : std_logic;
SIGNAL \spi0|cordic|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \spi0|cordic|ALT_INV_Selector11~0_combout\ : std_logic;
SIGNAL \spi0|cordic|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \spi0|cordic|ALT_INV_state.LOAD_DATA~q\ : std_logic;
SIGNAL \spi0|ALT_INV_Selector29~0_combout\ : std_logic;
SIGNAL \spi0|ALT_INV_state.READ_Z_L~q\ : std_logic;
SIGNAL \spi0|cordic|core|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \spi0|cordic|core|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \spi0|ALT_INV_WideOr2~0_combout\ : std_logic;
SIGNAL \spi0|cordic|ALT_INV_state.START_STATE~q\ : std_logic;
SIGNAL \spi0|ALT_INV_dataIn\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \spi0|cordic|ALT_INV_z_output\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \spi0|cordic|ALT_INV_x_output\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \spi0|cordic|ALT_INV_y_output\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \spi0|cordic|core|ALT_INV_z_out\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \spi0|cordic|core|ALT_INV_y_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \spi0|cordic|core|ALT_INV_x_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \spi0|cordic|ALT_INV_z_in_c\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \spi0|ALT_INV_z_in\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \spi0|cordic|ALT_INV_y_in_c\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \spi0|cordic|ALT_INV_x_in_c\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \spi0|ALT_INV_y_in\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \spi0|ALT_INV_x_in\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \spi0|cordic|ALT_INV_index\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \spi0|cordic|ALT_INV_start_core~combout\ : std_logic;
SIGNAL \spi0|cordic|ALT_INV_sgn~combout\ : std_logic;
SIGNAL \spi0|ALT_INV_start~combout\ : std_logic;
SIGNAL \spi0|cordic|core|ALT_INV_done_core_flag~combout\ : std_logic;
SIGNAL \spi0|cordic|ALT_INV_done_flag~combout\ : std_logic;
SIGNAL \spi0|cordic|ALT_INV_z_in_c~19_combout\ : std_logic;
SIGNAL \spi0|cordic|ALT_INV_y_in_c~15_combout\ : std_logic;
SIGNAL \spi0|cordic|ALT_INV_x_in_c~15_combout\ : std_logic;
SIGNAL \spi0|cordic|core|ALT_INV_Mux17~0_combout\ : std_logic;
SIGNAL \spi0|cordic|ALT_INV_z_in_c~18_combout\ : std_logic;
SIGNAL \spi0|cordic|core|ALT_INV_ShiftRight0~25_combout\ : std_logic;
SIGNAL \spi0|cordic|core|ALT_INV_ShiftRight0~24_combout\ : std_logic;
SIGNAL \spi0|cordic|core|ALT_INV_ShiftRight1~25_combout\ : std_logic;
SIGNAL \spi0|cordic|core|ALT_INV_ShiftRight1~24_combout\ : std_logic;
SIGNAL \spi0|cordic|ALT_INV_y_in_c~14_combout\ : std_logic;
SIGNAL \spi0|cordic|ALT_INV_x_in_c~14_combout\ : std_logic;
SIGNAL \spi0|cordic|core|ALT_INV_Mux16~0_combout\ : std_logic;
SIGNAL \spi0|cordic|ALT_INV_z_in_c~17_combout\ : std_logic;
SIGNAL \spi0|cordic|core|ALT_INV_ShiftRight0~23_combout\ : std_logic;
SIGNAL \spi0|cordic|core|ALT_INV_ShiftRight0~22_combout\ : std_logic;
SIGNAL \spi0|cordic|core|ALT_INV_ShiftRight1~23_combout\ : std_logic;
SIGNAL \spi0|cordic|core|ALT_INV_ShiftRight1~22_combout\ : std_logic;
SIGNAL \spi0|cordic|ALT_INV_y_in_c~13_combout\ : std_logic;
SIGNAL \spi0|cordic|ALT_INV_x_in_c~13_combout\ : std_logic;
SIGNAL \spi0|cordic|core|ALT_INV_Mux15~0_combout\ : std_logic;
SIGNAL \spi0|cordic|ALT_INV_z_in_c~16_combout\ : std_logic;
SIGNAL \spi0|cordic|core|ALT_INV_ShiftRight0~21_combout\ : std_logic;
SIGNAL \spi0|cordic|core|ALT_INV_ShiftRight0~20_combout\ : std_logic;
SIGNAL \spi0|cordic|core|ALT_INV_ShiftRight1~21_combout\ : std_logic;
SIGNAL \spi0|cordic|core|ALT_INV_ShiftRight1~20_combout\ : std_logic;
SIGNAL \spi0|cordic|ALT_INV_y_in_c~12_combout\ : std_logic;
SIGNAL \spi0|cordic|ALT_INV_x_in_c~12_combout\ : std_logic;
SIGNAL \spi0|ALT_INV_Selector15~0_combout\ : std_logic;
SIGNAL \spi0|cordic|core|ALT_INV_Mux14~0_combout\ : std_logic;
SIGNAL \spi0|cordic|ALT_INV_z_in_c~15_combout\ : std_logic;
SIGNAL \spi0|cordic|core|ALT_INV_ShiftRight0~19_combout\ : std_logic;
SIGNAL \spi0|cordic|core|ALT_INV_ShiftRight0~18_combout\ : std_logic;
SIGNAL \spi0|cordic|core|ALT_INV_ShiftRight1~19_combout\ : std_logic;
SIGNAL \spi0|cordic|core|ALT_INV_ShiftRight1~18_combout\ : std_logic;
SIGNAL \spi0|cordic|ALT_INV_y_in_c~11_combout\ : std_logic;
SIGNAL \spi0|cordic|ALT_INV_x_in_c~11_combout\ : std_logic;
SIGNAL \spi0|ALT_INV_Selector17~0_combout\ : std_logic;
SIGNAL \spi0|cordic|core|ALT_INV_Mux13~0_combout\ : std_logic;
SIGNAL \spi0|cordic|ALT_INV_z_in_c~14_combout\ : std_logic;
SIGNAL \spi0|cordic|core|ALT_INV_ShiftRight0~17_combout\ : std_logic;
SIGNAL \spi0|cordic|core|ALT_INV_ShiftRight0~16_combout\ : std_logic;
SIGNAL \spi0|cordic|core|ALT_INV_ShiftRight1~17_combout\ : std_logic;
SIGNAL \spi0|cordic|core|ALT_INV_ShiftRight1~16_combout\ : std_logic;
SIGNAL \spi0|cordic|ALT_INV_y_in_c~10_combout\ : std_logic;
SIGNAL \spi0|cordic|ALT_INV_x_in_c~10_combout\ : std_logic;
SIGNAL \spi0|spi|ALT_INV_MOSI_counter[0]~DUPLICATE_q\ : std_logic;
SIGNAL \spi0|spi|ALT_INV_MOSI_counter[1]~DUPLICATE_q\ : std_logic;
SIGNAL \spi0|spi|ALT_INV_MOSI_counter[2]~DUPLICATE_q\ : std_logic;
SIGNAL \spi0|spi|ALT_INV_data_out[4]~DUPLICATE_q\ : std_logic;
SIGNAL \spi0|spi|ALT_INV_data_out[6]~DUPLICATE_q\ : std_logic;
SIGNAL \spi0|spi|ALT_INV_data_out[8]~DUPLICATE_q\ : std_logic;
SIGNAL \spi0|spi|ALT_INV_data_out[9]~DUPLICATE_q\ : std_logic;
SIGNAL \spi0|spi|ALT_INV_data_out[11]~DUPLICATE_q\ : std_logic;
SIGNAL \spi0|spi|ALT_INV_data_out[12]~DUPLICATE_q\ : std_logic;
SIGNAL \spi0|spi|ALT_INV_data_out[13]~DUPLICATE_q\ : std_logic;
SIGNAL \spi0|spi|ALT_INV_data_out[14]~DUPLICATE_q\ : std_logic;
SIGNAL \spi0|spi|ALT_INV_data_out[0]~DUPLICATE_q\ : std_logic;
SIGNAL \spi0|spi|ALT_INV_data_out[2]~DUPLICATE_q\ : std_logic;
SIGNAL \spi0|spi|ALT_INV_fall_flag~DUPLICATE_q\ : std_logic;
SIGNAL \spi0|spi|ALT_INV_MISO_counter[0]~DUPLICATE_q\ : std_logic;
SIGNAL \spi0|spi|ALT_INV_MISO_counter[1]~DUPLICATE_q\ : std_logic;
SIGNAL \spi0|spi|ALT_INV_MISO_counter[2]~DUPLICATE_q\ : std_logic;
SIGNAL \spi0|spi|ALT_INV_rise_flag~DUPLICATE_q\ : std_logic;
SIGNAL \spi0|blink_hb|ALT_INV_counter_output[24]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;

BEGIN

ww_FPGA_CLK1_50 <= FPGA_CLK1_50;
ww_SW <= SW;
LED <= ww_LED;
ARDUINO_IO <= ww_ARDUINO_IO;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\spi0|cordic|core|ALT_INV_Add5~9_sumout\ <= NOT \spi0|cordic|core|Add5~9_sumout\;
\spi0|cordic|core|ALT_INV_Add3~9_sumout\ <= NOT \spi0|cordic|core|Add3~9_sumout\;
\spi0|cordic|core|ALT_INV_Add1~9_sumout\ <= NOT \spi0|cordic|core|Add1~9_sumout\;
\spi0|cordic|core|ALT_INV_Add5~5_sumout\ <= NOT \spi0|cordic|core|Add5~5_sumout\;
\spi0|cordic|core|ALT_INV_Add3~5_sumout\ <= NOT \spi0|cordic|core|Add3~5_sumout\;
\spi0|cordic|core|ALT_INV_Add1~5_sumout\ <= NOT \spi0|cordic|core|Add1~5_sumout\;
\spi0|cordic|core|ALT_INV_Add5~1_sumout\ <= NOT \spi0|cordic|core|Add5~1_sumout\;
\spi0|cordic|core|ALT_INV_Add3~1_sumout\ <= NOT \spi0|cordic|core|Add3~1_sumout\;
\spi0|cordic|core|ALT_INV_Add1~1_sumout\ <= NOT \spi0|cordic|core|Add1~1_sumout\;
\spi0|spi|ALT_INV_data_to_sent\(15) <= NOT \spi0|spi|data_to_sent\(15);
\spi0|blink_hb|ALT_INV_Add0~93_sumout\ <= NOT \spi0|blink_hb|Add0~93_sumout\;
\spi0|cordic|core|ALT_INV_Add5~77_sumout\ <= NOT \spi0|cordic|core|Add5~77_sumout\;
\spi0|cordic|core|ALT_INV_Add3~61_sumout\ <= NOT \spi0|cordic|core|Add3~61_sumout\;
\spi0|cordic|core|ALT_INV_Add1~61_sumout\ <= NOT \spi0|cordic|core|Add1~61_sumout\;
\spi0|cordic|core|ALT_INV_Add5~73_sumout\ <= NOT \spi0|cordic|core|Add5~73_sumout\;
\spi0|cordic|core|ALT_INV_Add3~57_sumout\ <= NOT \spi0|cordic|core|Add3~57_sumout\;
\spi0|cordic|core|ALT_INV_Add1~57_sumout\ <= NOT \spi0|cordic|core|Add1~57_sumout\;
\spi0|cordic|core|ALT_INV_Add5~69_sumout\ <= NOT \spi0|cordic|core|Add5~69_sumout\;
\spi0|cordic|core|ALT_INV_Add3~53_sumout\ <= NOT \spi0|cordic|core|Add3~53_sumout\;
\spi0|cordic|core|ALT_INV_Add1~53_sumout\ <= NOT \spi0|cordic|core|Add1~53_sumout\;
\spi0|cordic|core|ALT_INV_Add5~65_sumout\ <= NOT \spi0|cordic|core|Add5~65_sumout\;
\spi0|cordic|core|ALT_INV_Add3~49_sumout\ <= NOT \spi0|cordic|core|Add3~49_sumout\;
\spi0|cordic|core|ALT_INV_Add1~49_sumout\ <= NOT \spi0|cordic|core|Add1~49_sumout\;
\spi0|cordic|core|ALT_INV_Add5~61_sumout\ <= NOT \spi0|cordic|core|Add5~61_sumout\;
\spi0|cordic|core|ALT_INV_Add3~45_sumout\ <= NOT \spi0|cordic|core|Add3~45_sumout\;
\spi0|cordic|core|ALT_INV_Add1~45_sumout\ <= NOT \spi0|cordic|core|Add1~45_sumout\;
\spi0|cordic|core|ALT_INV_Add5~57_sumout\ <= NOT \spi0|cordic|core|Add5~57_sumout\;
\spi0|cordic|core|ALT_INV_Add3~41_sumout\ <= NOT \spi0|cordic|core|Add3~41_sumout\;
\spi0|cordic|core|ALT_INV_Add1~41_sumout\ <= NOT \spi0|cordic|core|Add1~41_sumout\;
\spi0|cordic|core|ALT_INV_Add5~53_sumout\ <= NOT \spi0|cordic|core|Add5~53_sumout\;
\spi0|cordic|core|ALT_INV_Add3~37_sumout\ <= NOT \spi0|cordic|core|Add3~37_sumout\;
\spi0|cordic|core|ALT_INV_Add1~37_sumout\ <= NOT \spi0|cordic|core|Add1~37_sumout\;
\spi0|cordic|core|ALT_INV_Add5~49_sumout\ <= NOT \spi0|cordic|core|Add5~49_sumout\;
\spi0|cordic|core|ALT_INV_Add3~33_sumout\ <= NOT \spi0|cordic|core|Add3~33_sumout\;
\spi0|cordic|core|ALT_INV_Add1~33_sumout\ <= NOT \spi0|cordic|core|Add1~33_sumout\;
\spi0|cordic|core|ALT_INV_Add5~45_sumout\ <= NOT \spi0|cordic|core|Add5~45_sumout\;
\spi0|cordic|core|ALT_INV_Add3~29_sumout\ <= NOT \spi0|cordic|core|Add3~29_sumout\;
\spi0|cordic|core|ALT_INV_Add1~29_sumout\ <= NOT \spi0|cordic|core|Add1~29_sumout\;
\spi0|cordic|core|ALT_INV_Add5~41_sumout\ <= NOT \spi0|cordic|core|Add5~41_sumout\;
\spi0|cordic|core|ALT_INV_Add3~25_sumout\ <= NOT \spi0|cordic|core|Add3~25_sumout\;
\spi0|cordic|core|ALT_INV_Add1~25_sumout\ <= NOT \spi0|cordic|core|Add1~25_sumout\;
\spi0|cordic|core|ALT_INV_Add5~37_sumout\ <= NOT \spi0|cordic|core|Add5~37_sumout\;
\spi0|cordic|core|ALT_INV_Add5~33_sumout\ <= NOT \spi0|cordic|core|Add5~33_sumout\;
\spi0|cordic|core|ALT_INV_Add3~21_sumout\ <= NOT \spi0|cordic|core|Add3~21_sumout\;
\spi0|cordic|core|ALT_INV_Add1~21_sumout\ <= NOT \spi0|cordic|core|Add1~21_sumout\;
\spi0|cordic|core|ALT_INV_Add5~29_sumout\ <= NOT \spi0|cordic|core|Add5~29_sumout\;
\spi0|cordic|core|ALT_INV_Add5~25_sumout\ <= NOT \spi0|cordic|core|Add5~25_sumout\;
\spi0|cordic|core|ALT_INV_Add3~17_sumout\ <= NOT \spi0|cordic|core|Add3~17_sumout\;
\spi0|cordic|core|ALT_INV_Add1~17_sumout\ <= NOT \spi0|cordic|core|Add1~17_sumout\;
\spi0|cordic|core|ALT_INV_Add5~21_sumout\ <= NOT \spi0|cordic|core|Add5~21_sumout\;
\spi0|cordic|core|ALT_INV_Add5~17_sumout\ <= NOT \spi0|cordic|core|Add5~17_sumout\;
\spi0|cordic|core|ALT_INV_Add3~13_sumout\ <= NOT \spi0|cordic|core|Add3~13_sumout\;
\spi0|cordic|core|ALT_INV_Add1~13_sumout\ <= NOT \spi0|cordic|core|Add1~13_sumout\;
\spi0|cordic|core|ALT_INV_Add5~13_sumout\ <= NOT \spi0|cordic|core|Add5~13_sumout\;
\spi0|cordic|core|ALT_INV_state.DONE~q\ <= NOT \spi0|cordic|core|state.DONE~q\;
\spi0|cordic|core|ALT_INV_state.IDLE~q\ <= NOT \spi0|cordic|core|state.IDLE~q\;
\spi0|spi|ALT_INV_Add1~0_combout\ <= NOT \spi0|spi|Add1~0_combout\;
\spi0|spi|ALT_INV_SPI_FW~1_combout\ <= NOT \spi0|spi|SPI_FW~1_combout\;
\spi0|blink_hb|ALT_INV_counter_output\(18) <= NOT \spi0|blink_hb|counter_output\(18);
\spi0|ALT_INV_Selector30~0_combout\ <= NOT \spi0|Selector30~0_combout\;
\spi0|spi|ALT_INV_data_to_read\(12) <= NOT \spi0|spi|data_to_read\(12);
\spi0|spi|ALT_INV_data_to_read\(0) <= NOT \spi0|spi|data_to_read\(0);
\spi0|spi|ALT_INV_data_to_read\(2) <= NOT \spi0|spi|data_to_read\(2);
\spi0|ALT_INV_Selector6~0_combout\ <= NOT \spi0|Selector6~0_combout\;
\spi0|ALT_INV_state.READ_Z_H~q\ <= NOT \spi0|state.READ_Z_H~q\;
\spi0|cordic|ALT_INV_Selector6~0_combout\ <= NOT \spi0|cordic|Selector6~0_combout\;
\spi0|cordic|ALT_INV_index_loop\(0) <= NOT \spi0|cordic|index_loop\(0);
\spi0|cordic|ALT_INV_index_loop\(1) <= NOT \spi0|cordic|index_loop\(1);
\spi0|cordic|ALT_INV_index_loop\(2) <= NOT \spi0|cordic|index_loop\(2);
\spi0|cordic|ALT_INV_index_loop\(3) <= NOT \spi0|cordic|index_loop\(3);
\spi0|cordic|ALT_INV_state.CHECK_R~q\ <= NOT \spi0|cordic|state.CHECK_R~q\;
\spi0|cordic|ALT_INV_state.WAIT_CORE_DONE~q\ <= NOT \spi0|cordic|state.WAIT_CORE_DONE~q\;
\spi0|cordic|core|ALT_INV_state.EXECUTE~q\ <= NOT \spi0|cordic|core|state.EXECUTE~q\;
\spi0|ALT_INV_Selector7~1_combout\ <= NOT \spi0|Selector7~1_combout\;
\spi0|cordic|ALT_INV_WideOr1~0_combout\ <= NOT \spi0|cordic|WideOr1~0_combout\;
\spi0|cordic|ALT_INV_state.IDLE~q\ <= NOT \spi0|cordic|state.IDLE~q\;
\spi0|spi|ALT_INV_Equal6~0_combout\ <= NOT \spi0|spi|Equal6~0_combout\;
\spi0|spi|ALT_INV_MOSI_counter\(0) <= NOT \spi0|spi|MOSI_counter\(0);
\spi0|spi|ALT_INV_MOSI_counter\(1) <= NOT \spi0|spi|MOSI_counter\(1);
\spi0|spi|ALT_INV_MOSI_counter\(2) <= NOT \spi0|spi|MOSI_counter\(2);
\spi0|spi|ALT_INV_MOSI_counter\(3) <= NOT \spi0|spi|MOSI_counter\(3);
\spi0|spi|ALT_INV_MOSI_counter\(4) <= NOT \spi0|spi|MOSI_counter\(4);
\spi0|blink_hb|ALT_INV_counter_output\(19) <= NOT \spi0|blink_hb|counter_output\(19);
\spi0|ALT_INV_Selector31~0_combout\ <= NOT \spi0|Selector31~0_combout\;
\spi0|ALT_INV_Selector7~0_combout\ <= NOT \spi0|Selector7~0_combout\;
\spi0|ALT_INV_state.DONE_S~q\ <= NOT \spi0|state.DONE_S~q\;
\spi0|ALT_INV_next_state~15_combout\ <= NOT \spi0|next_state~15_combout\;
\spi0|spi|ALT_INV_data_out\(4) <= NOT \spi0|spi|data_out\(4);
\spi0|spi|ALT_INV_data_out\(5) <= NOT \spi0|spi|data_out\(5);
\spi0|spi|ALT_INV_data_out\(6) <= NOT \spi0|spi|data_out\(6);
\spi0|spi|ALT_INV_data_out\(7) <= NOT \spi0|spi|data_out\(7);
\spi0|spi|ALT_INV_data_out\(8) <= NOT \spi0|spi|data_out\(8);
\spi0|spi|ALT_INV_data_out\(9) <= NOT \spi0|spi|data_out\(9);
\spi0|ALT_INV_next_state~14_combout\ <= NOT \spi0|next_state~14_combout\;
\spi0|spi|ALT_INV_data_out\(10) <= NOT \spi0|spi|data_out\(10);
\spi0|spi|ALT_INV_data_out\(11) <= NOT \spi0|spi|data_out\(11);
\spi0|spi|ALT_INV_data_out\(12) <= NOT \spi0|spi|data_out\(12);
\spi0|spi|ALT_INV_data_out\(13) <= NOT \spi0|spi|data_out\(13);
\spi0|spi|ALT_INV_data_out\(14) <= NOT \spi0|spi|data_out\(14);
\spi0|spi|ALT_INV_data_out\(15) <= NOT \spi0|spi|data_out\(15);
\spi0|ALT_INV_next_state~13_combout\ <= NOT \spi0|next_state~13_combout\;
\spi0|spi|ALT_INV_data_out\(0) <= NOT \spi0|spi|data_out\(0);
\spi0|spi|ALT_INV_data_out\(1) <= NOT \spi0|spi|data_out\(1);
\spi0|spi|ALT_INV_data_out\(2) <= NOT \spi0|spi|data_out\(2);
\spi0|spi|ALT_INV_data_out\(3) <= NOT \spi0|spi|data_out\(3);
\spi0|ALT_INV_state.START_CORDIC~q\ <= NOT \spi0|state.START_CORDIC~q\;
\spi0|cordic|ALT_INV_state.DONE~q\ <= NOT \spi0|cordic|state.DONE~q\;
\spi0|ALT_INV_state.CORDIC_DONE~q\ <= NOT \spi0|state.CORDIC_DONE~q\;
\spi0|spi|ALT_INV_SPI_rd_wr_done_flag~q\ <= NOT \spi0|spi|SPI_rd_wr_done_flag~q\;
\spi0|blink_hb|ALT_INV_counter_output\(20) <= NOT \spi0|blink_hb|counter_output\(20);
\spi0|spi|ALT_INV_Add0~0_combout\ <= NOT \spi0|spi|Add0~0_combout\;
\spi0|spi|ALT_INV_Equal5~0_combout\ <= NOT \spi0|spi|Equal5~0_combout\;
\spi0|spi|ALT_INV_SPI_FW~0_combout\ <= NOT \spi0|spi|SPI_FW~0_combout\;
\spi0|ALT_INV_WideOr1~1_combout\ <= NOT \spi0|WideOr1~1_combout\;
\spi0|ALT_INV_state.WAIT_PATH_START~q\ <= NOT \spi0|state.WAIT_PATH_START~q\;
\spi0|ALT_INV_state.RESET_S~q\ <= NOT \spi0|state.RESET_S~q\;
\spi0|ALT_INV_Selector32~0_combout\ <= NOT \spi0|Selector32~0_combout\;
\spi0|ALT_INV_WideOr1~0_combout\ <= NOT \spi0|WideOr1~0_combout\;
\spi0|ALT_INV_state.WRITE_X~q\ <= NOT \spi0|state.WRITE_X~q\;
\spi0|ALT_INV_Selector24~0_combout\ <= NOT \spi0|Selector24~0_combout\;
\spi0|ALT_INV_state.WRITE_Z~q\ <= NOT \spi0|state.WRITE_Z~q\;
\spi0|ALT_INV_state.WRITE_Y~q\ <= NOT \spi0|state.WRITE_Y~q\;
\spi0|ALT_INV_state.WRITE_PATH~q\ <= NOT \spi0|state.WRITE_PATH~q\;
\spi0|blink_hb|ALT_INV_counter_output\(21) <= NOT \spi0|blink_hb|counter_output\(21);
\spi0|spi|ALT_INV_fall_flag~q\ <= NOT \spi0|spi|fall_flag~q\;
\spi0|spi|ALT_INV_Equal0~0_combout\ <= NOT \spi0|spi|Equal0~0_combout\;
\spi0|spi|ALT_INV_MISO_counter\(0) <= NOT \spi0|spi|MISO_counter\(0);
\spi0|spi|ALT_INV_MISO_counter\(1) <= NOT \spi0|spi|MISO_counter\(1);
\spi0|spi|ALT_INV_MISO_counter\(2) <= NOT \spi0|spi|MISO_counter\(2);
\spi0|spi|ALT_INV_MISO_counter\(3) <= NOT \spi0|spi|MISO_counter\(3);
\spi0|spi|ALT_INV_MISO_counter\(4) <= NOT \spi0|spi|MISO_counter\(4);
\spi0|blink_hb|ALT_INV_counter_output\(22) <= NOT \spi0|blink_hb|counter_output\(22);
\spi0|spi|ALT_INV_data_to_sent~0_combout\ <= NOT \spi0|spi|data_to_sent~0_combout\;
\spi0|spi|ALT_INV_rise_flag~q\ <= NOT \spi0|spi|rise_flag~q\;
\spi0|spi|ALT_INV_sck_synchronizer\(0) <= NOT \spi0|spi|sck_synchronizer\(0);
\spi0|spi|ALT_INV_sck_synchronizer\(1) <= NOT \spi0|spi|sck_synchronizer\(1);
\spi0|spi|ALT_INV_sck_synchronizer\(6) <= NOT \spi0|spi|sck_synchronizer\(6);
\spi0|spi|ALT_INV_sck_synchronizer\(7) <= NOT \spi0|spi|sck_synchronizer\(7);
\spi0|blink_hb|ALT_INV_counter_output\(23) <= NOT \spi0|blink_hb|counter_output\(23);
\spi0|spi|ALT_INV_SPI_MISO~q\ <= NOT \spi0|spi|SPI_MISO~q\;
\spi0|ALT_INV_Selector19~0_combout\ <= NOT \spi0|Selector19~0_combout\;
\spi0|cordic|core|ALT_INV_Mux12~0_combout\ <= NOT \spi0|cordic|core|Mux12~0_combout\;
\spi0|cordic|ALT_INV_z_in_c~13_combout\ <= NOT \spi0|cordic|z_in_c~13_combout\;
\spi0|cordic|core|ALT_INV_ShiftRight0~15_combout\ <= NOT \spi0|cordic|core|ShiftRight0~15_combout\;
\spi0|cordic|core|ALT_INV_ShiftRight0~14_combout\ <= NOT \spi0|cordic|core|ShiftRight0~14_combout\;
\spi0|cordic|core|ALT_INV_ShiftRight1~15_combout\ <= NOT \spi0|cordic|core|ShiftRight1~15_combout\;
\spi0|cordic|core|ALT_INV_ShiftRight1~14_combout\ <= NOT \spi0|cordic|core|ShiftRight1~14_combout\;
\spi0|cordic|ALT_INV_y_in_c~9_combout\ <= NOT \spi0|cordic|y_in_c~9_combout\;
\spi0|cordic|ALT_INV_x_in_c~9_combout\ <= NOT \spi0|cordic|x_in_c~9_combout\;
\spi0|blink_hb|ALT_INV_counter_output\(8) <= NOT \spi0|blink_hb|counter_output\(8);
\spi0|ALT_INV_Selector20~0_combout\ <= NOT \spi0|Selector20~0_combout\;
\spi0|cordic|core|ALT_INV_Mux11~0_combout\ <= NOT \spi0|cordic|core|Mux11~0_combout\;
\spi0|cordic|ALT_INV_z_in_c~12_combout\ <= NOT \spi0|cordic|z_in_c~12_combout\;
\spi0|cordic|core|ALT_INV_ShiftRight0~13_combout\ <= NOT \spi0|cordic|core|ShiftRight0~13_combout\;
\spi0|cordic|core|ALT_INV_ShiftRight0~12_combout\ <= NOT \spi0|cordic|core|ShiftRight0~12_combout\;
\spi0|cordic|core|ALT_INV_ShiftRight1~13_combout\ <= NOT \spi0|cordic|core|ShiftRight1~13_combout\;
\spi0|cordic|core|ALT_INV_ShiftRight1~12_combout\ <= NOT \spi0|cordic|core|ShiftRight1~12_combout\;
\spi0|cordic|ALT_INV_y_in_c~8_combout\ <= NOT \spi0|cordic|y_in_c~8_combout\;
\spi0|cordic|ALT_INV_x_in_c~8_combout\ <= NOT \spi0|cordic|x_in_c~8_combout\;
\spi0|blink_hb|ALT_INV_counter_output\(9) <= NOT \spi0|blink_hb|counter_output\(9);
\spi0|ALT_INV_Selector21~0_combout\ <= NOT \spi0|Selector21~0_combout\;
\spi0|cordic|core|ALT_INV_Mux10~0_combout\ <= NOT \spi0|cordic|core|Mux10~0_combout\;
\spi0|cordic|ALT_INV_z_in_c~11_combout\ <= NOT \spi0|cordic|z_in_c~11_combout\;
\spi0|cordic|core|ALT_INV_ShiftRight0~11_combout\ <= NOT \spi0|cordic|core|ShiftRight0~11_combout\;
\spi0|cordic|core|ALT_INV_ShiftRight0~10_combout\ <= NOT \spi0|cordic|core|ShiftRight0~10_combout\;
\spi0|cordic|core|ALT_INV_ShiftRight1~11_combout\ <= NOT \spi0|cordic|core|ShiftRight1~11_combout\;
\spi0|cordic|core|ALT_INV_ShiftRight1~10_combout\ <= NOT \spi0|cordic|core|ShiftRight1~10_combout\;
\spi0|cordic|ALT_INV_y_in_c~7_combout\ <= NOT \spi0|cordic|y_in_c~7_combout\;
\spi0|cordic|ALT_INV_x_in_c~7_combout\ <= NOT \spi0|cordic|x_in_c~7_combout\;
\spi0|blink_hb|ALT_INV_counter_output\(10) <= NOT \spi0|blink_hb|counter_output\(10);
\spi0|ALT_INV_Selector22~0_combout\ <= NOT \spi0|Selector22~0_combout\;
\spi0|cordic|core|ALT_INV_Mux9~0_combout\ <= NOT \spi0|cordic|core|Mux9~0_combout\;
\spi0|cordic|ALT_INV_z_in_c~10_combout\ <= NOT \spi0|cordic|z_in_c~10_combout\;
\spi0|cordic|core|ALT_INV_ShiftRight0~9_combout\ <= NOT \spi0|cordic|core|ShiftRight0~9_combout\;
\spi0|cordic|core|ALT_INV_ShiftRight0~8_combout\ <= NOT \spi0|cordic|core|ShiftRight0~8_combout\;
\spi0|cordic|core|ALT_INV_ShiftRight1~9_combout\ <= NOT \spi0|cordic|core|ShiftRight1~9_combout\;
\spi0|cordic|core|ALT_INV_ShiftRight1~8_combout\ <= NOT \spi0|cordic|core|ShiftRight1~8_combout\;
\spi0|cordic|ALT_INV_y_in_c~6_combout\ <= NOT \spi0|cordic|y_in_c~6_combout\;
\spi0|cordic|ALT_INV_x_in_c~6_combout\ <= NOT \spi0|cordic|x_in_c~6_combout\;
\spi0|cordic|ALT_INV_z_in_c~9_combout\ <= NOT \spi0|cordic|z_in_c~9_combout\;
\spi0|blink_hb|ALT_INV_counter_output\(11) <= NOT \spi0|blink_hb|counter_output\(11);
\spi0|ALT_INV_Selector23~0_combout\ <= NOT \spi0|Selector23~0_combout\;
\spi0|cordic|core|ALT_INV_Mux8~0_combout\ <= NOT \spi0|cordic|core|Mux8~0_combout\;
\spi0|cordic|ALT_INV_z_in_c~8_combout\ <= NOT \spi0|cordic|z_in_c~8_combout\;
\spi0|cordic|core|ALT_INV_ShiftRight0~7_combout\ <= NOT \spi0|cordic|core|ShiftRight0~7_combout\;
\spi0|cordic|core|ALT_INV_ShiftRight0~6_combout\ <= NOT \spi0|cordic|core|ShiftRight0~6_combout\;
\spi0|cordic|core|ALT_INV_ShiftRight1~7_combout\ <= NOT \spi0|cordic|core|ShiftRight1~7_combout\;
\spi0|cordic|core|ALT_INV_ShiftRight1~6_combout\ <= NOT \spi0|cordic|core|ShiftRight1~6_combout\;
\spi0|cordic|ALT_INV_y_in_c~5_combout\ <= NOT \spi0|cordic|y_in_c~5_combout\;
\spi0|cordic|ALT_INV_x_in_c~5_combout\ <= NOT \spi0|cordic|x_in_c~5_combout\;
\spi0|cordic|core|ALT_INV_Mux1~1_combout\ <= NOT \spi0|cordic|core|Mux1~1_combout\;
\spi0|cordic|ALT_INV_z_in_c~7_combout\ <= NOT \spi0|cordic|z_in_c~7_combout\;
\spi0|blink_hb|ALT_INV_counter_output\(12) <= NOT \spi0|blink_hb|counter_output\(12);
\spi0|ALT_INV_Selector24~1_combout\ <= NOT \spi0|Selector24~1_combout\;
\spi0|cordic|core|ALT_INV_Mux7~0_combout\ <= NOT \spi0|cordic|core|Mux7~0_combout\;
\spi0|cordic|ALT_INV_z_in_c~6_combout\ <= NOT \spi0|cordic|z_in_c~6_combout\;
\spi0|cordic|core|ALT_INV_ShiftRight0~5_combout\ <= NOT \spi0|cordic|core|ShiftRight0~5_combout\;
\spi0|cordic|core|ALT_INV_ShiftRight0~4_combout\ <= NOT \spi0|cordic|core|ShiftRight0~4_combout\;
\spi0|cordic|core|ALT_INV_ShiftRight1~5_combout\ <= NOT \spi0|cordic|core|ShiftRight1~5_combout\;
\spi0|cordic|core|ALT_INV_ShiftRight1~4_combout\ <= NOT \spi0|cordic|core|ShiftRight1~4_combout\;
\spi0|cordic|ALT_INV_y_in_c~4_combout\ <= NOT \spi0|cordic|y_in_c~4_combout\;
\spi0|cordic|ALT_INV_x_in_c~4_combout\ <= NOT \spi0|cordic|x_in_c~4_combout\;
\spi0|cordic|core|ALT_INV_Mux0~0_combout\ <= NOT \spi0|cordic|core|Mux0~0_combout\;
\spi0|cordic|ALT_INV_z_in_c~5_combout\ <= NOT \spi0|cordic|z_in_c~5_combout\;
\spi0|blink_hb|ALT_INV_counter_output\(13) <= NOT \spi0|blink_hb|counter_output\(13);
\spi0|ALT_INV_Selector25~0_combout\ <= NOT \spi0|Selector25~0_combout\;
\spi0|cordic|core|ALT_INV_Mux6~0_combout\ <= NOT \spi0|cordic|core|Mux6~0_combout\;
\spi0|cordic|ALT_INV_z_in_c~4_combout\ <= NOT \spi0|cordic|z_in_c~4_combout\;
\spi0|cordic|core|ALT_INV_ShiftRight0~3_combout\ <= NOT \spi0|cordic|core|ShiftRight0~3_combout\;
\spi0|cordic|core|ALT_INV_ShiftRight1~3_combout\ <= NOT \spi0|cordic|core|ShiftRight1~3_combout\;
\spi0|cordic|ALT_INV_y_in_c~3_combout\ <= NOT \spi0|cordic|y_in_c~3_combout\;
\spi0|cordic|ALT_INV_x_in_c~3_combout\ <= NOT \spi0|cordic|x_in_c~3_combout\;
\spi0|cordic|ALT_INV_z_in_c~3_combout\ <= NOT \spi0|cordic|z_in_c~3_combout\;
\spi0|blink_hb|ALT_INV_counter_output\(14) <= NOT \spi0|blink_hb|counter_output\(14);
\spi0|ALT_INV_Selector26~0_combout\ <= NOT \spi0|Selector26~0_combout\;
\spi0|cordic|core|ALT_INV_Mux5~0_combout\ <= NOT \spi0|cordic|core|Mux5~0_combout\;
\spi0|cordic|ALT_INV_z_in_c~2_combout\ <= NOT \spi0|cordic|z_in_c~2_combout\;
\spi0|cordic|core|ALT_INV_ShiftRight0~2_combout\ <= NOT \spi0|cordic|core|ShiftRight0~2_combout\;
\spi0|cordic|core|ALT_INV_ShiftRight1~2_combout\ <= NOT \spi0|cordic|core|ShiftRight1~2_combout\;
\spi0|cordic|ALT_INV_y_in_c~2_combout\ <= NOT \spi0|cordic|y_in_c~2_combout\;
\spi0|cordic|ALT_INV_x_in_c~2_combout\ <= NOT \spi0|cordic|x_in_c~2_combout\;
\spi0|ALT_INV_Selector2~0_combout\ <= NOT \spi0|Selector2~0_combout\;
\spi0|ALT_INV_Selector0~2_combout\ <= NOT \spi0|Selector0~2_combout\;
\spi0|blink_hb|ALT_INV_counter_output\(15) <= NOT \spi0|blink_hb|counter_output\(15);
\spi0|ALT_INV_Selector27~0_combout\ <= NOT \spi0|Selector27~0_combout\;
\spi0|cordic|core|ALT_INV_Mux4~0_combout\ <= NOT \spi0|cordic|core|Mux4~0_combout\;
\spi0|cordic|ALT_INV_z_in_c~1_combout\ <= NOT \spi0|cordic|z_in_c~1_combout\;
\spi0|ALT_INV_Selector5~0_combout\ <= NOT \spi0|Selector5~0_combout\;
\spi0|cordic|core|ALT_INV_ShiftRight0~1_combout\ <= NOT \spi0|cordic|core|ShiftRight0~1_combout\;
\spi0|cordic|core|ALT_INV_ShiftRight1~1_combout\ <= NOT \spi0|cordic|core|ShiftRight1~1_combout\;
\spi0|cordic|ALT_INV_y_in_c~1_combout\ <= NOT \spi0|cordic|y_in_c~1_combout\;
\spi0|cordic|ALT_INV_x_in_c~1_combout\ <= NOT \spi0|cordic|x_in_c~1_combout\;
\spi0|ALT_INV_y_in[0]~0_combout\ <= NOT \spi0|y_in[0]~0_combout\;
\spi0|ALT_INV_x_in[0]~0_combout\ <= NOT \spi0|x_in[0]~0_combout\;
\spi0|ALT_INV_state.READ_X~q\ <= NOT \spi0|state.READ_X~q\;
\spi0|cordic|ALT_INV_Selector1~0_combout\ <= NOT \spi0|cordic|Selector1~0_combout\;
\spi0|blink_hb|ALT_INV_counter_output\(16) <= NOT \spi0|blink_hb|counter_output\(16);
\spi0|ALT_INV_Selector28~0_combout\ <= NOT \spi0|Selector28~0_combout\;
\spi0|ALT_INV_state.READ_Y~q\ <= NOT \spi0|state.READ_Y~q\;
\spi0|cordic|core|ALT_INV_Mux3~0_combout\ <= NOT \spi0|cordic|core|Mux3~0_combout\;
\spi0|cordic|ALT_INV_z_in_c~0_combout\ <= NOT \spi0|cordic|z_in_c~0_combout\;
\spi0|cordic|core|ALT_INV_ShiftRight0~0_combout\ <= NOT \spi0|cordic|core|ShiftRight0~0_combout\;
\spi0|cordic|ALT_INV_WideOr5~0_combout\ <= NOT \spi0|cordic|WideOr5~0_combout\;
\spi0|cordic|core|ALT_INV_ShiftRight1~0_combout\ <= NOT \spi0|cordic|core|ShiftRight1~0_combout\;
\spi0|cordic|ALT_INV_y_in_c~0_combout\ <= NOT \spi0|cordic|y_in_c~0_combout\;
\spi0|cordic|ALT_INV_x_in_c~0_combout\ <= NOT \spi0|cordic|x_in_c~0_combout\;
\spi0|cordic|ALT_INV_WideOr0~0_combout\ <= NOT \spi0|cordic|WideOr0~0_combout\;
\spi0|cordic|ALT_INV_Selector11~0_combout\ <= NOT \spi0|cordic|Selector11~0_combout\;
\spi0|cordic|ALT_INV_Equal0~0_combout\ <= NOT \spi0|cordic|Equal0~0_combout\;
\spi0|cordic|ALT_INV_state.LOAD_DATA~q\ <= NOT \spi0|cordic|state.LOAD_DATA~q\;
\spi0|blink_hb|ALT_INV_counter_output\(17) <= NOT \spi0|blink_hb|counter_output\(17);
\spi0|ALT_INV_Selector29~0_combout\ <= NOT \spi0|Selector29~0_combout\;
\spi0|ALT_INV_state.READ_Z_L~q\ <= NOT \spi0|state.READ_Z_L~q\;
\spi0|cordic|core|ALT_INV_Mux2~0_combout\ <= NOT \spi0|cordic|core|Mux2~0_combout\;
\spi0|cordic|core|ALT_INV_Mux1~0_combout\ <= NOT \spi0|cordic|core|Mux1~0_combout\;
\spi0|ALT_INV_WideOr2~0_combout\ <= NOT \spi0|WideOr2~0_combout\;
\spi0|cordic|ALT_INV_state.START_STATE~q\ <= NOT \spi0|cordic|state.START_STATE~q\;
\spi0|ALT_INV_dataIn\(10) <= NOT \spi0|dataIn\(10);
\spi0|cordic|ALT_INV_z_output\(11) <= NOT \spi0|cordic|z_output\(11);
\spi0|cordic|ALT_INV_x_output\(11) <= NOT \spi0|cordic|x_output\(11);
\spi0|cordic|ALT_INV_y_output\(11) <= NOT \spi0|cordic|y_output\(11);
\spi0|cordic|core|ALT_INV_z_out\(12) <= NOT \spi0|cordic|core|z_out\(12);
\spi0|cordic|core|ALT_INV_y_out\(12) <= NOT \spi0|cordic|core|y_out\(12);
\spi0|cordic|core|ALT_INV_x_out\(12) <= NOT \spi0|cordic|core|x_out\(12);
\spi0|cordic|ALT_INV_z_in_c\(14) <= NOT \spi0|cordic|z_in_c\(14);
\spi0|ALT_INV_z_in\(15) <= NOT \spi0|z_in\(15);
\spi0|cordic|ALT_INV_y_in_c\(14) <= NOT \spi0|cordic|y_in_c\(14);
\spi0|cordic|ALT_INV_x_in_c\(14) <= NOT \spi0|cordic|x_in_c\(14);
\spi0|ALT_INV_y_in\(15) <= NOT \spi0|y_in\(15);
\spi0|ALT_INV_x_in\(15) <= NOT \spi0|x_in\(15);
\spi0|cordic|core|ALT_INV_z_out\(19) <= NOT \spi0|cordic|core|z_out\(19);
\spi0|ALT_INV_z_in\(19) <= NOT \spi0|z_in\(19);
\spi0|ALT_INV_dataIn\(11) <= NOT \spi0|dataIn\(11);
\spi0|cordic|ALT_INV_z_output\(12) <= NOT \spi0|cordic|z_output\(12);
\spi0|cordic|ALT_INV_y_output\(12) <= NOT \spi0|cordic|y_output\(12);
\spi0|cordic|ALT_INV_x_output\(12) <= NOT \spi0|cordic|x_output\(12);
\spi0|cordic|core|ALT_INV_z_out\(13) <= NOT \spi0|cordic|core|z_out\(13);
\spi0|cordic|core|ALT_INV_x_out\(13) <= NOT \spi0|cordic|core|x_out\(13);
\spi0|cordic|core|ALT_INV_y_out\(13) <= NOT \spi0|cordic|core|y_out\(13);
\spi0|cordic|ALT_INV_z_in_c\(15) <= NOT \spi0|cordic|z_in_c\(15);
\spi0|cordic|ALT_INV_index\(1) <= NOT \spi0|cordic|index\(1);
\spi0|cordic|ALT_INV_index\(0) <= NOT \spi0|cordic|index\(0);
\spi0|cordic|ALT_INV_index\(3) <= NOT \spi0|cordic|index\(3);
\spi0|cordic|ALT_INV_index\(2) <= NOT \spi0|cordic|index\(2);
\spi0|cordic|ALT_INV_start_core~combout\ <= NOT \spi0|cordic|start_core~combout\;
\spi0|cordic|ALT_INV_y_in_c\(15) <= NOT \spi0|cordic|y_in_c\(15);
\spi0|cordic|ALT_INV_x_in_c\(15) <= NOT \spi0|cordic|x_in_c\(15);
\spi0|cordic|ALT_INV_sgn~combout\ <= NOT \spi0|cordic|sgn~combout\;
\spi0|ALT_INV_dataIn\(12) <= NOT \spi0|dataIn\(12);
\spi0|cordic|ALT_INV_z_output\(13) <= NOT \spi0|cordic|z_output\(13);
\spi0|cordic|ALT_INV_x_output\(13) <= NOT \spi0|cordic|x_output\(13);
\spi0|cordic|ALT_INV_y_output\(13) <= NOT \spi0|cordic|y_output\(13);
\spi0|cordic|core|ALT_INV_z_out\(14) <= NOT \spi0|cordic|core|z_out\(14);
\spi0|cordic|core|ALT_INV_y_out\(14) <= NOT \spi0|cordic|core|y_out\(14);
\spi0|cordic|core|ALT_INV_x_out\(14) <= NOT \spi0|cordic|core|x_out\(14);
\spi0|ALT_INV_start~combout\ <= NOT \spi0|start~combout\;
\spi0|cordic|core|ALT_INV_done_core_flag~combout\ <= NOT \spi0|cordic|core|done_core_flag~combout\;
\spi0|ALT_INV_dataIn\(13) <= NOT \spi0|dataIn\(13);
\spi0|cordic|ALT_INV_z_output\(14) <= NOT \spi0|cordic|z_output\(14);
\spi0|cordic|ALT_INV_y_output\(14) <= NOT \spi0|cordic|y_output\(14);
\spi0|cordic|ALT_INV_x_output\(14) <= NOT \spi0|cordic|x_output\(14);
\spi0|cordic|core|ALT_INV_z_out\(15) <= NOT \spi0|cordic|core|z_out\(15);
\spi0|cordic|core|ALT_INV_x_out\(15) <= NOT \spi0|cordic|core|x_out\(15);
\spi0|cordic|core|ALT_INV_y_out\(15) <= NOT \spi0|cordic|core|y_out\(15);
\spi0|cordic|ALT_INV_done_flag~combout\ <= NOT \spi0|cordic|done_flag~combout\;
\spi0|ALT_INV_dataIn\(14) <= NOT \spi0|dataIn\(14);
\spi0|cordic|ALT_INV_z_output\(15) <= NOT \spi0|cordic|z_output\(15);
\spi0|cordic|ALT_INV_x_output\(15) <= NOT \spi0|cordic|x_output\(15);
\spi0|cordic|ALT_INV_y_output\(15) <= NOT \spi0|cordic|y_output\(15);
\spi0|ALT_INV_dataIn\(15) <= NOT \spi0|dataIn\(15);
\spi0|blink_hb|ALT_INV_counter_output\(0) <= NOT \spi0|blink_hb|counter_output\(0);
\spi0|blink_hb|ALT_INV_counter_output\(1) <= NOT \spi0|blink_hb|counter_output\(1);
\spi0|cordic|ALT_INV_z_in_c~19_combout\ <= NOT \spi0|cordic|z_in_c~19_combout\;
\spi0|cordic|ALT_INV_y_in_c~15_combout\ <= NOT \spi0|cordic|y_in_c~15_combout\;
\spi0|cordic|ALT_INV_x_in_c~15_combout\ <= NOT \spi0|cordic|x_in_c~15_combout\;
\spi0|blink_hb|ALT_INV_counter_output\(2) <= NOT \spi0|blink_hb|counter_output\(2);
\spi0|cordic|core|ALT_INV_Mux17~0_combout\ <= NOT \spi0|cordic|core|Mux17~0_combout\;
\spi0|cordic|ALT_INV_z_in_c~18_combout\ <= NOT \spi0|cordic|z_in_c~18_combout\;
\spi0|cordic|core|ALT_INV_ShiftRight0~25_combout\ <= NOT \spi0|cordic|core|ShiftRight0~25_combout\;
\spi0|cordic|core|ALT_INV_ShiftRight0~24_combout\ <= NOT \spi0|cordic|core|ShiftRight0~24_combout\;
\spi0|cordic|core|ALT_INV_ShiftRight1~25_combout\ <= NOT \spi0|cordic|core|ShiftRight1~25_combout\;
\spi0|cordic|core|ALT_INV_ShiftRight1~24_combout\ <= NOT \spi0|cordic|core|ShiftRight1~24_combout\;
\spi0|cordic|ALT_INV_y_in_c~14_combout\ <= NOT \spi0|cordic|y_in_c~14_combout\;
\spi0|cordic|ALT_INV_x_in_c~14_combout\ <= NOT \spi0|cordic|x_in_c~14_combout\;
\spi0|blink_hb|ALT_INV_counter_output\(3) <= NOT \spi0|blink_hb|counter_output\(3);
\spi0|cordic|core|ALT_INV_Mux16~0_combout\ <= NOT \spi0|cordic|core|Mux16~0_combout\;
\spi0|cordic|ALT_INV_z_in_c~17_combout\ <= NOT \spi0|cordic|z_in_c~17_combout\;
\spi0|cordic|core|ALT_INV_ShiftRight0~23_combout\ <= NOT \spi0|cordic|core|ShiftRight0~23_combout\;
\spi0|cordic|core|ALT_INV_ShiftRight0~22_combout\ <= NOT \spi0|cordic|core|ShiftRight0~22_combout\;
\spi0|cordic|core|ALT_INV_ShiftRight1~23_combout\ <= NOT \spi0|cordic|core|ShiftRight1~23_combout\;
\spi0|cordic|core|ALT_INV_ShiftRight1~22_combout\ <= NOT \spi0|cordic|core|ShiftRight1~22_combout\;
\spi0|cordic|ALT_INV_y_in_c~13_combout\ <= NOT \spi0|cordic|y_in_c~13_combout\;
\spi0|cordic|ALT_INV_x_in_c~13_combout\ <= NOT \spi0|cordic|x_in_c~13_combout\;
\spi0|blink_hb|ALT_INV_counter_output\(4) <= NOT \spi0|blink_hb|counter_output\(4);
\spi0|cordic|core|ALT_INV_Mux15~0_combout\ <= NOT \spi0|cordic|core|Mux15~0_combout\;
\spi0|cordic|ALT_INV_z_in_c~16_combout\ <= NOT \spi0|cordic|z_in_c~16_combout\;
\spi0|cordic|core|ALT_INV_ShiftRight0~21_combout\ <= NOT \spi0|cordic|core|ShiftRight0~21_combout\;
\spi0|cordic|core|ALT_INV_ShiftRight0~20_combout\ <= NOT \spi0|cordic|core|ShiftRight0~20_combout\;
\spi0|cordic|core|ALT_INV_ShiftRight1~21_combout\ <= NOT \spi0|cordic|core|ShiftRight1~21_combout\;
\spi0|cordic|core|ALT_INV_ShiftRight1~20_combout\ <= NOT \spi0|cordic|core|ShiftRight1~20_combout\;
\spi0|cordic|ALT_INV_y_in_c~12_combout\ <= NOT \spi0|cordic|y_in_c~12_combout\;
\spi0|cordic|ALT_INV_x_in_c~12_combout\ <= NOT \spi0|cordic|x_in_c~12_combout\;
\spi0|blink_hb|ALT_INV_counter_output\(5) <= NOT \spi0|blink_hb|counter_output\(5);
\spi0|ALT_INV_Selector15~0_combout\ <= NOT \spi0|Selector15~0_combout\;
\spi0|cordic|core|ALT_INV_Mux14~0_combout\ <= NOT \spi0|cordic|core|Mux14~0_combout\;
\spi0|cordic|ALT_INV_z_in_c~15_combout\ <= NOT \spi0|cordic|z_in_c~15_combout\;
\spi0|cordic|core|ALT_INV_ShiftRight0~19_combout\ <= NOT \spi0|cordic|core|ShiftRight0~19_combout\;
\spi0|cordic|core|ALT_INV_ShiftRight0~18_combout\ <= NOT \spi0|cordic|core|ShiftRight0~18_combout\;
\spi0|cordic|core|ALT_INV_ShiftRight1~19_combout\ <= NOT \spi0|cordic|core|ShiftRight1~19_combout\;
\spi0|cordic|core|ALT_INV_ShiftRight1~18_combout\ <= NOT \spi0|cordic|core|ShiftRight1~18_combout\;
\spi0|cordic|ALT_INV_y_in_c~11_combout\ <= NOT \spi0|cordic|y_in_c~11_combout\;
\spi0|cordic|ALT_INV_x_in_c~11_combout\ <= NOT \spi0|cordic|x_in_c~11_combout\;
\spi0|blink_hb|ALT_INV_counter_output\(6) <= NOT \spi0|blink_hb|counter_output\(6);
\spi0|ALT_INV_Selector17~0_combout\ <= NOT \spi0|Selector17~0_combout\;
\spi0|cordic|core|ALT_INV_Mux13~0_combout\ <= NOT \spi0|cordic|core|Mux13~0_combout\;
\spi0|cordic|ALT_INV_z_in_c~14_combout\ <= NOT \spi0|cordic|z_in_c~14_combout\;
\spi0|cordic|core|ALT_INV_ShiftRight0~17_combout\ <= NOT \spi0|cordic|core|ShiftRight0~17_combout\;
\spi0|cordic|core|ALT_INV_ShiftRight0~16_combout\ <= NOT \spi0|cordic|core|ShiftRight0~16_combout\;
\spi0|cordic|core|ALT_INV_ShiftRight1~17_combout\ <= NOT \spi0|cordic|core|ShiftRight1~17_combout\;
\spi0|cordic|core|ALT_INV_ShiftRight1~16_combout\ <= NOT \spi0|cordic|core|ShiftRight1~16_combout\;
\spi0|cordic|ALT_INV_y_in_c~10_combout\ <= NOT \spi0|cordic|y_in_c~10_combout\;
\spi0|cordic|ALT_INV_x_in_c~10_combout\ <= NOT \spi0|cordic|x_in_c~10_combout\;
\spi0|blink_hb|ALT_INV_counter_output\(7) <= NOT \spi0|blink_hb|counter_output\(7);
\spi0|spi|ALT_INV_data_to_sent\(0) <= NOT \spi0|spi|data_to_sent\(0);
\spi0|ALT_INV_dataIn\(1) <= NOT \spi0|dataIn\(1);
\spi0|cordic|ALT_INV_z_output\(2) <= NOT \spi0|cordic|z_output\(2);
\spi0|cordic|ALT_INV_y_output\(2) <= NOT \spi0|cordic|y_output\(2);
\spi0|cordic|ALT_INV_x_output\(2) <= NOT \spi0|cordic|x_output\(2);
\spi0|cordic|core|ALT_INV_z_out\(3) <= NOT \spi0|cordic|core|z_out\(3);
\spi0|cordic|core|ALT_INV_x_out\(3) <= NOT \spi0|cordic|core|x_out\(3);
\spi0|cordic|core|ALT_INV_y_out\(3) <= NOT \spi0|cordic|core|y_out\(3);
\spi0|cordic|ALT_INV_z_in_c\(5) <= NOT \spi0|cordic|z_in_c\(5);
\spi0|ALT_INV_z_in\(6) <= NOT \spi0|z_in\(6);
\spi0|cordic|ALT_INV_y_in_c\(5) <= NOT \spi0|cordic|y_in_c\(5);
\spi0|cordic|ALT_INV_x_in_c\(5) <= NOT \spi0|cordic|x_in_c\(5);
\spi0|ALT_INV_y_in\(6) <= NOT \spi0|y_in\(6);
\spi0|ALT_INV_x_in\(6) <= NOT \spi0|x_in\(6);
\spi0|ALT_INV_dataIn\(2) <= NOT \spi0|dataIn\(2);
\spi0|cordic|ALT_INV_z_output\(3) <= NOT \spi0|cordic|z_output\(3);
\spi0|cordic|ALT_INV_x_output\(3) <= NOT \spi0|cordic|x_output\(3);
\spi0|cordic|ALT_INV_y_output\(3) <= NOT \spi0|cordic|y_output\(3);
\spi0|cordic|core|ALT_INV_z_out\(4) <= NOT \spi0|cordic|core|z_out\(4);
\spi0|cordic|core|ALT_INV_y_out\(4) <= NOT \spi0|cordic|core|y_out\(4);
\spi0|cordic|core|ALT_INV_x_out\(4) <= NOT \spi0|cordic|core|x_out\(4);
\spi0|cordic|ALT_INV_z_in_c\(6) <= NOT \spi0|cordic|z_in_c\(6);
\spi0|ALT_INV_z_in\(7) <= NOT \spi0|z_in\(7);
\spi0|cordic|ALT_INV_y_in_c\(6) <= NOT \spi0|cordic|y_in_c\(6);
\spi0|cordic|ALT_INV_x_in_c\(6) <= NOT \spi0|cordic|x_in_c\(6);
\spi0|ALT_INV_y_in\(7) <= NOT \spi0|y_in\(7);
\spi0|ALT_INV_x_in\(7) <= NOT \spi0|x_in\(7);
\spi0|ALT_INV_dataIn\(3) <= NOT \spi0|dataIn\(3);
\spi0|cordic|ALT_INV_z_output\(4) <= NOT \spi0|cordic|z_output\(4);
\spi0|cordic|ALT_INV_y_output\(4) <= NOT \spi0|cordic|y_output\(4);
\spi0|cordic|ALT_INV_x_output\(4) <= NOT \spi0|cordic|x_output\(4);
\spi0|cordic|core|ALT_INV_z_out\(5) <= NOT \spi0|cordic|core|z_out\(5);
\spi0|cordic|core|ALT_INV_x_out\(5) <= NOT \spi0|cordic|core|x_out\(5);
\spi0|cordic|core|ALT_INV_y_out\(5) <= NOT \spi0|cordic|core|y_out\(5);
\spi0|cordic|ALT_INV_z_in_c\(7) <= NOT \spi0|cordic|z_in_c\(7);
\spi0|ALT_INV_z_in\(8) <= NOT \spi0|z_in\(8);
\spi0|cordic|ALT_INV_y_in_c\(7) <= NOT \spi0|cordic|y_in_c\(7);
\spi0|cordic|ALT_INV_x_in_c\(7) <= NOT \spi0|cordic|x_in_c\(7);
\spi0|ALT_INV_y_in\(8) <= NOT \spi0|y_in\(8);
\spi0|ALT_INV_x_in\(8) <= NOT \spi0|x_in\(8);
\spi0|ALT_INV_dataIn\(4) <= NOT \spi0|dataIn\(4);
\spi0|cordic|ALT_INV_z_output\(5) <= NOT \spi0|cordic|z_output\(5);
\spi0|cordic|ALT_INV_x_output\(5) <= NOT \spi0|cordic|x_output\(5);
\spi0|cordic|ALT_INV_y_output\(5) <= NOT \spi0|cordic|y_output\(5);
\spi0|cordic|core|ALT_INV_z_out\(6) <= NOT \spi0|cordic|core|z_out\(6);
\spi0|cordic|core|ALT_INV_y_out\(6) <= NOT \spi0|cordic|core|y_out\(6);
\spi0|cordic|core|ALT_INV_x_out\(6) <= NOT \spi0|cordic|core|x_out\(6);
\spi0|cordic|ALT_INV_z_in_c\(8) <= NOT \spi0|cordic|z_in_c\(8);
\spi0|ALT_INV_z_in\(9) <= NOT \spi0|z_in\(9);
\spi0|cordic|ALT_INV_y_in_c\(8) <= NOT \spi0|cordic|y_in_c\(8);
\spi0|cordic|ALT_INV_x_in_c\(8) <= NOT \spi0|cordic|x_in_c\(8);
\spi0|ALT_INV_y_in\(9) <= NOT \spi0|y_in\(9);
\spi0|ALT_INV_x_in\(9) <= NOT \spi0|x_in\(9);
\spi0|cordic|core|ALT_INV_z_out\(16) <= NOT \spi0|cordic|core|z_out\(16);
\spi0|ALT_INV_z_in\(16) <= NOT \spi0|z_in\(16);
\spi0|ALT_INV_dataIn\(5) <= NOT \spi0|dataIn\(5);
\spi0|cordic|ALT_INV_z_output\(6) <= NOT \spi0|cordic|z_output\(6);
\spi0|cordic|ALT_INV_y_output\(6) <= NOT \spi0|cordic|y_output\(6);
\spi0|cordic|ALT_INV_x_output\(6) <= NOT \spi0|cordic|x_output\(6);
\spi0|cordic|core|ALT_INV_z_out\(7) <= NOT \spi0|cordic|core|z_out\(7);
\spi0|cordic|core|ALT_INV_x_out\(7) <= NOT \spi0|cordic|core|x_out\(7);
\spi0|cordic|core|ALT_INV_y_out\(7) <= NOT \spi0|cordic|core|y_out\(7);
\spi0|cordic|ALT_INV_z_in_c\(9) <= NOT \spi0|cordic|z_in_c\(9);
\spi0|ALT_INV_z_in\(10) <= NOT \spi0|z_in\(10);
\spi0|cordic|ALT_INV_y_in_c\(9) <= NOT \spi0|cordic|y_in_c\(9);
\spi0|cordic|ALT_INV_x_in_c\(9) <= NOT \spi0|cordic|x_in_c\(9);
\spi0|ALT_INV_y_in\(10) <= NOT \spi0|y_in\(10);
\spi0|ALT_INV_x_in\(10) <= NOT \spi0|x_in\(10);
\spi0|cordic|ALT_INV_z_in_c\(16) <= NOT \spi0|cordic|z_in_c\(16);
\spi0|cordic|core|ALT_INV_z_out\(17) <= NOT \spi0|cordic|core|z_out\(17);
\spi0|ALT_INV_z_in\(17) <= NOT \spi0|z_in\(17);
\spi0|ALT_INV_dataIn\(6) <= NOT \spi0|dataIn\(6);
\spi0|cordic|ALT_INV_z_output\(7) <= NOT \spi0|cordic|z_output\(7);
\spi0|cordic|ALT_INV_x_output\(7) <= NOT \spi0|cordic|x_output\(7);
\spi0|cordic|ALT_INV_y_output\(7) <= NOT \spi0|cordic|y_output\(7);
\spi0|cordic|core|ALT_INV_z_out\(8) <= NOT \spi0|cordic|core|z_out\(8);
\spi0|cordic|core|ALT_INV_y_out\(8) <= NOT \spi0|cordic|core|y_out\(8);
\spi0|cordic|core|ALT_INV_x_out\(8) <= NOT \spi0|cordic|core|x_out\(8);
\spi0|cordic|ALT_INV_z_in_c\(10) <= NOT \spi0|cordic|z_in_c\(10);
\spi0|ALT_INV_z_in\(11) <= NOT \spi0|z_in\(11);
\spi0|cordic|ALT_INV_y_in_c\(10) <= NOT \spi0|cordic|y_in_c\(10);
\spi0|cordic|ALT_INV_x_in_c\(10) <= NOT \spi0|cordic|x_in_c\(10);
\spi0|ALT_INV_y_in\(11) <= NOT \spi0|y_in\(11);
\spi0|ALT_INV_x_in\(11) <= NOT \spi0|x_in\(11);
\spi0|cordic|ALT_INV_z_in_c\(17) <= NOT \spi0|cordic|z_in_c\(17);
\spi0|cordic|core|ALT_INV_z_out\(18) <= NOT \spi0|cordic|core|z_out\(18);
\spi0|ALT_INV_z_in\(18) <= NOT \spi0|z_in\(18);
\spi0|ALT_INV_dataIn\(7) <= NOT \spi0|dataIn\(7);
\spi0|cordic|ALT_INV_z_output\(8) <= NOT \spi0|cordic|z_output\(8);
\spi0|cordic|ALT_INV_y_output\(8) <= NOT \spi0|cordic|y_output\(8);
\spi0|cordic|ALT_INV_x_output\(8) <= NOT \spi0|cordic|x_output\(8);
\spi0|cordic|core|ALT_INV_z_out\(9) <= NOT \spi0|cordic|core|z_out\(9);
\spi0|cordic|core|ALT_INV_x_out\(9) <= NOT \spi0|cordic|core|x_out\(9);
\spi0|cordic|core|ALT_INV_y_out\(9) <= NOT \spi0|cordic|core|y_out\(9);
\spi0|cordic|ALT_INV_z_in_c\(11) <= NOT \spi0|cordic|z_in_c\(11);
\spi0|ALT_INV_z_in\(12) <= NOT \spi0|z_in\(12);
\spi0|cordic|ALT_INV_y_in_c\(11) <= NOT \spi0|cordic|y_in_c\(11);
\spi0|cordic|ALT_INV_x_in_c\(11) <= NOT \spi0|cordic|x_in_c\(11);
\spi0|ALT_INV_y_in\(12) <= NOT \spi0|y_in\(12);
\spi0|ALT_INV_x_in\(12) <= NOT \spi0|x_in\(12);
\spi0|cordic|ALT_INV_z_in_c\(18) <= NOT \spi0|cordic|z_in_c\(18);
\spi0|ALT_INV_dataIn\(8) <= NOT \spi0|dataIn\(8);
\spi0|cordic|ALT_INV_z_output\(9) <= NOT \spi0|cordic|z_output\(9);
\spi0|cordic|ALT_INV_x_output\(9) <= NOT \spi0|cordic|x_output\(9);
\spi0|cordic|ALT_INV_y_output\(9) <= NOT \spi0|cordic|y_output\(9);
\spi0|cordic|core|ALT_INV_z_out\(10) <= NOT \spi0|cordic|core|z_out\(10);
\spi0|cordic|core|ALT_INV_y_out\(10) <= NOT \spi0|cordic|core|y_out\(10);
\spi0|cordic|core|ALT_INV_x_out\(10) <= NOT \spi0|cordic|core|x_out\(10);
\spi0|cordic|ALT_INV_z_in_c\(12) <= NOT \spi0|cordic|z_in_c\(12);
\spi0|ALT_INV_z_in\(13) <= NOT \spi0|z_in\(13);
\spi0|cordic|ALT_INV_y_in_c\(12) <= NOT \spi0|cordic|y_in_c\(12);
\spi0|cordic|ALT_INV_x_in_c\(12) <= NOT \spi0|cordic|x_in_c\(12);
\spi0|ALT_INV_y_in\(13) <= NOT \spi0|y_in\(13);
\spi0|ALT_INV_x_in\(13) <= NOT \spi0|x_in\(13);
\spi0|cordic|ALT_INV_z_in_c\(19) <= NOT \spi0|cordic|z_in_c\(19);
\spi0|ALT_INV_dataIn\(9) <= NOT \spi0|dataIn\(9);
\spi0|cordic|ALT_INV_z_output\(10) <= NOT \spi0|cordic|z_output\(10);
\spi0|cordic|ALT_INV_y_output\(10) <= NOT \spi0|cordic|y_output\(10);
\spi0|cordic|ALT_INV_x_output\(10) <= NOT \spi0|cordic|x_output\(10);
\spi0|cordic|core|ALT_INV_z_out\(11) <= NOT \spi0|cordic|core|z_out\(11);
\spi0|cordic|core|ALT_INV_x_out\(11) <= NOT \spi0|cordic|core|x_out\(11);
\spi0|cordic|core|ALT_INV_y_out\(11) <= NOT \spi0|cordic|core|y_out\(11);
\spi0|cordic|ALT_INV_z_in_c\(13) <= NOT \spi0|cordic|z_in_c\(13);
\spi0|ALT_INV_z_in\(14) <= NOT \spi0|z_in\(14);
\spi0|cordic|ALT_INV_y_in_c\(13) <= NOT \spi0|cordic|y_in_c\(13);
\spi0|cordic|ALT_INV_x_in_c\(13) <= NOT \spi0|cordic|x_in_c\(13);
\spi0|ALT_INV_y_in\(14) <= NOT \spi0|y_in\(14);
\spi0|ALT_INV_x_in\(14) <= NOT \spi0|x_in\(14);
\spi0|spi|ALT_INV_MOSI_counter[0]~DUPLICATE_q\ <= NOT \spi0|spi|MOSI_counter[0]~DUPLICATE_q\;
\spi0|spi|ALT_INV_MOSI_counter[1]~DUPLICATE_q\ <= NOT \spi0|spi|MOSI_counter[1]~DUPLICATE_q\;
\spi0|spi|ALT_INV_MOSI_counter[2]~DUPLICATE_q\ <= NOT \spi0|spi|MOSI_counter[2]~DUPLICATE_q\;
\spi0|spi|ALT_INV_data_out[4]~DUPLICATE_q\ <= NOT \spi0|spi|data_out[4]~DUPLICATE_q\;
\spi0|spi|ALT_INV_data_out[6]~DUPLICATE_q\ <= NOT \spi0|spi|data_out[6]~DUPLICATE_q\;
\spi0|spi|ALT_INV_data_out[8]~DUPLICATE_q\ <= NOT \spi0|spi|data_out[8]~DUPLICATE_q\;
\spi0|spi|ALT_INV_data_out[9]~DUPLICATE_q\ <= NOT \spi0|spi|data_out[9]~DUPLICATE_q\;
\spi0|spi|ALT_INV_data_out[11]~DUPLICATE_q\ <= NOT \spi0|spi|data_out[11]~DUPLICATE_q\;
\spi0|spi|ALT_INV_data_out[12]~DUPLICATE_q\ <= NOT \spi0|spi|data_out[12]~DUPLICATE_q\;
\spi0|spi|ALT_INV_data_out[13]~DUPLICATE_q\ <= NOT \spi0|spi|data_out[13]~DUPLICATE_q\;
\spi0|spi|ALT_INV_data_out[14]~DUPLICATE_q\ <= NOT \spi0|spi|data_out[14]~DUPLICATE_q\;
\spi0|spi|ALT_INV_data_out[0]~DUPLICATE_q\ <= NOT \spi0|spi|data_out[0]~DUPLICATE_q\;
\spi0|spi|ALT_INV_data_out[2]~DUPLICATE_q\ <= NOT \spi0|spi|data_out[2]~DUPLICATE_q\;
\spi0|spi|ALT_INV_fall_flag~DUPLICATE_q\ <= NOT \spi0|spi|fall_flag~DUPLICATE_q\;
\spi0|spi|ALT_INV_MISO_counter[0]~DUPLICATE_q\ <= NOT \spi0|spi|MISO_counter[0]~DUPLICATE_q\;
\spi0|spi|ALT_INV_MISO_counter[1]~DUPLICATE_q\ <= NOT \spi0|spi|MISO_counter[1]~DUPLICATE_q\;
\spi0|spi|ALT_INV_MISO_counter[2]~DUPLICATE_q\ <= NOT \spi0|spi|MISO_counter[2]~DUPLICATE_q\;
\spi0|spi|ALT_INV_rise_flag~DUPLICATE_q\ <= NOT \spi0|spi|rise_flag~DUPLICATE_q\;
\spi0|blink_hb|ALT_INV_counter_output[24]~DUPLICATE_q\ <= NOT \spi0|blink_hb|counter_output[24]~DUPLICATE_q\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\spi0|ALT_INV_z_in\(0) <= NOT \spi0|z_in\(0);
\spi0|ALT_INV_y_in\(0) <= NOT \spi0|y_in\(0);
\spi0|ALT_INV_x_in\(0) <= NOT \spi0|x_in\(0);
\spi0|cordic|ALT_INV_z_in_c\(0) <= NOT \spi0|cordic|z_in_c\(0);
\spi0|ALT_INV_z_in\(1) <= NOT \spi0|z_in\(1);
\spi0|cordic|ALT_INV_y_in_c\(0) <= NOT \spi0|cordic|y_in_c\(0);
\spi0|cordic|ALT_INV_x_in_c\(0) <= NOT \spi0|cordic|x_in_c\(0);
\spi0|ALT_INV_y_in\(1) <= NOT \spi0|y_in\(1);
\spi0|ALT_INV_x_in\(1) <= NOT \spi0|x_in\(1);
\spi0|cordic|ALT_INV_z_in_c\(1) <= NOT \spi0|cordic|z_in_c\(1);
\spi0|ALT_INV_z_in\(2) <= NOT \spi0|z_in\(2);
\spi0|cordic|ALT_INV_y_in_c\(1) <= NOT \spi0|cordic|y_in_c\(1);
\spi0|cordic|ALT_INV_x_in_c\(1) <= NOT \spi0|cordic|x_in_c\(1);
\spi0|ALT_INV_y_in\(2) <= NOT \spi0|y_in\(2);
\spi0|ALT_INV_x_in\(2) <= NOT \spi0|x_in\(2);
\spi0|cordic|core|ALT_INV_z_out\(0) <= NOT \spi0|cordic|core|z_out\(0);
\spi0|cordic|core|ALT_INV_y_out\(0) <= NOT \spi0|cordic|core|y_out\(0);
\spi0|cordic|core|ALT_INV_x_out\(0) <= NOT \spi0|cordic|core|x_out\(0);
\spi0|cordic|ALT_INV_z_in_c\(2) <= NOT \spi0|cordic|z_in_c\(2);
\spi0|ALT_INV_z_in\(3) <= NOT \spi0|z_in\(3);
\spi0|cordic|ALT_INV_y_in_c\(2) <= NOT \spi0|cordic|y_in_c\(2);
\spi0|cordic|ALT_INV_x_in_c\(2) <= NOT \spi0|cordic|x_in_c\(2);
\spi0|ALT_INV_y_in\(3) <= NOT \spi0|y_in\(3);
\spi0|ALT_INV_x_in\(3) <= NOT \spi0|x_in\(3);
\spi0|cordic|ALT_INV_z_output\(0) <= NOT \spi0|cordic|z_output\(0);
\spi0|cordic|ALT_INV_y_output\(0) <= NOT \spi0|cordic|y_output\(0);
\spi0|cordic|ALT_INV_x_output\(0) <= NOT \spi0|cordic|x_output\(0);
\spi0|cordic|core|ALT_INV_z_out\(1) <= NOT \spi0|cordic|core|z_out\(1);
\spi0|cordic|core|ALT_INV_x_out\(1) <= NOT \spi0|cordic|core|x_out\(1);
\spi0|cordic|core|ALT_INV_y_out\(1) <= NOT \spi0|cordic|core|y_out\(1);
\spi0|cordic|ALT_INV_z_in_c\(3) <= NOT \spi0|cordic|z_in_c\(3);
\spi0|ALT_INV_z_in\(4) <= NOT \spi0|z_in\(4);
\spi0|cordic|ALT_INV_y_in_c\(3) <= NOT \spi0|cordic|y_in_c\(3);
\spi0|cordic|ALT_INV_x_in_c\(3) <= NOT \spi0|cordic|x_in_c\(3);
\spi0|ALT_INV_y_in\(4) <= NOT \spi0|y_in\(4);
\spi0|ALT_INV_x_in\(4) <= NOT \spi0|x_in\(4);
\spi0|ALT_INV_dataIn\(0) <= NOT \spi0|dataIn\(0);
\spi0|cordic|ALT_INV_z_output\(1) <= NOT \spi0|cordic|z_output\(1);
\spi0|cordic|ALT_INV_x_output\(1) <= NOT \spi0|cordic|x_output\(1);
\spi0|cordic|ALT_INV_y_output\(1) <= NOT \spi0|cordic|y_output\(1);
\spi0|cordic|core|ALT_INV_z_out\(2) <= NOT \spi0|cordic|core|z_out\(2);
\spi0|cordic|core|ALT_INV_y_out\(2) <= NOT \spi0|cordic|core|y_out\(2);
\spi0|cordic|core|ALT_INV_x_out\(2) <= NOT \spi0|cordic|core|x_out\(2);
\spi0|cordic|ALT_INV_z_in_c\(4) <= NOT \spi0|cordic|z_in_c\(4);
\spi0|ALT_INV_z_in\(5) <= NOT \spi0|z_in\(5);
\spi0|cordic|ALT_INV_y_in_c\(4) <= NOT \spi0|cordic|y_in_c\(4);
\spi0|cordic|ALT_INV_x_in_c\(4) <= NOT \spi0|cordic|x_in_c\(4);
\spi0|ALT_INV_y_in\(5) <= NOT \spi0|y_in\(5);
\spi0|ALT_INV_x_in\(5) <= NOT \spi0|x_in\(5);

-- Location: IOOBUF_X89_Y8_N22
\LED[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \spi0|blink_hb|counter_output\(24),
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

-- Location: IOOBUF_X89_Y4_N79
\LED[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LED(4));

-- Location: IOOBUF_X89_Y4_N96
\LED[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LED(5));

-- Location: IOOBUF_X89_Y8_N5
\LED[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LED(6));

-- Location: IOOBUF_X89_Y9_N56
\LED[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LED(7));

-- Location: IOOBUF_X50_Y0_N42
\ARDUINO_IO[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_ARDUINO_IO(0));

-- Location: IOOBUF_X50_Y0_N59
\ARDUINO_IO[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_ARDUINO_IO(1));

-- Location: IOOBUF_X54_Y0_N36
\ARDUINO_IO[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_ARDUINO_IO(2));

-- Location: IOOBUF_X52_Y0_N36
\ARDUINO_IO[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_ARDUINO_IO(3));

-- Location: IOOBUF_X52_Y0_N2
\ARDUINO_IO[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_ARDUINO_IO(4));

-- Location: IOOBUF_X52_Y0_N19
\ARDUINO_IO[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_ARDUINO_IO(5));

-- Location: IOOBUF_X50_Y0_N76
\ARDUINO_IO[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_ARDUINO_IO(6));

-- Location: IOOBUF_X52_Y0_N53
\ARDUINO_IO[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_ARDUINO_IO(7));

-- Location: IOOBUF_X58_Y0_N42
\ARDUINO_IO[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_ARDUINO_IO(8));

-- Location: IOOBUF_X54_Y0_N19
\ARDUINO_IO[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_ARDUINO_IO(9));

-- Location: IOOBUF_X54_Y0_N2
\ARDUINO_IO[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_ARDUINO_IO(10));

-- Location: IOOBUF_X54_Y0_N53
\ARDUINO_IO[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_ARDUINO_IO(14));

-- Location: IOOBUF_X56_Y0_N36
\ARDUINO_IO[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_ARDUINO_IO(15));

-- Location: IOOBUF_X58_Y0_N59
\ARDUINO_IO[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_ARDUINO_IO(11));

-- Location: IOOBUF_X56_Y0_N53
\ARDUINO_IO[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \spi0|spi|SPI_MISO~q\,
	oe => VCC,
	devoe => ww_devoe,
	o => ww_ARDUINO_IO(12));

-- Location: IOOBUF_X58_Y0_N76
\ARDUINO_IO[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_ARDUINO_IO(13));

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

-- Location: IOIBUF_X58_Y0_N75
\ARDUINO_IO[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ARDUINO_IO(13),
	o => \ARDUINO_IO[13]~input_o\);

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

-- Location: FF_X84_Y19_N17
\spi0|spi|sck_synchronizer[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \ARDUINO_IO[13]~input_o\,
	sload => VCC,
	ena => \ALT_INV_SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|sck_synchronizer\(0));

-- Location: FF_X84_Y19_N50
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
	ena => \ALT_INV_SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|sck_synchronizer\(1));

-- Location: FF_X80_Y18_N29
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
	ena => \ALT_INV_SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|sck_synchronizer\(2));

-- Location: FF_X80_Y18_N47
\spi0|spi|sck_synchronizer[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \spi0|spi|sck_synchronizer\(2),
	sload => VCC,
	ena => \ALT_INV_SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|sck_synchronizer\(3));

-- Location: FF_X80_Y18_N10
\spi0|spi|sck_synchronizer[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \spi0|spi|sck_synchronizer\(3),
	sload => VCC,
	ena => \ALT_INV_SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|sck_synchronizer\(4));

-- Location: FF_X80_Y19_N23
\spi0|spi|sck_synchronizer[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \spi0|spi|sck_synchronizer\(4),
	sload => VCC,
	ena => \ALT_INV_SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|sck_synchronizer\(5));

-- Location: FF_X84_Y19_N2
\spi0|spi|sck_synchronizer[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \spi0|spi|sck_synchronizer\(5),
	sload => VCC,
	ena => \ALT_INV_SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|sck_synchronizer\(6));

-- Location: FF_X84_Y19_N5
\spi0|spi|sck_synchronizer[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \spi0|spi|sck_synchronizer\(6),
	sload => VCC,
	ena => \ALT_INV_SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|sck_synchronizer\(7));

-- Location: FF_X84_Y19_N37
\spi0|spi|fall_flag~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \spi0|spi|fall_flag~0_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|fall_flag~DUPLICATE_q\);

-- Location: LABCELL_X85_Y19_N48
\spi0|spi|fall_flag~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|spi|fall_flag~0_combout\ = ( \spi0|spi|sck_synchronizer\(6) & ( \spi0|spi|sck_synchronizer\(0) & ( \spi0|spi|fall_flag~DUPLICATE_q\ ) ) ) # ( !\spi0|spi|sck_synchronizer\(6) & ( \spi0|spi|sck_synchronizer\(0) & ( (\spi0|spi|fall_flag~DUPLICATE_q\ & 
-- ((!\spi0|spi|sck_synchronizer\(1)) # ((\spi0|spi|sck_synchronizer\(7)) # (\spi0|spi|rise_flag~DUPLICATE_q\)))) ) ) ) # ( \spi0|spi|sck_synchronizer\(6) & ( !\spi0|spi|sck_synchronizer\(0) & ( ((!\spi0|spi|sck_synchronizer\(1) & 
-- \spi0|spi|sck_synchronizer\(7))) # (\spi0|spi|fall_flag~DUPLICATE_q\) ) ) ) # ( !\spi0|spi|sck_synchronizer\(6) & ( !\spi0|spi|sck_synchronizer\(0) & ( \spi0|spi|fall_flag~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100111011101100100011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi|ALT_INV_sck_synchronizer\(1),
	datab => \spi0|spi|ALT_INV_fall_flag~DUPLICATE_q\,
	datac => \spi0|spi|ALT_INV_rise_flag~DUPLICATE_q\,
	datad => \spi0|spi|ALT_INV_sck_synchronizer\(7),
	datae => \spi0|spi|ALT_INV_sck_synchronizer\(6),
	dataf => \spi0|spi|ALT_INV_sck_synchronizer\(0),
	combout => \spi0|spi|fall_flag~0_combout\);

-- Location: FF_X84_Y19_N38
\spi0|spi|fall_flag\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \spi0|spi|fall_flag~0_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|fall_flag~q\);

-- Location: FF_X84_Y19_N7
\spi0|spi|rise_flag\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|spi|rise_flag~0_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|rise_flag~q\);

-- Location: MLABCELL_X84_Y19_N6
\spi0|spi|rise_flag~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|spi|rise_flag~0_combout\ = ( \spi0|spi|rise_flag~q\ & ( \spi0|spi|sck_synchronizer\(1) ) ) # ( !\spi0|spi|rise_flag~q\ & ( \spi0|spi|sck_synchronizer\(1) & ( (!\spi0|spi|sck_synchronizer\(7) & (!\spi0|spi|sck_synchronizer\(6) & 
-- \spi0|spi|sck_synchronizer\(0))) ) ) ) # ( \spi0|spi|rise_flag~q\ & ( !\spi0|spi|sck_synchronizer\(1) & ( (!\spi0|spi|sck_synchronizer\(7)) # (((!\spi0|spi|sck_synchronizer\(6)) # (\spi0|spi|sck_synchronizer\(0))) # (\spi0|spi|fall_flag~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110111111111100000000101000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi|ALT_INV_sck_synchronizer\(7),
	datab => \spi0|spi|ALT_INV_fall_flag~q\,
	datac => \spi0|spi|ALT_INV_sck_synchronizer\(6),
	datad => \spi0|spi|ALT_INV_sck_synchronizer\(0),
	datae => \spi0|spi|ALT_INV_rise_flag~q\,
	dataf => \spi0|spi|ALT_INV_sck_synchronizer\(1),
	combout => \spi0|spi|rise_flag~0_combout\);

-- Location: FF_X84_Y19_N8
\spi0|spi|rise_flag~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|spi|rise_flag~0_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|rise_flag~DUPLICATE_q\);

-- Location: MLABCELL_X84_Y19_N21
\spi0|spi|data_to_sent~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|spi|data_to_sent~0_combout\ = ( \spi0|spi|sck_synchronizer\(1) & ( (!\spi0|spi|sck_synchronizer\(6) & (\spi0|spi|sck_synchronizer\(0) & (!\spi0|spi|rise_flag~DUPLICATE_q\ & !\spi0|spi|sck_synchronizer\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi|ALT_INV_sck_synchronizer\(6),
	datab => \spi0|spi|ALT_INV_sck_synchronizer\(0),
	datac => \spi0|spi|ALT_INV_rise_flag~DUPLICATE_q\,
	datad => \spi0|spi|ALT_INV_sck_synchronizer\(7),
	dataf => \spi0|spi|ALT_INV_sck_synchronizer\(1),
	combout => \spi0|spi|data_to_sent~0_combout\);

-- Location: FF_X81_Y21_N26
\spi0|cordic|core|state.DONE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \spi0|cordic|core|state.EXECUTE~q\,
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|cordic|core|state.DONE~q\);

-- Location: LABCELL_X81_Y21_N3
\spi0|cordic|Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|Selector3~0_combout\ = ( \spi0|cordic|core|done_core_flag~combout\ & ( \spi0|cordic|state.START_STATE~q\ ) ) # ( !\spi0|cordic|core|done_core_flag~combout\ & ( (\spi0|cordic|state.WAIT_CORE_DONE~q\) # (\spi0|cordic|state.START_STATE~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111111111010101011111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_state.START_STATE~q\,
	datad => \spi0|cordic|ALT_INV_state.WAIT_CORE_DONE~q\,
	dataf => \spi0|cordic|core|ALT_INV_done_core_flag~combout\,
	combout => \spi0|cordic|Selector3~0_combout\);

-- Location: FF_X81_Y21_N5
\spi0|cordic|state.WAIT_CORE_DONE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|cordic|Selector3~0_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|cordic|state.WAIT_CORE_DONE~q\);

-- Location: LABCELL_X85_Y22_N18
\spi0|state.RESET_S~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|state.RESET_S~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \spi0|state.RESET_S~feeder_combout\);

-- Location: FF_X85_Y22_N20
\spi0|state.RESET_S\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|state.RESET_S~feeder_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|state.RESET_S~q\);

-- Location: MLABCELL_X84_Y19_N48
\spi0|spi|SPI_FW~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|spi|SPI_FW~1_combout\ = ( !\spi0|spi|sck_synchronizer\(1) & ( (\spi0|spi|sck_synchronizer\(6) & (!\spi0|spi|sck_synchronizer\(0) & \spi0|spi|sck_synchronizer\(7))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi|ALT_INV_sck_synchronizer\(6),
	datab => \spi0|spi|ALT_INV_sck_synchronizer\(0),
	datac => \spi0|spi|ALT_INV_sck_synchronizer\(7),
	dataf => \spi0|spi|ALT_INV_sck_synchronizer\(1),
	combout => \spi0|spi|SPI_FW~1_combout\);

-- Location: MLABCELL_X84_Y21_N45
\spi0|spi|MOSI_counter[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|spi|MOSI_counter[0]~2_combout\ = ( \spi0|spi|SPI_FW~1_combout\ & ( (!\spi0|spi|Equal6~0_combout\ & (!\spi0|spi|fall_flag~q\ $ (\spi0|spi|MOSI_counter\(0)))) ) ) # ( !\spi0|spi|SPI_FW~1_combout\ & ( (!\spi0|spi|Equal6~0_combout\ & 
-- \spi0|spi|MOSI_counter\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000011000000001100001100000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi0|spi|ALT_INV_fall_flag~q\,
	datac => \spi0|spi|ALT_INV_Equal6~0_combout\,
	datad => \spi0|spi|ALT_INV_MOSI_counter\(0),
	dataf => \spi0|spi|ALT_INV_SPI_FW~1_combout\,
	combout => \spi0|spi|MOSI_counter[0]~2_combout\);

-- Location: FF_X84_Y21_N46
\spi0|spi|MOSI_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|spi|MOSI_counter[0]~2_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|MOSI_counter\(0));

-- Location: FF_X84_Y21_N47
\spi0|spi|MOSI_counter[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|spi|MOSI_counter[0]~2_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|MOSI_counter[0]~DUPLICATE_q\);

-- Location: FF_X84_Y21_N58
\spi0|spi|MOSI_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|spi|MOSI_counter[1]~3_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|MOSI_counter\(1));

-- Location: MLABCELL_X84_Y21_N57
\spi0|spi|MOSI_counter[1]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|spi|MOSI_counter[1]~3_combout\ = ( \spi0|spi|SPI_FW~1_combout\ & ( !\spi0|spi|MOSI_counter\(1) $ (((!\spi0|spi|MOSI_counter[0]~DUPLICATE_q\) # (\spi0|spi|fall_flag~q\))) ) ) # ( !\spi0|spi|SPI_FW~1_combout\ & ( \spi0|spi|MOSI_counter\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001100111100110000110011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi0|spi|ALT_INV_fall_flag~q\,
	datac => \spi0|spi|ALT_INV_MOSI_counter[0]~DUPLICATE_q\,
	datad => \spi0|spi|ALT_INV_MOSI_counter\(1),
	dataf => \spi0|spi|ALT_INV_SPI_FW~1_combout\,
	combout => \spi0|spi|MOSI_counter[1]~3_combout\);

-- Location: FF_X84_Y21_N59
\spi0|spi|MOSI_counter[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|spi|MOSI_counter[1]~3_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|MOSI_counter[1]~DUPLICATE_q\);

-- Location: FF_X84_Y21_N26
\spi0|spi|MOSI_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|spi|MOSI_counter[2]~4_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|MOSI_counter\(2));

-- Location: MLABCELL_X84_Y21_N24
\spi0|spi|MOSI_counter[2]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|spi|MOSI_counter[2]~4_combout\ = ( \spi0|spi|MOSI_counter[0]~DUPLICATE_q\ & ( !\spi0|spi|MOSI_counter\(2) $ (((!\spi0|spi|SPI_FW~1_combout\) # ((!\spi0|spi|MOSI_counter[1]~DUPLICATE_q\) # (\spi0|spi|fall_flag~q\)))) ) ) # ( 
-- !\spi0|spi|MOSI_counter[0]~DUPLICATE_q\ & ( \spi0|spi|MOSI_counter\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100010000111011110001000011101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi|ALT_INV_SPI_FW~1_combout\,
	datab => \spi0|spi|ALT_INV_MOSI_counter[1]~DUPLICATE_q\,
	datac => \spi0|spi|ALT_INV_fall_flag~q\,
	datad => \spi0|spi|ALT_INV_MOSI_counter\(2),
	dataf => \spi0|spi|ALT_INV_MOSI_counter[0]~DUPLICATE_q\,
	combout => \spi0|spi|MOSI_counter[2]~4_combout\);

-- Location: FF_X84_Y21_N25
\spi0|spi|MOSI_counter[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|spi|MOSI_counter[2]~4_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|MOSI_counter[2]~DUPLICATE_q\);

-- Location: LABCELL_X85_Y21_N27
\spi0|spi|Add1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|spi|Add1~0_combout\ = ( \spi0|spi|MOSI_counter\(1) & ( !\spi0|spi|fall_flag~DUPLICATE_q\ & ( (\spi0|spi|MOSI_counter\(0) & \spi0|spi|MOSI_counter[2]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100010001000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi|ALT_INV_MOSI_counter\(0),
	datab => \spi0|spi|ALT_INV_MOSI_counter[2]~DUPLICATE_q\,
	datae => \spi0|spi|ALT_INV_MOSI_counter\(1),
	dataf => \spi0|spi|ALT_INV_fall_flag~DUPLICATE_q\,
	combout => \spi0|spi|Add1~0_combout\);

-- Location: MLABCELL_X84_Y21_N3
\spi0|spi|MOSI_counter[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|spi|MOSI_counter[3]~1_combout\ = ( \spi0|spi|SPI_FW~1_combout\ & ( (!\spi0|spi|Equal6~0_combout\ & (!\spi0|spi|MOSI_counter\(3) $ (!\spi0|spi|Add1~0_combout\))) ) ) # ( !\spi0|spi|SPI_FW~1_combout\ & ( (\spi0|spi|MOSI_counter\(3) & 
-- !\spi0|spi|Equal6~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000111100000000000011110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi0|spi|ALT_INV_MOSI_counter\(3),
	datac => \spi0|spi|ALT_INV_Add1~0_combout\,
	datad => \spi0|spi|ALT_INV_Equal6~0_combout\,
	dataf => \spi0|spi|ALT_INV_SPI_FW~1_combout\,
	combout => \spi0|spi|MOSI_counter[3]~1_combout\);

-- Location: FF_X84_Y21_N44
\spi0|spi|MOSI_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \spi0|spi|MOSI_counter[3]~1_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|MOSI_counter\(3));

-- Location: MLABCELL_X84_Y21_N0
\spi0|spi|MOSI_counter[4]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|spi|MOSI_counter[4]~0_combout\ = ( \spi0|spi|SPI_FW~1_combout\ & ( (!\spi0|spi|Equal6~0_combout\ & (!\spi0|spi|MOSI_counter\(4) $ (((!\spi0|spi|Add1~0_combout\) # (!\spi0|spi|MOSI_counter\(3)))))) ) ) # ( !\spi0|spi|SPI_FW~1_combout\ & ( 
-- (!\spi0|spi|Equal6~0_combout\ & \spi0|spi|MOSI_counter\(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000010000111000000001000011100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi|ALT_INV_Add1~0_combout\,
	datab => \spi0|spi|ALT_INV_MOSI_counter\(3),
	datac => \spi0|spi|ALT_INV_Equal6~0_combout\,
	datad => \spi0|spi|ALT_INV_MOSI_counter\(4),
	dataf => \spi0|spi|ALT_INV_SPI_FW~1_combout\,
	combout => \spi0|spi|MOSI_counter[4]~0_combout\);

-- Location: FF_X84_Y21_N2
\spi0|spi|MOSI_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|spi|MOSI_counter[4]~0_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|MOSI_counter\(4));

-- Location: MLABCELL_X84_Y21_N48
\spi0|spi|Equal6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|spi|Equal6~0_combout\ = ( !\spi0|spi|MOSI_counter\(2) & ( (\spi0|spi|MOSI_counter\(4) & (!\spi0|spi|MOSI_counter\(3) & (!\spi0|spi|MOSI_counter[0]~DUPLICATE_q\ & !\spi0|spi|MOSI_counter[1]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi|ALT_INV_MOSI_counter\(4),
	datab => \spi0|spi|ALT_INV_MOSI_counter\(3),
	datac => \spi0|spi|ALT_INV_MOSI_counter[0]~DUPLICATE_q\,
	datad => \spi0|spi|ALT_INV_MOSI_counter[1]~DUPLICATE_q\,
	dataf => \spi0|spi|ALT_INV_MOSI_counter\(2),
	combout => \spi0|spi|Equal6~0_combout\);

-- Location: FF_X84_Y21_N5
\spi0|spi|SPI_rd_wr_done_flag\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \spi0|spi|Equal6~0_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|SPI_rd_wr_done_flag~q\);

-- Location: IOIBUF_X58_Y0_N58
\ARDUINO_IO[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ARDUINO_IO(11),
	o => \ARDUINO_IO[11]~input_o\);

-- Location: MLABCELL_X84_Y19_N3
\spi0|spi|data_to_read[15]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|spi|data_to_read[15]~0_combout\ = ( \spi0|spi|sck_synchronizer\(6) & ( !\spi0|spi|sck_synchronizer\(1) & ( (!\spi0|spi|fall_flag~q\ & (!\SW[0]~input_o\ & (!\spi0|spi|sck_synchronizer\(0) & \spi0|spi|sck_synchronizer\(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi|ALT_INV_fall_flag~q\,
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \spi0|spi|ALT_INV_sck_synchronizer\(0),
	datad => \spi0|spi|ALT_INV_sck_synchronizer\(7),
	datae => \spi0|spi|ALT_INV_sck_synchronizer\(6),
	dataf => \spi0|spi|ALT_INV_sck_synchronizer\(1),
	combout => \spi0|spi|data_to_read[15]~0_combout\);

-- Location: FF_X78_Y20_N8
\spi0|spi|data_to_read[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \ARDUINO_IO[11]~input_o\,
	sload => VCC,
	ena => \spi0|spi|data_to_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|data_to_read\(0));

-- Location: LABCELL_X79_Y20_N15
\spi0|spi|data_to_read[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|spi|data_to_read[1]~feeder_combout\ = ( \spi0|spi|data_to_read\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \spi0|spi|ALT_INV_data_to_read\(0),
	combout => \spi0|spi|data_to_read[1]~feeder_combout\);

-- Location: FF_X79_Y20_N17
\spi0|spi|data_to_read[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|spi|data_to_read[1]~feeder_combout\,
	ena => \spi0|spi|data_to_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|data_to_read\(1));

-- Location: FF_X79_Y20_N50
\spi0|spi|data_to_read[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \spi0|spi|data_to_read\(1),
	sload => VCC,
	ena => \spi0|spi|data_to_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|data_to_read\(2));

-- Location: FF_X80_Y20_N50
\spi0|spi|data_out[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \spi0|spi|data_to_read\(2),
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => VCC,
	ena => \spi0|spi|Equal6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|data_out[2]~DUPLICATE_q\);

-- Location: FF_X85_Y20_N35
\spi0|spi|data_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \spi0|spi|data_to_read\(1),
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => VCC,
	ena => \spi0|spi|Equal6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|data_out\(1));

-- Location: LABCELL_X79_Y20_N12
\spi0|spi|data_to_read[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|spi|data_to_read[3]~feeder_combout\ = \spi0|spi|data_to_read\(2)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|spi|ALT_INV_data_to_read\(2),
	combout => \spi0|spi|data_to_read[3]~feeder_combout\);

-- Location: FF_X79_Y20_N14
\spi0|spi|data_to_read[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|spi|data_to_read[3]~feeder_combout\,
	ena => \spi0|spi|data_to_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|data_to_read\(3));

-- Location: FF_X82_Y20_N38
\spi0|spi|data_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \spi0|spi|data_to_read\(3),
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => VCC,
	ena => \spi0|spi|Equal6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|data_out\(3));

-- Location: FF_X83_Y22_N26
\spi0|spi|data_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \spi0|spi|data_to_read\(0),
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => VCC,
	ena => \spi0|spi|Equal6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|data_out\(0));

-- Location: LABCELL_X85_Y22_N42
\spi0|next_state~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|next_state~13_combout\ = ( \spi0|spi|SPI_rd_wr_done_flag~q\ & ( (!\spi0|spi|data_out[2]~DUPLICATE_q\ & (\spi0|spi|data_out\(1) & (\spi0|spi|data_out\(3) & !\spi0|spi|data_out\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000010000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi|ALT_INV_data_out[2]~DUPLICATE_q\,
	datab => \spi0|spi|ALT_INV_data_out\(1),
	datac => \spi0|spi|ALT_INV_data_out\(3),
	datad => \spi0|spi|ALT_INV_data_out\(0),
	dataf => \spi0|spi|ALT_INV_SPI_rd_wr_done_flag~q\,
	combout => \spi0|next_state~13_combout\);

-- Location: LABCELL_X85_Y22_N54
\spi0|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|Selector2~0_combout\ = ( !\spi0|spi|SPI_rd_wr_done_flag~q\ & ( \spi0|state.READ_X~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \spi0|ALT_INV_state.READ_X~q\,
	dataf => \spi0|spi|ALT_INV_SPI_rd_wr_done_flag~q\,
	combout => \spi0|Selector2~0_combout\);

-- Location: FF_X82_Y20_N17
\spi0|spi|data_to_read[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \spi0|spi|data_to_read\(3),
	sload => VCC,
	ena => \spi0|spi|data_to_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|data_to_read\(4));

-- Location: FF_X82_Y18_N59
\spi0|spi|data_to_read[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \spi0|spi|data_to_read\(4),
	sload => VCC,
	ena => \spi0|spi|data_to_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|data_to_read\(5));

-- Location: FF_X84_Y18_N20
\spi0|spi|data_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \spi0|spi|data_to_read\(5),
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => VCC,
	ena => \spi0|spi|Equal6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|data_out\(5));

-- Location: FF_X82_Y18_N5
\spi0|spi|data_to_read[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \spi0|spi|data_to_read\(5),
	sload => VCC,
	ena => \spi0|spi|data_to_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|data_to_read\(6));

-- Location: FF_X81_Y20_N29
\spi0|spi|data_to_read[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \spi0|spi|data_to_read\(6),
	sload => VCC,
	ena => \spi0|spi|data_to_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|data_to_read\(7));

-- Location: FF_X81_Y20_N53
\spi0|spi|data_to_read[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \spi0|spi|data_to_read\(7),
	sload => VCC,
	ena => \spi0|spi|data_to_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|data_to_read\(8));

-- Location: FF_X80_Y21_N11
\spi0|spi|data_to_read[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \spi0|spi|data_to_read\(8),
	sload => VCC,
	ena => \spi0|spi|data_to_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|data_to_read\(9));

-- Location: FF_X80_Y21_N34
\spi0|spi|data_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \spi0|spi|data_to_read\(9),
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => VCC,
	ena => \spi0|spi|Equal6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|data_out\(9));

-- Location: FF_X83_Y20_N16
\spi0|spi|data_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \spi0|spi|data_to_read\(4),
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => VCC,
	ena => \spi0|spi|Equal6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|data_out\(4));

-- Location: FF_X84_Y20_N53
\spi0|spi|data_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \spi0|spi|data_to_read\(7),
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => VCC,
	ena => \spi0|spi|Equal6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|data_out\(7));

-- Location: FF_X82_Y18_N8
\spi0|spi|data_out[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \spi0|spi|data_to_read\(6),
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => VCC,
	ena => \spi0|spi|Equal6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|data_out[6]~DUPLICATE_q\);

-- Location: FF_X82_Y22_N41
\spi0|spi|data_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \spi0|spi|data_to_read\(8),
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => VCC,
	ena => \spi0|spi|Equal6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|data_out\(8));

-- Location: LABCELL_X85_Y22_N36
\spi0|next_state~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|next_state~15_combout\ = ( !\spi0|spi|data_out[6]~DUPLICATE_q\ & ( !\spi0|spi|data_out\(8) & ( (\spi0|spi|data_out\(5) & (\spi0|spi|data_out\(9) & (!\spi0|spi|data_out\(4) & \spi0|spi|data_out\(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi|ALT_INV_data_out\(5),
	datab => \spi0|spi|ALT_INV_data_out\(9),
	datac => \spi0|spi|ALT_INV_data_out\(4),
	datad => \spi0|spi|ALT_INV_data_out\(7),
	datae => \spi0|spi|ALT_INV_data_out[6]~DUPLICATE_q\,
	dataf => \spi0|spi|ALT_INV_data_out\(8),
	combout => \spi0|next_state~15_combout\);

-- Location: FF_X80_Y21_N26
\spi0|spi|data_to_read[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \spi0|spi|data_to_read\(9),
	sload => VCC,
	ena => \spi0|spi|data_to_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|data_to_read\(10));

-- Location: FF_X79_Y21_N50
\spi0|spi|data_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \spi0|spi|data_to_read\(10),
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => VCC,
	ena => \spi0|spi|Equal6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|data_out\(10));

-- Location: FF_X82_Y21_N53
\spi0|spi|data_to_read[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \spi0|spi|data_to_read\(10),
	sload => VCC,
	ena => \spi0|spi|data_to_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|data_to_read\(11));

-- Location: FF_X82_Y21_N56
\spi0|spi|data_to_read[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \spi0|spi|data_to_read\(11),
	sload => VCC,
	ena => \spi0|spi|data_to_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|data_to_read\(12));

-- Location: FF_X80_Y22_N58
\spi0|spi|data_out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \spi0|spi|data_to_read\(12),
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => VCC,
	ena => \spi0|spi|Equal6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|data_out\(12));

-- Location: MLABCELL_X78_Y21_N24
\spi0|spi|data_to_read[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|spi|data_to_read[13]~feeder_combout\ = ( \spi0|spi|data_to_read\(12) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \spi0|spi|ALT_INV_data_to_read\(12),
	combout => \spi0|spi|data_to_read[13]~feeder_combout\);

-- Location: FF_X78_Y21_N26
\spi0|spi|data_to_read[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|spi|data_to_read[13]~feeder_combout\,
	ena => \spi0|spi|data_to_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|data_to_read\(13));

-- Location: FF_X82_Y21_N44
\spi0|spi|data_to_read[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \spi0|spi|data_to_read\(13),
	sload => VCC,
	ena => \spi0|spi|data_to_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|data_to_read\(14));

-- Location: FF_X82_Y22_N20
\spi0|spi|data_out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \spi0|spi|data_to_read\(14),
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => VCC,
	ena => \spi0|spi|Equal6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|data_out\(14));

-- Location: FF_X81_Y22_N40
\spi0|spi|data_out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \spi0|spi|data_to_read\(13),
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => VCC,
	ena => \spi0|spi|Equal6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|data_out\(13));

-- Location: FF_X82_Y21_N23
\spi0|spi|data_to_read[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \spi0|spi|data_to_read\(14),
	sload => VCC,
	ena => \spi0|spi|data_to_read[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|data_to_read\(15));

-- Location: FF_X82_Y21_N11
\spi0|spi|data_out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \spi0|spi|data_to_read\(15),
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => VCC,
	ena => \spi0|spi|Equal6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|data_out\(15));

-- Location: FF_X79_Y20_N34
\spi0|spi|data_out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \spi0|spi|data_to_read\(11),
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => VCC,
	ena => \spi0|spi|Equal6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|data_out\(11));

-- Location: LABCELL_X81_Y22_N36
\spi0|next_state~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|next_state~14_combout\ = ( \spi0|spi|data_out\(15) & ( \spi0|spi|data_out\(11) & ( (!\spi0|spi|data_out\(10) & (!\spi0|spi|data_out\(12) & (!\spi0|spi|data_out\(14) & \spi0|spi|data_out\(13)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi|ALT_INV_data_out\(10),
	datab => \spi0|spi|ALT_INV_data_out\(12),
	datac => \spi0|spi|ALT_INV_data_out\(14),
	datad => \spi0|spi|ALT_INV_data_out\(13),
	datae => \spi0|spi|ALT_INV_data_out\(15),
	dataf => \spi0|spi|ALT_INV_data_out\(11),
	combout => \spi0|next_state~14_combout\);

-- Location: LABCELL_X81_Y21_N24
\spi0|cordic|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|Selector0~0_combout\ = ( !\spi0|cordic|state.DONE~q\ & ( (\spi0|cordic|state.IDLE~q\) # (\spi0|start~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111001111110011111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi0|ALT_INV_start~combout\,
	datac => \spi0|cordic|ALT_INV_state.IDLE~q\,
	dataf => \spi0|cordic|ALT_INV_state.DONE~q\,
	combout => \spi0|cordic|Selector0~0_combout\);

-- Location: FF_X81_Y21_N53
\spi0|cordic|state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \spi0|cordic|Selector0~0_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|cordic|state.IDLE~q\);

-- Location: MLABCELL_X84_Y21_N21
\spi0|cordic|WideOr1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|WideOr1~0_combout\ = ( \spi0|cordic|state.IDLE~q\ & ( \spi0|cordic|state.DONE~q\ ) ) # ( !\spi0|cordic|state.IDLE~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \spi0|cordic|ALT_INV_state.DONE~q\,
	dataf => \spi0|cordic|ALT_INV_state.IDLE~q\,
	combout => \spi0|cordic|WideOr1~0_combout\);

-- Location: LABCELL_X81_Y20_N9
\spi0|cordic|done_flag\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|done_flag~combout\ = ( \spi0|cordic|WideOr1~0_combout\ & ( \spi0|cordic|state.DONE~q\ ) ) # ( !\spi0|cordic|WideOr1~0_combout\ & ( \spi0|cordic|done_flag~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi0|cordic|ALT_INV_state.DONE~q\,
	datac => \spi0|cordic|ALT_INV_done_flag~combout\,
	dataf => \spi0|cordic|ALT_INV_WideOr1~0_combout\,
	combout => \spi0|cordic|done_flag~combout\);

-- Location: LABCELL_X85_Y22_N30
\spi0|Selector7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|Selector7~1_combout\ = ( \spi0|state.RESET_S~q\ & ( (\spi0|state.CORDIC_DONE~q\ & (!\spi0|state.DONE_S~q\ & ((!\spi0|cordic|done_flag~combout\) # (\spi0|state.WAIT_PATH_START~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110000000100000011000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|ALT_INV_state.WAIT_PATH_START~q\,
	datab => \spi0|ALT_INV_state.CORDIC_DONE~q\,
	datac => \spi0|ALT_INV_state.DONE_S~q\,
	datad => \spi0|cordic|ALT_INV_done_flag~combout\,
	dataf => \spi0|ALT_INV_state.RESET_S~q\,
	combout => \spi0|Selector7~1_combout\);

-- Location: LABCELL_X85_Y22_N24
\spi0|Selector7~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|Selector7~2_combout\ = ( \spi0|next_state~15_combout\ & ( \spi0|next_state~13_combout\ & ( ((\spi0|Selector7~1_combout\ & ((!\spi0|state.WAIT_PATH_START~q\) # (!\spi0|next_state~14_combout\)))) # (\spi0|state.START_CORDIC~q\) ) ) ) # ( 
-- !\spi0|next_state~15_combout\ & ( \spi0|next_state~13_combout\ & ( (\spi0|state.START_CORDIC~q\) # (\spi0|Selector7~1_combout\) ) ) ) # ( \spi0|next_state~15_combout\ & ( !\spi0|next_state~13_combout\ & ( (\spi0|state.START_CORDIC~q\) # 
-- (\spi0|Selector7~1_combout\) ) ) ) # ( !\spi0|next_state~15_combout\ & ( !\spi0|next_state~13_combout\ & ( (\spi0|state.START_CORDIC~q\) # (\spi0|Selector7~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010111110101111101011111010111110101111101001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|ALT_INV_Selector7~1_combout\,
	datab => \spi0|ALT_INV_state.WAIT_PATH_START~q\,
	datac => \spi0|ALT_INV_state.START_CORDIC~q\,
	datad => \spi0|ALT_INV_next_state~14_combout\,
	datae => \spi0|ALT_INV_next_state~15_combout\,
	dataf => \spi0|ALT_INV_next_state~13_combout\,
	combout => \spi0|Selector7~2_combout\);

-- Location: FF_X85_Y22_N26
\spi0|state.CORDIC_DONE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|Selector7~2_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|state.CORDIC_DONE~q\);

-- Location: MLABCELL_X78_Y20_N24
\spi0|Selector8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|Selector8~0_combout\ = ( \spi0|state.WRITE_PATH~q\ & ( \spi0|state.CORDIC_DONE~q\ & ( (!\spi0|spi|SPI_rd_wr_done_flag~q\) # (\spi0|cordic|done_flag~combout\) ) ) ) # ( !\spi0|state.WRITE_PATH~q\ & ( \spi0|state.CORDIC_DONE~q\ & ( 
-- \spi0|cordic|done_flag~combout\ ) ) ) # ( \spi0|state.WRITE_PATH~q\ & ( !\spi0|state.CORDIC_DONE~q\ & ( !\spi0|spi|SPI_rd_wr_done_flag~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000110011001100111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi|ALT_INV_SPI_rd_wr_done_flag~q\,
	datab => \spi0|cordic|ALT_INV_done_flag~combout\,
	datae => \spi0|ALT_INV_state.WRITE_PATH~q\,
	dataf => \spi0|ALT_INV_state.CORDIC_DONE~q\,
	combout => \spi0|Selector8~0_combout\);

-- Location: FF_X82_Y20_N53
\spi0|state.WRITE_PATH\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \spi0|Selector8~0_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|state.WRITE_PATH~q\);

-- Location: FF_X83_Y19_N2
\spi0|state.WRITE_X\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \spi0|state.WRITE_PATH~q\,
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => VCC,
	ena => \spi0|spi|SPI_rd_wr_done_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|state.WRITE_X~q\);

-- Location: FF_X83_Y19_N29
\spi0|state.WRITE_Y\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \spi0|state.WRITE_X~q\,
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => VCC,
	ena => \spi0|spi|SPI_rd_wr_done_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|state.WRITE_Y~q\);

-- Location: FF_X83_Y19_N14
\spi0|state.WRITE_Z\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \spi0|state.WRITE_Y~q\,
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => VCC,
	ena => \spi0|spi|SPI_rd_wr_done_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|state.WRITE_Z~q\);

-- Location: LABCELL_X85_Y22_N3
\spi0|Selector12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|Selector12~0_combout\ = ( \spi0|state.WRITE_Z~q\ & ( \spi0|spi|SPI_rd_wr_done_flag~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi0|spi|ALT_INV_SPI_rd_wr_done_flag~q\,
	dataf => \spi0|ALT_INV_state.WRITE_Z~q\,
	combout => \spi0|Selector12~0_combout\);

-- Location: FF_X85_Y22_N5
\spi0|state.DONE_S\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|Selector12~0_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|state.DONE_S~q\);

-- Location: LABCELL_X85_Y22_N45
\spi0|Selector7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|Selector7~0_combout\ = (\spi0|state.RESET_S~q\ & !\spi0|state.DONE_S~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|ALT_INV_state.RESET_S~q\,
	datad => \spi0|ALT_INV_state.DONE_S~q\,
	combout => \spi0|Selector7~0_combout\);

-- Location: LABCELL_X85_Y22_N6
\spi0|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|Selector1~0_combout\ = ( \spi0|state.WAIT_PATH_START~q\ & ( \spi0|next_state~13_combout\ & ( (!\spi0|state.START_CORDIC~q\ & ((!\spi0|Selector7~0_combout\) # ((!\spi0|next_state~15_combout\) # (!\spi0|next_state~14_combout\)))) ) ) ) # ( 
-- !\spi0|state.WAIT_PATH_START~q\ & ( \spi0|next_state~13_combout\ & ( (!\spi0|Selector7~0_combout\ & !\spi0|state.START_CORDIC~q\) ) ) ) # ( \spi0|state.WAIT_PATH_START~q\ & ( !\spi0|next_state~13_combout\ & ( !\spi0|state.START_CORDIC~q\ ) ) ) # ( 
-- !\spi0|state.WAIT_PATH_START~q\ & ( !\spi0|next_state~13_combout\ & ( (!\spi0|Selector7~0_combout\ & !\spi0|state.START_CORDIC~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000110011001100110010001000100010001100110011001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|ALT_INV_Selector7~0_combout\,
	datab => \spi0|ALT_INV_state.START_CORDIC~q\,
	datac => \spi0|ALT_INV_next_state~15_combout\,
	datad => \spi0|ALT_INV_next_state~14_combout\,
	datae => \spi0|ALT_INV_state.WAIT_PATH_START~q\,
	dataf => \spi0|ALT_INV_next_state~13_combout\,
	combout => \spi0|Selector1~0_combout\);

-- Location: FF_X85_Y22_N8
\spi0|state.WAIT_PATH_START\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|Selector1~0_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|state.WAIT_PATH_START~q\);

-- Location: LABCELL_X85_Y22_N15
\spi0|Selector0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|Selector0~2_combout\ = ( \spi0|cordic|done_flag~combout\ & ( \spi0|state.CORDIC_DONE~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \spi0|ALT_INV_state.CORDIC_DONE~q\,
	dataf => \spi0|cordic|ALT_INV_done_flag~combout\,
	combout => \spi0|Selector0~2_combout\);

-- Location: LABCELL_X85_Y22_N48
\spi0|Selector2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|Selector2~1_combout\ = ( \spi0|state.WAIT_PATH_START~q\ & ( !\spi0|Selector0~2_combout\ & ( ((\spi0|next_state~13_combout\ & (\spi0|next_state~15_combout\ & \spi0|next_state~14_combout\))) # (\spi0|Selector2~0_combout\) ) ) ) # ( 
-- !\spi0|state.WAIT_PATH_START~q\ & ( !\spi0|Selector0~2_combout\ & ( \spi0|Selector2~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011011100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|ALT_INV_next_state~13_combout\,
	datab => \spi0|ALT_INV_Selector2~0_combout\,
	datac => \spi0|ALT_INV_next_state~15_combout\,
	datad => \spi0|ALT_INV_next_state~14_combout\,
	datae => \spi0|ALT_INV_state.WAIT_PATH_START~q\,
	dataf => \spi0|ALT_INV_Selector0~2_combout\,
	combout => \spi0|Selector2~1_combout\);

-- Location: FF_X85_Y22_N50
\spi0|state.READ_X\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|Selector2~1_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|state.READ_X~q\);

-- Location: FF_X85_Y22_N41
\spi0|state.READ_Y\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \spi0|state.READ_X~q\,
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => VCC,
	ena => \spi0|spi|SPI_rd_wr_done_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|state.READ_Y~q\);

-- Location: FF_X84_Y21_N50
\spi0|state.READ_Z_L\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \spi0|state.READ_Y~q\,
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => VCC,
	ena => \spi0|spi|SPI_rd_wr_done_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|state.READ_Z_L~q\);

-- Location: FF_X84_Y21_N35
\spi0|state.READ_Z_H\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \spi0|state.READ_Z_L~q\,
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => VCC,
	ena => \spi0|spi|SPI_rd_wr_done_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|state.READ_Z_H~q\);

-- Location: MLABCELL_X84_Y21_N15
\spi0|Selector6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|Selector6~0_combout\ = ( \spi0|state.READ_Z_H~q\ & ( \spi0|spi|SPI_rd_wr_done_flag~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|spi|ALT_INV_SPI_rd_wr_done_flag~q\,
	dataf => \spi0|ALT_INV_state.READ_Z_H~q\,
	combout => \spi0|Selector6~0_combout\);

-- Location: FF_X85_Y22_N44
\spi0|state.START_CORDIC\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \spi0|Selector6~0_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|state.START_CORDIC~q\);

-- Location: LABCELL_X85_Y22_N57
\spi0|WideOr2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|WideOr2~0_combout\ = ( \spi0|state.CORDIC_DONE~q\ ) # ( !\spi0|state.CORDIC_DONE~q\ & ( (!\spi0|state.RESET_S~q\) # (\spi0|state.START_CORDIC~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111111001111110011111100111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi0|ALT_INV_state.RESET_S~q\,
	datac => \spi0|ALT_INV_state.START_CORDIC~q\,
	dataf => \spi0|ALT_INV_state.CORDIC_DONE~q\,
	combout => \spi0|WideOr2~0_combout\);

-- Location: LABCELL_X85_Y22_N0
\spi0|start\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|start~combout\ = ( \spi0|state.START_CORDIC~q\ & ( (\spi0|WideOr2~0_combout\) # (\spi0|start~combout\) ) ) # ( !\spi0|state.START_CORDIC~q\ & ( (\spi0|start~combout\ & !\spi0|WideOr2~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|ALT_INV_start~combout\,
	datad => \spi0|ALT_INV_WideOr2~0_combout\,
	dataf => \spi0|ALT_INV_state.START_CORDIC~q\,
	combout => \spi0|start~combout\);

-- Location: LABCELL_X81_Y20_N30
\spi0|cordic|Selector6~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|Selector6~2_combout\ = ( \spi0|cordic|core|done_core_flag~combout\ & ( \spi0|cordic|state.WAIT_CORE_DONE~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|cordic|ALT_INV_state.WAIT_CORE_DONE~q\,
	dataf => \spi0|cordic|core|ALT_INV_done_core_flag~combout\,
	combout => \spi0|cordic|Selector6~2_combout\);

-- Location: FF_X81_Y20_N32
\spi0|cordic|state.CHECK_R\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|cordic|Selector6~2_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|cordic|state.CHECK_R~q\);

-- Location: LABCELL_X81_Y20_N12
\spi0|cordic|index_loop[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|index_loop[0]~3_combout\ = ( \spi0|cordic|index_loop\(0) & ( !\spi0|cordic|state.DONE~q\ & ( (!\spi0|cordic|state.CHECK_R~q\) # ((\spi0|cordic|index_loop\(3) & (\spi0|cordic|index_loop\(1) & \spi0|cordic|index_loop\(2)))) ) ) ) # ( 
-- !\spi0|cordic|index_loop\(0) & ( !\spi0|cordic|state.DONE~q\ & ( \spi0|cordic|state.CHECK_R~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_index_loop\(3),
	datab => \spi0|cordic|ALT_INV_index_loop\(1),
	datac => \spi0|cordic|ALT_INV_state.CHECK_R~q\,
	datad => \spi0|cordic|ALT_INV_index_loop\(2),
	datae => \spi0|cordic|ALT_INV_index_loop\(0),
	dataf => \spi0|cordic|ALT_INV_state.DONE~q\,
	combout => \spi0|cordic|index_loop[0]~3_combout\);

-- Location: FF_X81_Y20_N14
\spi0|cordic|index_loop[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|cordic|index_loop[0]~3_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|cordic|index_loop\(0));

-- Location: LABCELL_X81_Y20_N18
\spi0|cordic|index_loop[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|index_loop[3]~0_combout\ = ( \spi0|cordic|index_loop\(3) & ( \spi0|cordic|state.CHECK_R~q\ & ( !\spi0|cordic|state.DONE~q\ ) ) ) # ( !\spi0|cordic|index_loop\(3) & ( \spi0|cordic|state.CHECK_R~q\ & ( (\spi0|cordic|index_loop\(1) & 
-- (!\spi0|cordic|state.DONE~q\ & (\spi0|cordic|index_loop\(2) & \spi0|cordic|index_loop\(0)))) ) ) ) # ( \spi0|cordic|index_loop\(3) & ( !\spi0|cordic|state.CHECK_R~q\ & ( !\spi0|cordic|state.DONE~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000001001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_index_loop\(1),
	datab => \spi0|cordic|ALT_INV_state.DONE~q\,
	datac => \spi0|cordic|ALT_INV_index_loop\(2),
	datad => \spi0|cordic|ALT_INV_index_loop\(0),
	datae => \spi0|cordic|ALT_INV_index_loop\(3),
	dataf => \spi0|cordic|ALT_INV_state.CHECK_R~q\,
	combout => \spi0|cordic|index_loop[3]~0_combout\);

-- Location: FF_X81_Y20_N20
\spi0|cordic|index_loop[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|cordic|index_loop[3]~0_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|cordic|index_loop\(3));

-- Location: LABCELL_X81_Y20_N54
\spi0|cordic|index_loop[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|index_loop[1]~2_combout\ = ( \spi0|cordic|index_loop\(1) & ( \spi0|cordic|state.CHECK_R~q\ & ( (!\spi0|cordic|state.DONE~q\ & ((!\spi0|cordic|index_loop\(0)) # ((\spi0|cordic|index_loop\(2) & \spi0|cordic|index_loop\(3))))) ) ) ) # ( 
-- !\spi0|cordic|index_loop\(1) & ( \spi0|cordic|state.CHECK_R~q\ & ( (!\spi0|cordic|state.DONE~q\ & \spi0|cordic|index_loop\(0)) ) ) ) # ( \spi0|cordic|index_loop\(1) & ( !\spi0|cordic|state.CHECK_R~q\ & ( !\spi0|cordic|state.DONE~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000110011001100110000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_index_loop\(2),
	datab => \spi0|cordic|ALT_INV_state.DONE~q\,
	datac => \spi0|cordic|ALT_INV_index_loop\(3),
	datad => \spi0|cordic|ALT_INV_index_loop\(0),
	datae => \spi0|cordic|ALT_INV_index_loop\(1),
	dataf => \spi0|cordic|ALT_INV_state.CHECK_R~q\,
	combout => \spi0|cordic|index_loop[1]~2_combout\);

-- Location: FF_X81_Y20_N56
\spi0|cordic|index_loop[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|cordic|index_loop[1]~2_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|cordic|index_loop\(1));

-- Location: LABCELL_X81_Y20_N42
\spi0|cordic|index_loop[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|index_loop[2]~1_combout\ = ( \spi0|cordic|index_loop\(2) & ( \spi0|cordic|state.CHECK_R~q\ & ( (!\spi0|cordic|state.DONE~q\ & ((!\spi0|cordic|index_loop\(1)) # ((!\spi0|cordic|index_loop\(0)) # (\spi0|cordic|index_loop\(3))))) ) ) ) # ( 
-- !\spi0|cordic|index_loop\(2) & ( \spi0|cordic|state.CHECK_R~q\ & ( (\spi0|cordic|index_loop\(1) & (!\spi0|cordic|state.DONE~q\ & \spi0|cordic|index_loop\(0))) ) ) ) # ( \spi0|cordic|index_loop\(2) & ( !\spi0|cordic|state.CHECK_R~q\ & ( 
-- !\spi0|cordic|state.DONE~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000010001001100110010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_index_loop\(1),
	datab => \spi0|cordic|ALT_INV_state.DONE~q\,
	datac => \spi0|cordic|ALT_INV_index_loop\(3),
	datad => \spi0|cordic|ALT_INV_index_loop\(0),
	datae => \spi0|cordic|ALT_INV_index_loop\(2),
	dataf => \spi0|cordic|ALT_INV_state.CHECK_R~q\,
	combout => \spi0|cordic|index_loop[2]~1_combout\);

-- Location: FF_X81_Y20_N44
\spi0|cordic|index_loop[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|cordic|index_loop[2]~1_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|cordic|index_loop\(2));

-- Location: LABCELL_X81_Y20_N24
\spi0|cordic|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|Selector1~0_combout\ = ( \spi0|cordic|index_loop\(1) & ( \spi0|cordic|state.LOAD_DATA~q\ & ( (\spi0|cordic|state.CHECK_R~q\ & (\spi0|cordic|index_loop\(2) & (\spi0|cordic|index_loop\(3) & \spi0|cordic|index_loop\(0)))) ) ) ) # ( 
-- \spi0|cordic|index_loop\(1) & ( !\spi0|cordic|state.LOAD_DATA~q\ & ( (!\spi0|cordic|state.CHECK_R~q\) # ((\spi0|cordic|index_loop\(2) & (\spi0|cordic|index_loop\(3) & \spi0|cordic|index_loop\(0)))) ) ) ) # ( !\spi0|cordic|index_loop\(1) & ( 
-- !\spi0|cordic|state.LOAD_DATA~q\ & ( !\spi0|cordic|state.CHECK_R~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101100000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_state.CHECK_R~q\,
	datab => \spi0|cordic|ALT_INV_index_loop\(2),
	datac => \spi0|cordic|ALT_INV_index_loop\(3),
	datad => \spi0|cordic|ALT_INV_index_loop\(0),
	datae => \spi0|cordic|ALT_INV_index_loop\(1),
	dataf => \spi0|cordic|ALT_INV_state.LOAD_DATA~q\,
	combout => \spi0|cordic|Selector1~0_combout\);

-- Location: LABCELL_X81_Y20_N36
\spi0|cordic|Selector1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|Selector1~1_combout\ = ( \spi0|cordic|state.IDLE~q\ & ( \spi0|cordic|core|done_core_flag~combout\ & ( (!\spi0|cordic|state.WAIT_CORE_DONE~q\ & (!\spi0|cordic|Selector1~0_combout\ & \spi0|cordic|state.CHECK_R~q\)) ) ) ) # ( 
-- !\spi0|cordic|state.IDLE~q\ & ( \spi0|cordic|core|done_core_flag~combout\ & ( (!\spi0|cordic|state.WAIT_CORE_DONE~q\ & ((!\spi0|cordic|Selector1~0_combout\) # (\spi0|start~combout\))) ) ) ) # ( \spi0|cordic|state.IDLE~q\ & ( 
-- !\spi0|cordic|core|done_core_flag~combout\ & ( (!\spi0|cordic|Selector1~0_combout\ & ((\spi0|cordic|state.CHECK_R~q\) # (\spi0|cordic|state.WAIT_CORE_DONE~q\))) ) ) ) # ( !\spi0|cordic|state.IDLE~q\ & ( !\spi0|cordic|core|done_core_flag~combout\ & ( 
-- (!\spi0|cordic|Selector1~0_combout\) # (\spi0|start~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001111110011010100001111000010100010101000100000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_state.WAIT_CORE_DONE~q\,
	datab => \spi0|ALT_INV_start~combout\,
	datac => \spi0|cordic|ALT_INV_Selector1~0_combout\,
	datad => \spi0|cordic|ALT_INV_state.CHECK_R~q\,
	datae => \spi0|cordic|ALT_INV_state.IDLE~q\,
	dataf => \spi0|cordic|core|ALT_INV_done_core_flag~combout\,
	combout => \spi0|cordic|Selector1~1_combout\);

-- Location: FF_X81_Y20_N38
\spi0|cordic|state.LOAD_DATA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|cordic|Selector1~1_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|cordic|state.LOAD_DATA~q\);

-- Location: FF_X81_Y21_N23
\spi0|cordic|state.START_STATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \spi0|cordic|state.LOAD_DATA~q\,
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|cordic|state.START_STATE~q\);

-- Location: LABCELL_X81_Y21_N0
\spi0|cordic|WideOr5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|WideOr5~0_combout\ = ((!\spi0|cordic|state.IDLE~q\) # (\spi0|cordic|state.WAIT_CORE_DONE~q\)) # (\spi0|cordic|state.START_STATE~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010111111111111101011111111111110101111111111111010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_state.START_STATE~q\,
	datac => \spi0|cordic|ALT_INV_state.IDLE~q\,
	datad => \spi0|cordic|ALT_INV_state.WAIT_CORE_DONE~q\,
	combout => \spi0|cordic|WideOr5~0_combout\);

-- Location: LABCELL_X81_Y21_N21
\spi0|cordic|start_core\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|start_core~combout\ = ( \spi0|cordic|start_core~combout\ & ( (!\spi0|cordic|WideOr5~0_combout\) # (\spi0|cordic|state.START_STATE~q\) ) ) # ( !\spi0|cordic|start_core~combout\ & ( (\spi0|cordic|WideOr5~0_combout\ & 
-- \spi0|cordic|state.START_STATE~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_WideOr5~0_combout\,
	datad => \spi0|cordic|ALT_INV_state.START_STATE~q\,
	dataf => \spi0|cordic|ALT_INV_start_core~combout\,
	combout => \spi0|cordic|start_core~combout\);

-- Location: LABCELL_X81_Y21_N9
\spi0|cordic|core|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|Selector0~0_combout\ = ( \spi0|cordic|start_core~combout\ & ( !\spi0|cordic|core|state.DONE~q\ ) ) # ( !\spi0|cordic|start_core~combout\ & ( (!\spi0|cordic|core|state.DONE~q\ & \spi0|cordic|core|state.IDLE~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|core|ALT_INV_state.DONE~q\,
	datad => \spi0|cordic|core|ALT_INV_state.IDLE~q\,
	dataf => \spi0|cordic|ALT_INV_start_core~combout\,
	combout => \spi0|cordic|core|Selector0~0_combout\);

-- Location: FF_X81_Y21_N11
\spi0|cordic|core|state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|cordic|core|Selector0~0_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|cordic|core|state.IDLE~q\);

-- Location: LABCELL_X81_Y21_N27
\spi0|cordic|core|next_state.EXECUTE~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|next_state.EXECUTE~0_combout\ = ( \spi0|cordic|start_core~combout\ & ( !\spi0|cordic|core|state.IDLE~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|cordic|core|ALT_INV_state.IDLE~q\,
	dataf => \spi0|cordic|ALT_INV_start_core~combout\,
	combout => \spi0|cordic|core|next_state.EXECUTE~0_combout\);

-- Location: FF_X81_Y21_N29
\spi0|cordic|core|state.EXECUTE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|cordic|core|next_state.EXECUTE~0_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|cordic|core|state.EXECUTE~q\);

-- Location: LABCELL_X81_Y21_N18
\spi0|cordic|core|done_core_flag\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|done_core_flag~combout\ = ( \spi0|cordic|core|state.DONE~q\ & ( (!\spi0|cordic|core|state.EXECUTE~q\) # (\spi0|cordic|core|done_core_flag~combout\) ) ) # ( !\spi0|cordic|core|state.DONE~q\ & ( (\spi0|cordic|core|state.EXECUTE~q\ & 
-- \spi0|cordic|core|done_core_flag~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi0|cordic|core|ALT_INV_state.EXECUTE~q\,
	datac => \spi0|cordic|core|ALT_INV_done_core_flag~combout\,
	dataf => \spi0|cordic|core|ALT_INV_state.DONE~q\,
	combout => \spi0|cordic|core|done_core_flag~combout\);

-- Location: LABCELL_X81_Y20_N48
\spi0|cordic|Selector6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|Selector6~0_combout\ = ( \spi0|cordic|state.DONE~q\ & ( \spi0|cordic|state.CHECK_R~q\ & ( (\spi0|cordic|index_loop\(1) & (\spi0|cordic|index_loop\(2) & (\spi0|cordic|index_loop\(3) & \spi0|cordic|index_loop\(0)))) ) ) ) # ( 
-- !\spi0|cordic|state.DONE~q\ & ( \spi0|cordic|state.CHECK_R~q\ & ( (\spi0|cordic|index_loop\(1) & (\spi0|cordic|index_loop\(2) & (\spi0|cordic|index_loop\(3) & \spi0|cordic|index_loop\(0)))) ) ) ) # ( \spi0|cordic|state.DONE~q\ & ( 
-- !\spi0|cordic|state.CHECK_R~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_index_loop\(1),
	datab => \spi0|cordic|ALT_INV_index_loop\(2),
	datac => \spi0|cordic|ALT_INV_index_loop\(3),
	datad => \spi0|cordic|ALT_INV_index_loop\(0),
	datae => \spi0|cordic|ALT_INV_state.DONE~q\,
	dataf => \spi0|cordic|ALT_INV_state.CHECK_R~q\,
	combout => \spi0|cordic|Selector6~0_combout\);

-- Location: LABCELL_X81_Y20_N0
\spi0|cordic|Selector6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|Selector6~1_combout\ = ( \spi0|cordic|state.IDLE~q\ & ( \spi0|start~combout\ & ( (\spi0|cordic|Selector6~0_combout\ & ((!\spi0|cordic|state.WAIT_CORE_DONE~q\ & ((\spi0|cordic|state.CHECK_R~q\))) # (\spi0|cordic|state.WAIT_CORE_DONE~q\ & 
-- (!\spi0|cordic|core|done_core_flag~combout\)))) ) ) ) # ( \spi0|cordic|state.IDLE~q\ & ( !\spi0|start~combout\ & ( (\spi0|cordic|Selector6~0_combout\ & ((!\spi0|cordic|state.WAIT_CORE_DONE~q\ & ((\spi0|cordic|state.CHECK_R~q\))) # 
-- (\spi0|cordic|state.WAIT_CORE_DONE~q\ & (!\spi0|cordic|core|done_core_flag~combout\)))) ) ) ) # ( !\spi0|cordic|state.IDLE~q\ & ( !\spi0|start~combout\ & ( (\spi0|cordic|Selector6~0_combout\ & ((!\spi0|cordic|core|done_core_flag~combout\) # 
-- (!\spi0|cordic|state.WAIT_CORE_DONE~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100100010000000110010001000000000000000000000001100100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|core|ALT_INV_done_core_flag~combout\,
	datab => \spi0|cordic|ALT_INV_Selector6~0_combout\,
	datac => \spi0|cordic|ALT_INV_state.CHECK_R~q\,
	datad => \spi0|cordic|ALT_INV_state.WAIT_CORE_DONE~q\,
	datae => \spi0|cordic|ALT_INV_state.IDLE~q\,
	dataf => \spi0|ALT_INV_start~combout\,
	combout => \spi0|cordic|Selector6~1_combout\);

-- Location: FF_X81_Y20_N2
\spi0|cordic|state.DONE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|cordic|Selector6~1_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|cordic|state.DONE~q\);

-- Location: LABCELL_X85_Y22_N33
\spi0|y_in[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|y_in[0]~0_combout\ = ( \spi0|state.READ_Y~q\ & ( \spi0|spi|SPI_rd_wr_done_flag~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \spi0|spi|ALT_INV_SPI_rd_wr_done_flag~q\,
	dataf => \spi0|ALT_INV_state.READ_Y~q\,
	combout => \spi0|y_in[0]~0_combout\);

-- Location: LABCELL_X83_Y19_N21
\spi0|y_in[15]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|y_in\(15) = ( \spi0|y_in\(15) & ( (!\spi0|y_in[0]~0_combout\) # (\spi0|spi|data_out\(15)) ) ) # ( !\spi0|y_in\(15) & ( (\spi0|y_in[0]~0_combout\ & \spi0|spi|data_out\(15)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|ALT_INV_y_in[0]~0_combout\,
	datad => \spi0|spi|ALT_INV_data_out\(15),
	dataf => \spi0|ALT_INV_y_in\(15),
	combout => \spi0|y_in\(15));

-- Location: LABCELL_X83_Y19_N30
\spi0|cordic|y_in_c~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|y_in_c~0_combout\ = ( \spi0|cordic|core|y_out\(15) & ( \spi0|y_in\(15) ) ) # ( !\spi0|cordic|core|y_out\(15) & ( \spi0|y_in\(15) & ( (!\spi0|cordic|index_loop\(3) & (!\spi0|cordic|index_loop\(0) & (!\spi0|cordic|index_loop\(1) & 
-- !\spi0|cordic|index_loop\(2)))) ) ) ) # ( \spi0|cordic|core|y_out\(15) & ( !\spi0|y_in\(15) & ( (((\spi0|cordic|index_loop\(2)) # (\spi0|cordic|index_loop\(1))) # (\spi0|cordic|index_loop\(0))) # (\spi0|cordic|index_loop\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011111111111111110000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_index_loop\(3),
	datab => \spi0|cordic|ALT_INV_index_loop\(0),
	datac => \spi0|cordic|ALT_INV_index_loop\(1),
	datad => \spi0|cordic|ALT_INV_index_loop\(2),
	datae => \spi0|cordic|core|ALT_INV_y_out\(15),
	dataf => \spi0|ALT_INV_y_in\(15),
	combout => \spi0|cordic|y_in_c~0_combout\);

-- Location: LABCELL_X83_Y19_N15
\spi0|cordic|y_in_c[15]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|y_in_c\(15) = ( \spi0|cordic|y_in_c~0_combout\ & ( (\spi0|cordic|state.LOAD_DATA~q\) # (\spi0|cordic|y_in_c\(15)) ) ) # ( !\spi0|cordic|y_in_c~0_combout\ & ( (\spi0|cordic|y_in_c\(15) & !\spi0|cordic|state.LOAD_DATA~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|cordic|ALT_INV_y_in_c\(15),
	datad => \spi0|cordic|ALT_INV_state.LOAD_DATA~q\,
	dataf => \spi0|cordic|ALT_INV_y_in_c~0_combout\,
	combout => \spi0|cordic|y_in_c\(15));

-- Location: MLABCELL_X82_Y20_N39
\spi0|z_in[19]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|z_in\(19) = ( \spi0|z_in\(19) & ( (!\spi0|Selector6~0_combout\) # (\spi0|spi|data_out\(3)) ) ) # ( !\spi0|z_in\(19) & ( (\spi0|Selector6~0_combout\ & \spi0|spi|data_out\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|ALT_INV_Selector6~0_combout\,
	datad => \spi0|spi|ALT_INV_data_out\(3),
	dataf => \spi0|ALT_INV_z_in\(19),
	combout => \spi0|z_in\(19));

-- Location: MLABCELL_X82_Y20_N54
\spi0|cordic|z_in_c~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|z_in_c~3_combout\ = ( \spi0|z_in\(19) & ( \spi0|cordic|core|z_out\(19) ) ) # ( !\spi0|z_in\(19) & ( \spi0|cordic|core|z_out\(19) & ( (((\spi0|cordic|index_loop\(1)) # (\spi0|cordic|index_loop\(3))) # (\spi0|cordic|index_loop\(0))) # 
-- (\spi0|cordic|index_loop\(2)) ) ) ) # ( \spi0|z_in\(19) & ( !\spi0|cordic|core|z_out\(19) & ( (!\spi0|cordic|index_loop\(2) & (!\spi0|cordic|index_loop\(0) & (!\spi0|cordic|index_loop\(3) & !\spi0|cordic|index_loop\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000001111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_index_loop\(2),
	datab => \spi0|cordic|ALT_INV_index_loop\(0),
	datac => \spi0|cordic|ALT_INV_index_loop\(3),
	datad => \spi0|cordic|ALT_INV_index_loop\(1),
	datae => \spi0|ALT_INV_z_in\(19),
	dataf => \spi0|cordic|core|ALT_INV_z_out\(19),
	combout => \spi0|cordic|z_in_c~3_combout\);

-- Location: MLABCELL_X82_Y20_N36
\spi0|cordic|z_in_c[19]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|z_in_c\(19) = ( \spi0|cordic|state.LOAD_DATA~q\ & ( \spi0|cordic|z_in_c~3_combout\ ) ) # ( !\spi0|cordic|state.LOAD_DATA~q\ & ( \spi0|cordic|z_in_c\(19) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi0|cordic|ALT_INV_z_in_c\(19),
	datac => \spi0|cordic|ALT_INV_z_in_c~3_combout\,
	dataf => \spi0|cordic|ALT_INV_state.LOAD_DATA~q\,
	combout => \spi0|cordic|z_in_c\(19));

-- Location: LABCELL_X85_Y20_N3
\spi0|z_in[17]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|z_in\(17) = ( \spi0|spi|data_out\(1) & ( (\spi0|z_in\(17)) # (\spi0|Selector6~0_combout\) ) ) # ( !\spi0|spi|data_out\(1) & ( (!\spi0|Selector6~0_combout\ & \spi0|z_in\(17)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|ALT_INV_Selector6~0_combout\,
	datad => \spi0|ALT_INV_z_in\(17),
	dataf => \spi0|spi|ALT_INV_data_out\(1),
	combout => \spi0|z_in\(17));

-- Location: LABCELL_X81_Y18_N30
\spi0|cordic|index[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|index\(1) = ( \spi0|cordic|index_loop\(1) & ( (\spi0|cordic|state.LOAD_DATA~q\) # (\spi0|cordic|index\(1)) ) ) # ( !\spi0|cordic|index_loop\(1) & ( (\spi0|cordic|index\(1) & !\spi0|cordic|state.LOAD_DATA~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi0|cordic|ALT_INV_index\(1),
	datad => \spi0|cordic|ALT_INV_state.LOAD_DATA~q\,
	dataf => \spi0|cordic|ALT_INV_index_loop\(1),
	combout => \spi0|cordic|index\(1));

-- Location: LABCELL_X83_Y18_N33
\spi0|cordic|index[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|index\(0) = (!\spi0|cordic|state.LOAD_DATA~q\ & (\spi0|cordic|index\(0))) # (\spi0|cordic|state.LOAD_DATA~q\ & ((\spi0|cordic|index_loop\(0))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111101010000010111110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_index\(0),
	datac => \spi0|cordic|ALT_INV_state.LOAD_DATA~q\,
	datad => \spi0|cordic|ALT_INV_index_loop\(0),
	combout => \spi0|cordic|index\(0));

-- Location: LABCELL_X80_Y18_N48
\spi0|cordic|index[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|index\(2) = ( \spi0|cordic|index\(2) & ( (!\spi0|cordic|state.LOAD_DATA~q\) # (\spi0|cordic|index_loop\(2)) ) ) # ( !\spi0|cordic|index\(2) & ( (\spi0|cordic|index_loop\(2) & \spi0|cordic|state.LOAD_DATA~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|cordic|ALT_INV_index_loop\(2),
	datad => \spi0|cordic|ALT_INV_state.LOAD_DATA~q\,
	dataf => \spi0|cordic|ALT_INV_index\(2),
	combout => \spi0|cordic|index\(2));

-- Location: LABCELL_X80_Y18_N39
\spi0|cordic|index[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|index\(3) = ( \spi0|cordic|index\(3) & ( (!\spi0|cordic|state.LOAD_DATA~q\) # (\spi0|cordic|index_loop\(3)) ) ) # ( !\spi0|cordic|index\(3) & ( (\spi0|cordic|index_loop\(3) & \spi0|cordic|state.LOAD_DATA~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|cordic|ALT_INV_index_loop\(3),
	datad => \spi0|cordic|ALT_INV_state.LOAD_DATA~q\,
	dataf => \spi0|cordic|ALT_INV_index\(3),
	combout => \spi0|cordic|index\(3));

-- Location: LABCELL_X79_Y19_N54
\spi0|cordic|core|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|Mux1~0_combout\ = ( !\spi0|cordic|index\(2) & ( !\spi0|cordic|index\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \spi0|cordic|ALT_INV_index\(2),
	dataf => \spi0|cordic|ALT_INV_index\(3),
	combout => \spi0|cordic|core|Mux1~0_combout\);

-- Location: MLABCELL_X82_Y19_N42
\spi0|cordic|core|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|Mux0~0_combout\ = ( \spi0|cordic|core|Mux1~0_combout\ & ( (!\spi0|cordic|index\(1) & !\spi0|cordic|index\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_index\(1),
	datab => \spi0|cordic|ALT_INV_index\(0),
	dataf => \spi0|cordic|core|ALT_INV_Mux1~0_combout\,
	combout => \spi0|cordic|core|Mux0~0_combout\);

-- Location: MLABCELL_X82_Y19_N39
\spi0|cordic|core|Mux1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|Mux1~1_combout\ = ( \spi0|cordic|core|Mux1~0_combout\ & ( (!\spi0|cordic|index\(1) & \spi0|cordic|index\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_index\(1),
	datab => \spi0|cordic|ALT_INV_index\(0),
	dataf => \spi0|cordic|core|ALT_INV_Mux1~0_combout\,
	combout => \spi0|cordic|core|Mux1~1_combout\);

-- Location: FF_X83_Y22_N25
\spi0|spi|data_out[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \spi0|spi|data_to_read\(0),
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => VCC,
	ena => \spi0|spi|Equal6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|data_out[0]~DUPLICATE_q\);

-- Location: MLABCELL_X84_Y22_N0
\spi0|z_in[16]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|z_in\(16) = ( \spi0|z_in\(16) & ( \spi0|spi|data_out[0]~DUPLICATE_q\ ) ) # ( !\spi0|z_in\(16) & ( \spi0|spi|data_out[0]~DUPLICATE_q\ & ( \spi0|Selector6~0_combout\ ) ) ) # ( \spi0|z_in\(16) & ( !\spi0|spi|data_out[0]~DUPLICATE_q\ & ( 
-- !\spi0|Selector6~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000110011001100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi0|ALT_INV_Selector6~0_combout\,
	datae => \spi0|ALT_INV_z_in\(16),
	dataf => \spi0|spi|ALT_INV_data_out[0]~DUPLICATE_q\,
	combout => \spi0|z_in\(16));

-- Location: MLABCELL_X82_Y19_N57
\spi0|cordic|core|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|Mux2~0_combout\ = ( \spi0|cordic|core|Mux1~0_combout\ & ( (\spi0|cordic|index\(1) & !\spi0|cordic|index\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_index\(1),
	datab => \spi0|cordic|ALT_INV_index\(0),
	dataf => \spi0|cordic|core|ALT_INV_Mux1~0_combout\,
	combout => \spi0|cordic|core|Mux2~0_combout\);

-- Location: MLABCELL_X82_Y19_N54
\spi0|cordic|core|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|Mux3~0_combout\ = ( \spi0|cordic|core|Mux1~0_combout\ & ( (\spi0|cordic|index\(0) & \spi0|cordic|index\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi0|cordic|ALT_INV_index\(0),
	datac => \spi0|cordic|ALT_INV_index\(1),
	dataf => \spi0|cordic|core|ALT_INV_Mux1~0_combout\,
	combout => \spi0|cordic|core|Mux3~0_combout\);

-- Location: LABCELL_X83_Y22_N9
\spi0|cordic|core|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|Mux4~0_combout\ = ( \spi0|cordic|index\(2) & ( (!\spi0|cordic|index\(3) & (!\spi0|cordic|index\(1) & !\spi0|cordic|index\(0))) ) ) # ( !\spi0|cordic|index\(2) & ( (!\spi0|cordic|index\(3) & (!\spi0|cordic|index\(1) & 
-- \spi0|cordic|index\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000001000100010001000000000001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_index\(3),
	datab => \spi0|cordic|ALT_INV_index\(1),
	datad => \spi0|cordic|ALT_INV_index\(0),
	dataf => \spi0|cordic|ALT_INV_index\(2),
	combout => \spi0|cordic|core|Mux4~0_combout\);

-- Location: MLABCELL_X78_Y19_N12
\spi0|cordic|core|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|Mux5~0_combout\ = ( \spi0|cordic|index\(2) & ( \spi0|cordic|index\(0) & ( (!\spi0|cordic|index\(3) & !\spi0|cordic|index\(1)) ) ) ) # ( !\spi0|cordic|index\(2) & ( \spi0|cordic|index\(0) & ( (!\spi0|cordic|index\(3) & 
-- \spi0|cordic|index\(1)) ) ) ) # ( !\spi0|cordic|index\(2) & ( !\spi0|cordic|index\(0) & ( (!\spi0|cordic|index\(3) & \spi0|cordic|index\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000000000000000000000111100001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|cordic|ALT_INV_index\(3),
	datad => \spi0|cordic|ALT_INV_index\(1),
	datae => \spi0|cordic|ALT_INV_index\(2),
	dataf => \spi0|cordic|ALT_INV_index\(0),
	combout => \spi0|cordic|core|Mux5~0_combout\);

-- Location: MLABCELL_X82_Y19_N48
\spi0|cordic|core|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|Mux6~0_combout\ = ( \spi0|cordic|index\(2) & ( (!\spi0|cordic|index\(0) & !\spi0|cordic|index\(3)) ) ) # ( !\spi0|cordic|index\(2) & ( (!\spi0|cordic|index\(3) & (!\spi0|cordic|index\(0) $ (!\spi0|cordic|index\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000000000001111000000000011001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi0|cordic|ALT_INV_index\(0),
	datac => \spi0|cordic|ALT_INV_index\(1),
	datad => \spi0|cordic|ALT_INV_index\(3),
	dataf => \spi0|cordic|ALT_INV_index\(2),
	combout => \spi0|cordic|core|Mux6~0_combout\);

-- Location: MLABCELL_X82_Y19_N36
\spi0|cordic|core|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|Mux7~0_combout\ = ( \spi0|cordic|index\(2) & ( (\spi0|cordic|index\(0) & !\spi0|cordic|index\(3)) ) ) # ( !\spi0|cordic|index\(2) & ( (!\spi0|cordic|index\(3) & (!\spi0|cordic|index\(0) $ (!\spi0|cordic|index\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000000000001111000000000000110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi0|cordic|ALT_INV_index\(0),
	datac => \spi0|cordic|ALT_INV_index\(1),
	datad => \spi0|cordic|ALT_INV_index\(3),
	dataf => \spi0|cordic|ALT_INV_index\(2),
	combout => \spi0|cordic|core|Mux7~0_combout\);

-- Location: MLABCELL_X82_Y19_N45
\spi0|cordic|core|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|Mux8~0_combout\ = ( \spi0|cordic|index\(2) & ( (!\spi0|cordic|index\(0) & (!\spi0|cordic|index\(3) & \spi0|cordic|index\(1))) ) ) # ( !\spi0|cordic|index\(2) & ( (!\spi0|cordic|index\(0) & (!\spi0|cordic|index\(3) $ 
-- (!\spi0|cordic|index\(1)))) # (\spi0|cordic|index\(0) & (!\spi0|cordic|index\(3) & !\spi0|cordic|index\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000000001111001100000000000000110000000000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi0|cordic|ALT_INV_index\(0),
	datac => \spi0|cordic|ALT_INV_index\(3),
	datad => \spi0|cordic|ALT_INV_index\(1),
	dataf => \spi0|cordic|ALT_INV_index\(2),
	combout => \spi0|cordic|core|Mux8~0_combout\);

-- Location: MLABCELL_X78_Y20_N12
\spi0|cordic|core|Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|Mux9~0_combout\ = ( !\spi0|cordic|index\(3) & ( \spi0|cordic|index\(2) & ( (\spi0|cordic|index\(0) & \spi0|cordic|index\(1)) ) ) ) # ( \spi0|cordic|index\(3) & ( !\spi0|cordic|index\(2) & ( (\spi0|cordic|index\(0) & 
-- !\spi0|cordic|index\(1)) ) ) ) # ( !\spi0|cordic|index\(3) & ( !\spi0|cordic|index\(2) & ( \spi0|cordic|index\(1) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000000000000000000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|cordic|ALT_INV_index\(0),
	datad => \spi0|cordic|ALT_INV_index\(1),
	datae => \spi0|cordic|ALT_INV_index\(3),
	dataf => \spi0|cordic|ALT_INV_index\(2),
	combout => \spi0|cordic|core|Mux9~0_combout\);

-- Location: LABCELL_X81_Y18_N33
\spi0|cordic|core|Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|Mux10~0_combout\ = ( \spi0|cordic|index\(3) & ( (!\spi0|cordic|index\(0) & !\spi0|cordic|index\(2)) ) ) # ( !\spi0|cordic|index\(3) & ( (!\spi0|cordic|index\(0) & (!\spi0|cordic|index\(1) $ (!\spi0|cordic|index\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100000101000001010000010100010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_index\(0),
	datab => \spi0|cordic|ALT_INV_index\(1),
	datac => \spi0|cordic|ALT_INV_index\(2),
	dataf => \spi0|cordic|ALT_INV_index\(3),
	combout => \spi0|cordic|core|Mux10~0_combout\);

-- Location: MLABCELL_X82_Y21_N0
\spi0|cordic|core|Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|Mux11~0_combout\ = ( \spi0|cordic|index\(2) & ( (\spi0|cordic|index\(0) & (!\spi0|cordic|index\(3) & !\spi0|cordic|index\(1))) ) ) # ( !\spi0|cordic|index\(2) & ( (\spi0|cordic|index\(0) & ((!\spi0|cordic|index\(1)) # 
-- (\spi0|cordic|index\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000101010101010000010101010000000000000101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_index\(0),
	datac => \spi0|cordic|ALT_INV_index\(3),
	datad => \spi0|cordic|ALT_INV_index\(1),
	dataf => \spi0|cordic|ALT_INV_index\(2),
	combout => \spi0|cordic|core|Mux11~0_combout\);

-- Location: MLABCELL_X78_Y20_N54
\spi0|cordic|core|Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|Mux12~0_combout\ = ( !\spi0|cordic|index\(0) & ( \spi0|cordic|index\(2) & ( (!\spi0|cordic|index\(3)) # (!\spi0|cordic|index\(1)) ) ) ) # ( !\spi0|cordic|index\(0) & ( !\spi0|cordic|index\(2) & ( \spi0|cordic|index\(1) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000000011111111111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|cordic|ALT_INV_index\(3),
	datad => \spi0|cordic|ALT_INV_index\(1),
	datae => \spi0|cordic|ALT_INV_index\(0),
	dataf => \spi0|cordic|ALT_INV_index\(2),
	combout => \spi0|cordic|core|Mux12~0_combout\);

-- Location: LABCELL_X81_Y22_N9
\spi0|cordic|core|Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|Mux13~0_combout\ = ( \spi0|cordic|index\(3) & ( (\spi0|cordic|index\(0) & (!\spi0|cordic|index\(2) $ (!\spi0|cordic|index\(1)))) ) ) # ( !\spi0|cordic|index\(3) & ( (!\spi0|cordic|index\(2) & (\spi0|cordic|index\(1))) # 
-- (\spi0|cordic|index\(2) & ((!\spi0|cordic|index\(1)) # (\spi0|cordic|index\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011111010110100101111100000000010110100000000001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_index\(2),
	datac => \spi0|cordic|ALT_INV_index\(1),
	datad => \spi0|cordic|ALT_INV_index\(0),
	dataf => \spi0|cordic|ALT_INV_index\(3),
	combout => \spi0|cordic|core|Mux13~0_combout\);

-- Location: LABCELL_X81_Y20_N33
\spi0|cordic|core|Mux14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|Mux14~0_combout\ = ( \spi0|cordic|index\(0) & ( (!\spi0|cordic|index\(1) & (\spi0|cordic|index\(2) & !\spi0|cordic|index\(3))) ) ) # ( !\spi0|cordic|index\(0) & ( (!\spi0|cordic|index\(1) & ((\spi0|cordic|index\(3)))) # 
-- (\spi0|cordic|index\(1) & (\spi0|cordic|index\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111100001010000000000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_index\(1),
	datac => \spi0|cordic|ALT_INV_index\(2),
	datad => \spi0|cordic|ALT_INV_index\(3),
	dataf => \spi0|cordic|ALT_INV_index\(0),
	combout => \spi0|cordic|core|Mux14~0_combout\);

-- Location: LABCELL_X80_Y20_N39
\spi0|cordic|core|Mux15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|Mux15~0_combout\ = ( \spi0|cordic|index\(0) & ( ((!\spi0|cordic|index\(1) & \spi0|cordic|index\(3))) # (\spi0|cordic|index\(2)) ) ) # ( !\spi0|cordic|index\(0) & ( (\spi0|cordic|index\(1) & (\spi0|cordic|index\(2) & 
-- !\spi0|cordic|index\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000000001111101011110000111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_index\(1),
	datac => \spi0|cordic|ALT_INV_index\(2),
	datad => \spi0|cordic|ALT_INV_index\(3),
	dataf => \spi0|cordic|ALT_INV_index\(0),
	combout => \spi0|cordic|core|Mux15~0_combout\);

-- Location: LABCELL_X81_Y20_N6
\spi0|cordic|core|Mux16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|Mux16~0_combout\ = ( \spi0|cordic|index\(0) & ( (\spi0|cordic|index\(2) & (\spi0|cordic|index\(1) & !\spi0|cordic|index\(3))) ) ) # ( !\spi0|cordic|index\(0) & ( ((!\spi0|cordic|index\(2) & \spi0|cordic|index\(3))) # 
-- (\spi0|cordic|index\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111110101111000011111010111100000101000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_index\(2),
	datac => \spi0|cordic|ALT_INV_index\(1),
	datad => \spi0|cordic|ALT_INV_index\(3),
	dataf => \spi0|cordic|ALT_INV_index\(0),
	combout => \spi0|cordic|core|Mux16~0_combout\);

-- Location: LABCELL_X80_Y18_N15
\spi0|cordic|core|Mux17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|Mux17~0_combout\ = ( \spi0|cordic|index\(0) & ( (!\spi0|cordic|index\(2) $ (!\spi0|cordic|index\(3))) # (\spi0|cordic|index\(1)) ) ) # ( !\spi0|cordic|index\(0) & ( (!\spi0|cordic|index\(3) & ((\spi0|cordic|index\(1)))) # 
-- (\spi0|cordic|index\(3) & (!\spi0|cordic|index\(2) & !\spi0|cordic|index\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101011110000000010101111000001011010111111110101101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_index\(2),
	datac => \spi0|cordic|ALT_INV_index\(3),
	datad => \spi0|cordic|ALT_INV_index\(1),
	dataf => \spi0|cordic|ALT_INV_index\(0),
	combout => \spi0|cordic|core|Mux17~0_combout\);

-- Location: MLABCELL_X82_Y20_N0
\spi0|cordic|core|Add5~82\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|Add5~82_cout\ = CARRY(( !\spi0|cordic|sgn~combout\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|cordic|ALT_INV_sgn~combout\,
	cin => GND,
	cout => \spi0|cordic|core|Add5~82_cout\);

-- Location: MLABCELL_X82_Y20_N3
\spi0|cordic|core|Add5~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|Add5~77_sumout\ = SUM(( !\spi0|cordic|sgn~combout\ $ (\spi0|cordic|core|Mux17~0_combout\) ) + ( \spi0|cordic|z_in_c\(0) ) + ( \spi0|cordic|core|Add5~82_cout\ ))
-- \spi0|cordic|core|Add5~78\ = CARRY(( !\spi0|cordic|sgn~combout\ $ (\spi0|cordic|core|Mux17~0_combout\) ) + ( \spi0|cordic|z_in_c\(0) ) + ( \spi0|cordic|core|Add5~82_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_sgn~combout\,
	datab => \spi0|cordic|core|ALT_INV_Mux17~0_combout\,
	datac => \spi0|cordic|ALT_INV_z_in_c\(0),
	cin => \spi0|cordic|core|Add5~82_cout\,
	sumout => \spi0|cordic|core|Add5~77_sumout\,
	cout => \spi0|cordic|core|Add5~78\);

-- Location: LABCELL_X81_Y22_N42
\spi0|cordic|core|z_out[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|z_out\(0) = ( \spi0|cordic|core|state.EXECUTE~q\ & ( \spi0|cordic|core|Add5~77_sumout\ ) ) # ( !\spi0|cordic|core|state.EXECUTE~q\ & ( \spi0|cordic|core|z_out\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi0|cordic|core|ALT_INV_z_out\(0),
	datac => \spi0|cordic|core|ALT_INV_Add5~77_sumout\,
	dataf => \spi0|cordic|core|ALT_INV_state.EXECUTE~q\,
	combout => \spi0|cordic|core|z_out\(0));

-- Location: MLABCELL_X84_Y21_N51
\spi0|Selector5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|Selector5~0_combout\ = (\spi0|state.READ_Z_L~q\ & \spi0|spi|SPI_rd_wr_done_flag~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|ALT_INV_state.READ_Z_L~q\,
	datad => \spi0|spi|ALT_INV_SPI_rd_wr_done_flag~q\,
	combout => \spi0|Selector5~0_combout\);

-- Location: LABCELL_X83_Y22_N6
\spi0|z_in[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|z_in\(0) = ( \spi0|z_in\(0) & ( (!\spi0|Selector5~0_combout\) # (\spi0|spi|data_out\(0)) ) ) # ( !\spi0|z_in\(0) & ( (\spi0|spi|data_out\(0) & \spi0|Selector5~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|spi|ALT_INV_data_out\(0),
	datad => \spi0|ALT_INV_Selector5~0_combout\,
	dataf => \spi0|ALT_INV_z_in\(0),
	combout => \spi0|z_in\(0));

-- Location: LABCELL_X81_Y22_N54
\spi0|cordic|z_in_c~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|z_in_c~19_combout\ = ( \spi0|cordic|index_loop\(3) & ( \spi0|z_in\(0) & ( \spi0|cordic|core|z_out\(0) ) ) ) # ( !\spi0|cordic|index_loop\(3) & ( \spi0|z_in\(0) & ( ((!\spi0|cordic|index_loop\(2) & (!\spi0|cordic|index_loop\(1) & 
-- !\spi0|cordic|index_loop\(0)))) # (\spi0|cordic|core|z_out\(0)) ) ) ) # ( \spi0|cordic|index_loop\(3) & ( !\spi0|z_in\(0) & ( \spi0|cordic|core|z_out\(0) ) ) ) # ( !\spi0|cordic|index_loop\(3) & ( !\spi0|z_in\(0) & ( (\spi0|cordic|core|z_out\(0) & 
-- (((\spi0|cordic|index_loop\(0)) # (\spi0|cordic|index_loop\(1))) # (\spi0|cordic|index_loop\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100110011001100110011001110110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_index_loop\(2),
	datab => \spi0|cordic|core|ALT_INV_z_out\(0),
	datac => \spi0|cordic|ALT_INV_index_loop\(1),
	datad => \spi0|cordic|ALT_INV_index_loop\(0),
	datae => \spi0|cordic|ALT_INV_index_loop\(3),
	dataf => \spi0|ALT_INV_z_in\(0),
	combout => \spi0|cordic|z_in_c~19_combout\);

-- Location: MLABCELL_X82_Y22_N0
\spi0|cordic|z_in_c[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|z_in_c\(0) = ( \spi0|cordic|z_in_c~19_combout\ & ( (\spi0|cordic|state.LOAD_DATA~q\) # (\spi0|cordic|z_in_c\(0)) ) ) # ( !\spi0|cordic|z_in_c~19_combout\ & ( (\spi0|cordic|z_in_c\(0) & !\spi0|cordic|state.LOAD_DATA~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|cordic|ALT_INV_z_in_c\(0),
	datad => \spi0|cordic|ALT_INV_state.LOAD_DATA~q\,
	dataf => \spi0|cordic|ALT_INV_z_in_c~19_combout\,
	combout => \spi0|cordic|z_in_c\(0));

-- Location: MLABCELL_X82_Y20_N6
\spi0|cordic|core|Add5~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|Add5~73_sumout\ = SUM(( !\spi0|cordic|sgn~combout\ $ (\spi0|cordic|core|Mux16~0_combout\) ) + ( \spi0|cordic|z_in_c\(1) ) + ( \spi0|cordic|core|Add5~78\ ))
-- \spi0|cordic|core|Add5~74\ = CARRY(( !\spi0|cordic|sgn~combout\ $ (\spi0|cordic|core|Mux16~0_combout\) ) + ( \spi0|cordic|z_in_c\(1) ) + ( \spi0|cordic|core|Add5~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_sgn~combout\,
	datac => \spi0|cordic|ALT_INV_z_in_c\(1),
	datad => \spi0|cordic|core|ALT_INV_Mux16~0_combout\,
	cin => \spi0|cordic|core|Add5~78\,
	sumout => \spi0|cordic|core|Add5~73_sumout\,
	cout => \spi0|cordic|core|Add5~74\);

-- Location: LABCELL_X85_Y20_N54
\spi0|cordic|core|z_out[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|z_out\(1) = ( \spi0|cordic|core|state.EXECUTE~q\ & ( \spi0|cordic|core|Add5~73_sumout\ ) ) # ( !\spi0|cordic|core|state.EXECUTE~q\ & ( \spi0|cordic|core|z_out\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|core|ALT_INV_Add5~73_sumout\,
	datad => \spi0|cordic|core|ALT_INV_z_out\(1),
	dataf => \spi0|cordic|core|ALT_INV_state.EXECUTE~q\,
	combout => \spi0|cordic|core|z_out\(1));

-- Location: LABCELL_X85_Y20_N6
\spi0|z_in[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|z_in\(1) = ( \spi0|spi|data_out\(1) & ( (\spi0|Selector5~0_combout\) # (\spi0|z_in\(1)) ) ) # ( !\spi0|spi|data_out\(1) & ( (\spi0|z_in\(1) & !\spi0|Selector5~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi0|ALT_INV_z_in\(1),
	datac => \spi0|ALT_INV_Selector5~0_combout\,
	dataf => \spi0|spi|ALT_INV_data_out\(1),
	combout => \spi0|z_in\(1));

-- Location: LABCELL_X85_Y20_N45
\spi0|cordic|z_in_c~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|z_in_c~18_combout\ = ( \spi0|cordic|core|z_out\(1) & ( \spi0|z_in\(1) ) ) # ( !\spi0|cordic|core|z_out\(1) & ( \spi0|z_in\(1) & ( (!\spi0|cordic|index_loop\(2) & (!\spi0|cordic|index_loop\(0) & (!\spi0|cordic|index_loop\(3) & 
-- !\spi0|cordic|index_loop\(1)))) ) ) ) # ( \spi0|cordic|core|z_out\(1) & ( !\spi0|z_in\(1) & ( (((\spi0|cordic|index_loop\(1)) # (\spi0|cordic|index_loop\(3))) # (\spi0|cordic|index_loop\(0))) # (\spi0|cordic|index_loop\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011111111111111110000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_index_loop\(2),
	datab => \spi0|cordic|ALT_INV_index_loop\(0),
	datac => \spi0|cordic|ALT_INV_index_loop\(3),
	datad => \spi0|cordic|ALT_INV_index_loop\(1),
	datae => \spi0|cordic|core|ALT_INV_z_out\(1),
	dataf => \spi0|ALT_INV_z_in\(1),
	combout => \spi0|cordic|z_in_c~18_combout\);

-- Location: LABCELL_X85_Y20_N36
\spi0|cordic|z_in_c[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|z_in_c\(1) = ( \spi0|cordic|z_in_c~18_combout\ & ( (\spi0|cordic|z_in_c\(1)) # (\spi0|cordic|state.LOAD_DATA~q\) ) ) # ( !\spi0|cordic|z_in_c~18_combout\ & ( (!\spi0|cordic|state.LOAD_DATA~q\ & \spi0|cordic|z_in_c\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|cordic|ALT_INV_state.LOAD_DATA~q\,
	datad => \spi0|cordic|ALT_INV_z_in_c\(1),
	dataf => \spi0|cordic|ALT_INV_z_in_c~18_combout\,
	combout => \spi0|cordic|z_in_c\(1));

-- Location: MLABCELL_X82_Y20_N9
\spi0|cordic|core|Add5~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|Add5~69_sumout\ = SUM(( !\spi0|cordic|sgn~combout\ $ (\spi0|cordic|core|Mux15~0_combout\) ) + ( \spi0|cordic|z_in_c\(2) ) + ( \spi0|cordic|core|Add5~74\ ))
-- \spi0|cordic|core|Add5~70\ = CARRY(( !\spi0|cordic|sgn~combout\ $ (\spi0|cordic|core|Mux15~0_combout\) ) + ( \spi0|cordic|z_in_c\(2) ) + ( \spi0|cordic|core|Add5~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_sgn~combout\,
	datad => \spi0|cordic|core|ALT_INV_Mux15~0_combout\,
	dataf => \spi0|cordic|ALT_INV_z_in_c\(2),
	cin => \spi0|cordic|core|Add5~74\,
	sumout => \spi0|cordic|core|Add5~69_sumout\,
	cout => \spi0|cordic|core|Add5~70\);

-- Location: LABCELL_X80_Y20_N36
\spi0|cordic|core|z_out[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|z_out\(2) = ( \spi0|cordic|core|state.EXECUTE~q\ & ( \spi0|cordic|core|Add5~69_sumout\ ) ) # ( !\spi0|cordic|core|state.EXECUTE~q\ & ( \spi0|cordic|core|z_out\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|cordic|core|ALT_INV_z_out\(2),
	datad => \spi0|cordic|core|ALT_INV_Add5~69_sumout\,
	dataf => \spi0|cordic|core|ALT_INV_state.EXECUTE~q\,
	combout => \spi0|cordic|core|z_out\(2));

-- Location: LABCELL_X80_Y20_N15
\spi0|z_in[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|z_in\(2) = ( \spi0|spi|data_out[2]~DUPLICATE_q\ & ( (\spi0|z_in\(2)) # (\spi0|Selector5~0_combout\) ) ) # ( !\spi0|spi|data_out[2]~DUPLICATE_q\ & ( (!\spi0|Selector5~0_combout\ & \spi0|z_in\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|ALT_INV_Selector5~0_combout\,
	datad => \spi0|ALT_INV_z_in\(2),
	dataf => \spi0|spi|ALT_INV_data_out[2]~DUPLICATE_q\,
	combout => \spi0|z_in\(2));

-- Location: LABCELL_X80_Y20_N24
\spi0|cordic|z_in_c~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|z_in_c~17_combout\ = ( \spi0|cordic|core|z_out\(2) & ( \spi0|z_in\(2) ) ) # ( !\spi0|cordic|core|z_out\(2) & ( \spi0|z_in\(2) & ( (!\spi0|cordic|index_loop\(1) & (!\spi0|cordic|index_loop\(3) & (!\spi0|cordic|index_loop\(2) & 
-- !\spi0|cordic|index_loop\(0)))) ) ) ) # ( \spi0|cordic|core|z_out\(2) & ( !\spi0|z_in\(2) & ( (((\spi0|cordic|index_loop\(0)) # (\spi0|cordic|index_loop\(2))) # (\spi0|cordic|index_loop\(3))) # (\spi0|cordic|index_loop\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011111111111111110000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_index_loop\(1),
	datab => \spi0|cordic|ALT_INV_index_loop\(3),
	datac => \spi0|cordic|ALT_INV_index_loop\(2),
	datad => \spi0|cordic|ALT_INV_index_loop\(0),
	datae => \spi0|cordic|core|ALT_INV_z_out\(2),
	dataf => \spi0|ALT_INV_z_in\(2),
	combout => \spi0|cordic|z_in_c~17_combout\);

-- Location: LABCELL_X80_Y20_N12
\spi0|cordic|z_in_c[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|z_in_c\(2) = ( \spi0|cordic|z_in_c~17_combout\ & ( (\spi0|cordic|state.LOAD_DATA~q\) # (\spi0|cordic|z_in_c\(2)) ) ) # ( !\spi0|cordic|z_in_c~17_combout\ & ( (\spi0|cordic|z_in_c\(2) & !\spi0|cordic|state.LOAD_DATA~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi0|cordic|ALT_INV_z_in_c\(2),
	datad => \spi0|cordic|ALT_INV_state.LOAD_DATA~q\,
	dataf => \spi0|cordic|ALT_INV_z_in_c~17_combout\,
	combout => \spi0|cordic|z_in_c\(2));

-- Location: MLABCELL_X82_Y20_N12
\spi0|cordic|core|Add5~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|Add5~65_sumout\ = SUM(( !\spi0|cordic|sgn~combout\ $ (\spi0|cordic|core|Mux14~0_combout\) ) + ( \spi0|cordic|z_in_c\(3) ) + ( \spi0|cordic|core|Add5~70\ ))
-- \spi0|cordic|core|Add5~66\ = CARRY(( !\spi0|cordic|sgn~combout\ $ (\spi0|cordic|core|Mux14~0_combout\) ) + ( \spi0|cordic|z_in_c\(3) ) + ( \spi0|cordic|core|Add5~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_sgn~combout\,
	datac => \spi0|cordic|ALT_INV_z_in_c\(3),
	datad => \spi0|cordic|core|ALT_INV_Mux14~0_combout\,
	cin => \spi0|cordic|core|Add5~70\,
	sumout => \spi0|cordic|core|Add5~65_sumout\,
	cout => \spi0|cordic|core|Add5~66\);

-- Location: MLABCELL_X84_Y19_N27
\spi0|cordic|core|z_out[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|z_out\(3) = ( \spi0|cordic|core|state.EXECUTE~q\ & ( \spi0|cordic|core|Add5~65_sumout\ ) ) # ( !\spi0|cordic|core|state.EXECUTE~q\ & ( \spi0|cordic|core|z_out\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|core|ALT_INV_Add5~65_sumout\,
	datad => \spi0|cordic|core|ALT_INV_z_out\(3),
	dataf => \spi0|cordic|core|ALT_INV_state.EXECUTE~q\,
	combout => \spi0|cordic|core|z_out\(3));

-- Location: LABCELL_X85_Y22_N12
\spi0|z_in[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|z_in\(3) = ( \spi0|spi|data_out\(3) & ( (\spi0|Selector5~0_combout\) # (\spi0|z_in\(3)) ) ) # ( !\spi0|spi|data_out\(3) & ( (\spi0|z_in\(3) & !\spi0|Selector5~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi0|ALT_INV_z_in\(3),
	datac => \spi0|ALT_INV_Selector5~0_combout\,
	dataf => \spi0|spi|ALT_INV_data_out\(3),
	combout => \spi0|z_in\(3));

-- Location: MLABCELL_X84_Y20_N27
\spi0|cordic|z_in_c~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|z_in_c~16_combout\ = ( \spi0|cordic|core|z_out\(3) & ( \spi0|z_in\(3) ) ) # ( !\spi0|cordic|core|z_out\(3) & ( \spi0|z_in\(3) & ( (!\spi0|cordic|index_loop\(2) & (!\spi0|cordic|index_loop\(0) & (!\spi0|cordic|index_loop\(3) & 
-- !\spi0|cordic|index_loop\(1)))) ) ) ) # ( \spi0|cordic|core|z_out\(3) & ( !\spi0|z_in\(3) & ( (((\spi0|cordic|index_loop\(1)) # (\spi0|cordic|index_loop\(3))) # (\spi0|cordic|index_loop\(0))) # (\spi0|cordic|index_loop\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011111111111111110000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_index_loop\(2),
	datab => \spi0|cordic|ALT_INV_index_loop\(0),
	datac => \spi0|cordic|ALT_INV_index_loop\(3),
	datad => \spi0|cordic|ALT_INV_index_loop\(1),
	datae => \spi0|cordic|core|ALT_INV_z_out\(3),
	dataf => \spi0|ALT_INV_z_in\(3),
	combout => \spi0|cordic|z_in_c~16_combout\);

-- Location: MLABCELL_X87_Y20_N51
\spi0|cordic|z_in_c[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|z_in_c\(3) = ( \spi0|cordic|z_in_c~16_combout\ & ( (\spi0|cordic|z_in_c\(3)) # (\spi0|cordic|state.LOAD_DATA~q\) ) ) # ( !\spi0|cordic|z_in_c~16_combout\ & ( (!\spi0|cordic|state.LOAD_DATA~q\ & \spi0|cordic|z_in_c\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_state.LOAD_DATA~q\,
	datad => \spi0|cordic|ALT_INV_z_in_c\(3),
	dataf => \spi0|cordic|ALT_INV_z_in_c~16_combout\,
	combout => \spi0|cordic|z_in_c\(3));

-- Location: MLABCELL_X82_Y20_N15
\spi0|cordic|core|Add5~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|Add5~61_sumout\ = SUM(( !\spi0|cordic|sgn~combout\ $ (\spi0|cordic|core|Mux13~0_combout\) ) + ( \spi0|cordic|z_in_c\(4) ) + ( \spi0|cordic|core|Add5~66\ ))
-- \spi0|cordic|core|Add5~62\ = CARRY(( !\spi0|cordic|sgn~combout\ $ (\spi0|cordic|core|Mux13~0_combout\) ) + ( \spi0|cordic|z_in_c\(4) ) + ( \spi0|cordic|core|Add5~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000001010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_sgn~combout\,
	datab => \spi0|cordic|ALT_INV_z_in_c\(4),
	datac => \spi0|cordic|core|ALT_INV_Mux13~0_combout\,
	cin => \spi0|cordic|core|Add5~66\,
	sumout => \spi0|cordic|core|Add5~61_sumout\,
	cout => \spi0|cordic|core|Add5~62\);

-- Location: LABCELL_X83_Y20_N39
\spi0|cordic|core|z_out[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|z_out\(4) = ( \spi0|cordic|core|state.EXECUTE~q\ & ( \spi0|cordic|core|Add5~61_sumout\ ) ) # ( !\spi0|cordic|core|state.EXECUTE~q\ & ( \spi0|cordic|core|z_out\(4) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi0|cordic|core|ALT_INV_Add5~61_sumout\,
	datac => \spi0|cordic|core|ALT_INV_z_out\(4),
	dataf => \spi0|cordic|core|ALT_INV_state.EXECUTE~q\,
	combout => \spi0|cordic|core|z_out\(4));

-- Location: FF_X83_Y20_N17
\spi0|spi|data_out[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \spi0|spi|data_to_read\(4),
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => VCC,
	ena => \spi0|spi|Equal6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|data_out[4]~DUPLICATE_q\);

-- Location: LABCELL_X83_Y20_N57
\spi0|z_in[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|z_in\(4) = ( \spi0|spi|data_out[4]~DUPLICATE_q\ & ( (\spi0|z_in\(4)) # (\spi0|Selector5~0_combout\) ) ) # ( !\spi0|spi|data_out[4]~DUPLICATE_q\ & ( (!\spi0|Selector5~0_combout\ & \spi0|z_in\(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|ALT_INV_Selector5~0_combout\,
	datad => \spi0|ALT_INV_z_in\(4),
	dataf => \spi0|spi|ALT_INV_data_out[4]~DUPLICATE_q\,
	combout => \spi0|z_in\(4));

-- Location: LABCELL_X83_Y20_N21
\spi0|cordic|z_in_c~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|z_in_c~15_combout\ = ( \spi0|cordic|core|z_out\(4) & ( \spi0|z_in\(4) ) ) # ( !\spi0|cordic|core|z_out\(4) & ( \spi0|z_in\(4) & ( (!\spi0|cordic|index_loop\(1) & (!\spi0|cordic|index_loop\(2) & (!\spi0|cordic|index_loop\(3) & 
-- !\spi0|cordic|index_loop\(0)))) ) ) ) # ( \spi0|cordic|core|z_out\(4) & ( !\spi0|z_in\(4) & ( (((\spi0|cordic|index_loop\(0)) # (\spi0|cordic|index_loop\(3))) # (\spi0|cordic|index_loop\(2))) # (\spi0|cordic|index_loop\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011111111111111110000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_index_loop\(1),
	datab => \spi0|cordic|ALT_INV_index_loop\(2),
	datac => \spi0|cordic|ALT_INV_index_loop\(3),
	datad => \spi0|cordic|ALT_INV_index_loop\(0),
	datae => \spi0|cordic|core|ALT_INV_z_out\(4),
	dataf => \spi0|ALT_INV_z_in\(4),
	combout => \spi0|cordic|z_in_c~15_combout\);

-- Location: LABCELL_X83_Y20_N3
\spi0|cordic|z_in_c[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|z_in_c\(4) = ( \spi0|cordic|z_in_c~15_combout\ & ( (\spi0|cordic|z_in_c\(4)) # (\spi0|cordic|state.LOAD_DATA~q\) ) ) # ( !\spi0|cordic|z_in_c~15_combout\ & ( (!\spi0|cordic|state.LOAD_DATA~q\ & \spi0|cordic|z_in_c\(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|cordic|ALT_INV_state.LOAD_DATA~q\,
	datad => \spi0|cordic|ALT_INV_z_in_c\(4),
	dataf => \spi0|cordic|ALT_INV_z_in_c~15_combout\,
	combout => \spi0|cordic|z_in_c\(4));

-- Location: MLABCELL_X82_Y20_N18
\spi0|cordic|core|Add5~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|Add5~57_sumout\ = SUM(( !\spi0|cordic|sgn~combout\ $ (\spi0|cordic|core|Mux12~0_combout\) ) + ( \spi0|cordic|z_in_c\(5) ) + ( \spi0|cordic|core|Add5~62\ ))
-- \spi0|cordic|core|Add5~58\ = CARRY(( !\spi0|cordic|sgn~combout\ $ (\spi0|cordic|core|Mux12~0_combout\) ) + ( \spi0|cordic|z_in_c\(5) ) + ( \spi0|cordic|core|Add5~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_sgn~combout\,
	datac => \spi0|cordic|ALT_INV_z_in_c\(5),
	datad => \spi0|cordic|core|ALT_INV_Mux12~0_combout\,
	cin => \spi0|cordic|core|Add5~62\,
	sumout => \spi0|cordic|core|Add5~57_sumout\,
	cout => \spi0|cordic|core|Add5~58\);

-- Location: MLABCELL_X84_Y18_N6
\spi0|cordic|core|z_out[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|z_out\(5) = ( \spi0|cordic|core|state.EXECUTE~q\ & ( \spi0|cordic|core|Add5~57_sumout\ ) ) # ( !\spi0|cordic|core|state.EXECUTE~q\ & ( \spi0|cordic|core|z_out\(5) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|cordic|core|ALT_INV_Add5~57_sumout\,
	datad => \spi0|cordic|core|ALT_INV_z_out\(5),
	dataf => \spi0|cordic|core|ALT_INV_state.EXECUTE~q\,
	combout => \spi0|cordic|core|z_out\(5));

-- Location: MLABCELL_X84_Y18_N39
\spi0|z_in[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|z_in\(5) = ( \spi0|spi|data_out\(5) & ( (\spi0|z_in\(5)) # (\spi0|Selector5~0_combout\) ) ) # ( !\spi0|spi|data_out\(5) & ( (!\spi0|Selector5~0_combout\ & \spi0|z_in\(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi0|ALT_INV_Selector5~0_combout\,
	datac => \spi0|ALT_INV_z_in\(5),
	dataf => \spi0|spi|ALT_INV_data_out\(5),
	combout => \spi0|z_in\(5));

-- Location: MLABCELL_X84_Y18_N3
\spi0|cordic|z_in_c~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|z_in_c~14_combout\ = ( \spi0|cordic|core|z_out\(5) & ( \spi0|z_in\(5) ) ) # ( !\spi0|cordic|core|z_out\(5) & ( \spi0|z_in\(5) & ( (!\spi0|cordic|index_loop\(2) & (!\spi0|cordic|index_loop\(0) & (!\spi0|cordic|index_loop\(3) & 
-- !\spi0|cordic|index_loop\(1)))) ) ) ) # ( \spi0|cordic|core|z_out\(5) & ( !\spi0|z_in\(5) & ( (((\spi0|cordic|index_loop\(1)) # (\spi0|cordic|index_loop\(3))) # (\spi0|cordic|index_loop\(0))) # (\spi0|cordic|index_loop\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011111111111111110000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_index_loop\(2),
	datab => \spi0|cordic|ALT_INV_index_loop\(0),
	datac => \spi0|cordic|ALT_INV_index_loop\(3),
	datad => \spi0|cordic|ALT_INV_index_loop\(1),
	datae => \spi0|cordic|core|ALT_INV_z_out\(5),
	dataf => \spi0|ALT_INV_z_in\(5),
	combout => \spi0|cordic|z_in_c~14_combout\);

-- Location: MLABCELL_X84_Y18_N21
\spi0|cordic|z_in_c[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|z_in_c\(5) = ( \spi0|cordic|z_in_c~14_combout\ & ( (\spi0|cordic|state.LOAD_DATA~q\) # (\spi0|cordic|z_in_c\(5)) ) ) # ( !\spi0|cordic|z_in_c~14_combout\ & ( (\spi0|cordic|z_in_c\(5) & !\spi0|cordic|state.LOAD_DATA~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_z_in_c\(5),
	datad => \spi0|cordic|ALT_INV_state.LOAD_DATA~q\,
	dataf => \spi0|cordic|ALT_INV_z_in_c~14_combout\,
	combout => \spi0|cordic|z_in_c\(5));

-- Location: MLABCELL_X82_Y20_N21
\spi0|cordic|core|Add5~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|Add5~53_sumout\ = SUM(( !\spi0|cordic|sgn~combout\ $ (\spi0|cordic|core|Mux11~0_combout\) ) + ( \spi0|cordic|z_in_c\(6) ) + ( \spi0|cordic|core|Add5~58\ ))
-- \spi0|cordic|core|Add5~54\ = CARRY(( !\spi0|cordic|sgn~combout\ $ (\spi0|cordic|core|Mux11~0_combout\) ) + ( \spi0|cordic|z_in_c\(6) ) + ( \spi0|cordic|core|Add5~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_sgn~combout\,
	datad => \spi0|cordic|core|ALT_INV_Mux11~0_combout\,
	dataf => \spi0|cordic|ALT_INV_z_in_c\(6),
	cin => \spi0|cordic|core|Add5~58\,
	sumout => \spi0|cordic|core|Add5~53_sumout\,
	cout => \spi0|cordic|core|Add5~54\);

-- Location: MLABCELL_X82_Y18_N24
\spi0|cordic|core|z_out[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|z_out\(6) = ( \spi0|cordic|core|z_out\(6) & ( (!\spi0|cordic|core|state.EXECUTE~q\) # (\spi0|cordic|core|Add5~53_sumout\) ) ) # ( !\spi0|cordic|core|z_out\(6) & ( (\spi0|cordic|core|Add5~53_sumout\ & \spi0|cordic|core|state.EXECUTE~q\) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi0|cordic|core|ALT_INV_Add5~53_sumout\,
	datad => \spi0|cordic|core|ALT_INV_state.EXECUTE~q\,
	dataf => \spi0|cordic|core|ALT_INV_z_out\(6),
	combout => \spi0|cordic|core|z_out\(6));

-- Location: MLABCELL_X82_Y18_N42
\spi0|z_in[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|z_in\(6) = ( \spi0|spi|data_out[6]~DUPLICATE_q\ & ( (\spi0|z_in\(6)) # (\spi0|Selector5~0_combout\) ) ) # ( !\spi0|spi|data_out[6]~DUPLICATE_q\ & ( (!\spi0|Selector5~0_combout\ & \spi0|z_in\(6)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001001110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|ALT_INV_Selector5~0_combout\,
	datab => \spi0|ALT_INV_z_in\(6),
	dataf => \spi0|spi|ALT_INV_data_out[6]~DUPLICATE_q\,
	combout => \spi0|z_in\(6));

-- Location: LABCELL_X81_Y22_N21
\spi0|cordic|z_in_c~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|z_in_c~13_combout\ = ( \spi0|cordic|core|z_out\(6) & ( \spi0|z_in\(6) ) ) # ( !\spi0|cordic|core|z_out\(6) & ( \spi0|z_in\(6) & ( (!\spi0|cordic|index_loop\(2) & (!\spi0|cordic|index_loop\(0) & (!\spi0|cordic|index_loop\(3) & 
-- !\spi0|cordic|index_loop\(1)))) ) ) ) # ( \spi0|cordic|core|z_out\(6) & ( !\spi0|z_in\(6) & ( (((\spi0|cordic|index_loop\(1)) # (\spi0|cordic|index_loop\(3))) # (\spi0|cordic|index_loop\(0))) # (\spi0|cordic|index_loop\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011111111111111110000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_index_loop\(2),
	datab => \spi0|cordic|ALT_INV_index_loop\(0),
	datac => \spi0|cordic|ALT_INV_index_loop\(3),
	datad => \spi0|cordic|ALT_INV_index_loop\(1),
	datae => \spi0|cordic|core|ALT_INV_z_out\(6),
	dataf => \spi0|ALT_INV_z_in\(6),
	combout => \spi0|cordic|z_in_c~13_combout\);

-- Location: LABCELL_X81_Y22_N33
\spi0|cordic|z_in_c[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|z_in_c\(6) = (!\spi0|cordic|state.LOAD_DATA~q\ & (\spi0|cordic|z_in_c\(6))) # (\spi0|cordic|state.LOAD_DATA~q\ & ((\spi0|cordic|z_in_c~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111101010000010111110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_z_in_c\(6),
	datac => \spi0|cordic|ALT_INV_state.LOAD_DATA~q\,
	datad => \spi0|cordic|ALT_INV_z_in_c~13_combout\,
	combout => \spi0|cordic|z_in_c\(6));

-- Location: MLABCELL_X82_Y20_N24
\spi0|cordic|core|Add5~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|Add5~49_sumout\ = SUM(( !\spi0|cordic|sgn~combout\ $ (\spi0|cordic|core|Mux10~0_combout\) ) + ( \spi0|cordic|z_in_c\(7) ) + ( \spi0|cordic|core|Add5~54\ ))
-- \spi0|cordic|core|Add5~50\ = CARRY(( !\spi0|cordic|sgn~combout\ $ (\spi0|cordic|core|Mux10~0_combout\) ) + ( \spi0|cordic|z_in_c\(7) ) + ( \spi0|cordic|core|Add5~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_sgn~combout\,
	datab => \spi0|cordic|ALT_INV_z_in_c\(7),
	datad => \spi0|cordic|core|ALT_INV_Mux10~0_combout\,
	cin => \spi0|cordic|core|Add5~54\,
	sumout => \spi0|cordic|core|Add5~49_sumout\,
	cout => \spi0|cordic|core|Add5~50\);

-- Location: MLABCELL_X84_Y20_N9
\spi0|cordic|core|z_out[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|z_out\(7) = ( \spi0|cordic|core|state.EXECUTE~q\ & ( \spi0|cordic|core|Add5~49_sumout\ ) ) # ( !\spi0|cordic|core|state.EXECUTE~q\ & ( \spi0|cordic|core|z_out\(7) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|core|ALT_INV_Add5~49_sumout\,
	datac => \spi0|cordic|core|ALT_INV_z_out\(7),
	dataf => \spi0|cordic|core|ALT_INV_state.EXECUTE~q\,
	combout => \spi0|cordic|core|z_out\(7));

-- Location: MLABCELL_X84_Y20_N39
\spi0|z_in[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|z_in\(7) = ( \spi0|spi|data_out\(7) & ( (\spi0|z_in\(7)) # (\spi0|Selector5~0_combout\) ) ) # ( !\spi0|spi|data_out\(7) & ( (!\spi0|Selector5~0_combout\ & \spi0|z_in\(7)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|ALT_INV_Selector5~0_combout\,
	datac => \spi0|ALT_INV_z_in\(7),
	dataf => \spi0|spi|ALT_INV_data_out\(7),
	combout => \spi0|z_in\(7));

-- Location: MLABCELL_X84_Y20_N15
\spi0|cordic|z_in_c~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|z_in_c~12_combout\ = ( \spi0|cordic|core|z_out\(7) & ( \spi0|z_in\(7) ) ) # ( !\spi0|cordic|core|z_out\(7) & ( \spi0|z_in\(7) & ( (!\spi0|cordic|index_loop\(1) & (!\spi0|cordic|index_loop\(0) & (!\spi0|cordic|index_loop\(3) & 
-- !\spi0|cordic|index_loop\(2)))) ) ) ) # ( \spi0|cordic|core|z_out\(7) & ( !\spi0|z_in\(7) & ( (((\spi0|cordic|index_loop\(2)) # (\spi0|cordic|index_loop\(3))) # (\spi0|cordic|index_loop\(0))) # (\spi0|cordic|index_loop\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011111111111111110000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_index_loop\(1),
	datab => \spi0|cordic|ALT_INV_index_loop\(0),
	datac => \spi0|cordic|ALT_INV_index_loop\(3),
	datad => \spi0|cordic|ALT_INV_index_loop\(2),
	datae => \spi0|cordic|core|ALT_INV_z_out\(7),
	dataf => \spi0|ALT_INV_z_in\(7),
	combout => \spi0|cordic|z_in_c~12_combout\);

-- Location: MLABCELL_X84_Y20_N51
\spi0|cordic|z_in_c[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|z_in_c\(7) = ( \spi0|cordic|z_in_c~12_combout\ & ( (\spi0|cordic|z_in_c\(7)) # (\spi0|cordic|state.LOAD_DATA~q\) ) ) # ( !\spi0|cordic|z_in_c~12_combout\ & ( (!\spi0|cordic|state.LOAD_DATA~q\ & \spi0|cordic|z_in_c\(7)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi0|cordic|ALT_INV_state.LOAD_DATA~q\,
	datac => \spi0|cordic|ALT_INV_z_in_c\(7),
	dataf => \spi0|cordic|ALT_INV_z_in_c~12_combout\,
	combout => \spi0|cordic|z_in_c\(7));

-- Location: MLABCELL_X82_Y20_N27
\spi0|cordic|core|Add5~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|Add5~45_sumout\ = SUM(( \spi0|cordic|z_in_c\(8) ) + ( !\spi0|cordic|sgn~combout\ $ (\spi0|cordic|core|Mux9~0_combout\) ) + ( \spi0|cordic|core|Add5~50\ ))
-- \spi0|cordic|core|Add5~46\ = CARRY(( \spi0|cordic|z_in_c\(8) ) + ( !\spi0|cordic|sgn~combout\ $ (\spi0|cordic|core|Mux9~0_combout\) ) + ( \spi0|cordic|core|Add5~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010110100101101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_sgn~combout\,
	datac => \spi0|cordic|core|ALT_INV_Mux9~0_combout\,
	datad => \spi0|cordic|ALT_INV_z_in_c\(8),
	cin => \spi0|cordic|core|Add5~50\,
	sumout => \spi0|cordic|core|Add5~45_sumout\,
	cout => \spi0|cordic|core|Add5~46\);

-- Location: LABCELL_X81_Y21_N36
\spi0|cordic|core|z_out[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|z_out\(8) = ( \spi0|cordic|core|Add5~45_sumout\ & ( (\spi0|cordic|core|z_out\(8)) # (\spi0|cordic|core|state.EXECUTE~q\) ) ) # ( !\spi0|cordic|core|Add5~45_sumout\ & ( (!\spi0|cordic|core|state.EXECUTE~q\ & \spi0|cordic|core|z_out\(8)) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|cordic|core|ALT_INV_state.EXECUTE~q\,
	datad => \spi0|cordic|core|ALT_INV_z_out\(8),
	dataf => \spi0|cordic|core|ALT_INV_Add5~45_sumout\,
	combout => \spi0|cordic|core|z_out\(8));

-- Location: MLABCELL_X82_Y22_N30
\spi0|z_in[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|z_in\(8) = ( \spi0|spi|data_out\(8) & ( (\spi0|z_in\(8)) # (\spi0|Selector5~0_combout\) ) ) # ( !\spi0|spi|data_out\(8) & ( (!\spi0|Selector5~0_combout\ & \spi0|z_in\(8)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001001110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|ALT_INV_Selector5~0_combout\,
	datab => \spi0|ALT_INV_z_in\(8),
	dataf => \spi0|spi|ALT_INV_data_out\(8),
	combout => \spi0|z_in\(8));

-- Location: MLABCELL_X82_Y22_N27
\spi0|cordic|z_in_c~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|z_in_c~11_combout\ = ( \spi0|cordic|core|z_out\(8) & ( \spi0|z_in\(8) ) ) # ( !\spi0|cordic|core|z_out\(8) & ( \spi0|z_in\(8) & ( (!\spi0|cordic|index_loop\(0) & (!\spi0|cordic|index_loop\(1) & (!\spi0|cordic|index_loop\(2) & 
-- !\spi0|cordic|index_loop\(3)))) ) ) ) # ( \spi0|cordic|core|z_out\(8) & ( !\spi0|z_in\(8) & ( (((\spi0|cordic|index_loop\(3)) # (\spi0|cordic|index_loop\(2))) # (\spi0|cordic|index_loop\(1))) # (\spi0|cordic|index_loop\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011111111111111110000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_index_loop\(0),
	datab => \spi0|cordic|ALT_INV_index_loop\(1),
	datac => \spi0|cordic|ALT_INV_index_loop\(2),
	datad => \spi0|cordic|ALT_INV_index_loop\(3),
	datae => \spi0|cordic|core|ALT_INV_z_out\(8),
	dataf => \spi0|ALT_INV_z_in\(8),
	combout => \spi0|cordic|z_in_c~11_combout\);

-- Location: MLABCELL_X82_Y22_N33
\spi0|cordic|z_in_c[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|z_in_c\(8) = ( \spi0|cordic|z_in_c~11_combout\ & ( (\spi0|cordic|z_in_c\(8)) # (\spi0|cordic|state.LOAD_DATA~q\) ) ) # ( !\spi0|cordic|z_in_c~11_combout\ & ( (!\spi0|cordic|state.LOAD_DATA~q\ & \spi0|cordic|z_in_c\(8)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|cordic|ALT_INV_state.LOAD_DATA~q\,
	datad => \spi0|cordic|ALT_INV_z_in_c\(8),
	dataf => \spi0|cordic|ALT_INV_z_in_c~11_combout\,
	combout => \spi0|cordic|z_in_c\(8));

-- Location: MLABCELL_X82_Y19_N0
\spi0|cordic|core|Add5~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|Add5~41_sumout\ = SUM(( !\spi0|cordic|sgn~combout\ $ (\spi0|cordic|core|Mux8~0_combout\) ) + ( \spi0|cordic|z_in_c\(9) ) + ( \spi0|cordic|core|Add5~46\ ))
-- \spi0|cordic|core|Add5~42\ = CARRY(( !\spi0|cordic|sgn~combout\ $ (\spi0|cordic|core|Mux8~0_combout\) ) + ( \spi0|cordic|z_in_c\(9) ) + ( \spi0|cordic|core|Add5~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_sgn~combout\,
	datac => \spi0|cordic|ALT_INV_z_in_c\(9),
	datad => \spi0|cordic|core|ALT_INV_Mux8~0_combout\,
	cin => \spi0|cordic|core|Add5~46\,
	sumout => \spi0|cordic|core|Add5~41_sumout\,
	cout => \spi0|cordic|core|Add5~42\);

-- Location: LABCELL_X80_Y21_N36
\spi0|cordic|core|z_out[9]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|z_out\(9) = ( \spi0|cordic|core|Add5~41_sumout\ & ( (\spi0|cordic|core|z_out\(9)) # (\spi0|cordic|core|state.EXECUTE~q\) ) ) # ( !\spi0|cordic|core|Add5~41_sumout\ & ( (!\spi0|cordic|core|state.EXECUTE~q\ & \spi0|cordic|core|z_out\(9)) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|cordic|core|ALT_INV_state.EXECUTE~q\,
	datad => \spi0|cordic|core|ALT_INV_z_out\(9),
	dataf => \spi0|cordic|core|ALT_INV_Add5~41_sumout\,
	combout => \spi0|cordic|core|z_out\(9));

-- Location: FF_X80_Y21_N35
\spi0|spi|data_out[9]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \spi0|spi|data_to_read\(9),
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => VCC,
	ena => \spi0|spi|Equal6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|data_out[9]~DUPLICATE_q\);

-- Location: LABCELL_X80_Y21_N27
\spi0|z_in[9]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|z_in\(9) = ( \spi0|spi|data_out[9]~DUPLICATE_q\ & ( (\spi0|z_in\(9)) # (\spi0|Selector5~0_combout\) ) ) # ( !\spi0|spi|data_out[9]~DUPLICATE_q\ & ( (!\spi0|Selector5~0_combout\ & \spi0|z_in\(9)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|ALT_INV_Selector5~0_combout\,
	datad => \spi0|ALT_INV_z_in\(9),
	dataf => \spi0|spi|ALT_INV_data_out[9]~DUPLICATE_q\,
	combout => \spi0|z_in\(9));

-- Location: LABCELL_X80_Y21_N57
\spi0|cordic|z_in_c~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|z_in_c~10_combout\ = ( \spi0|cordic|core|z_out\(9) & ( \spi0|z_in\(9) ) ) # ( !\spi0|cordic|core|z_out\(9) & ( \spi0|z_in\(9) & ( (!\spi0|cordic|index_loop\(3) & (!\spi0|cordic|index_loop\(0) & (!\spi0|cordic|index_loop\(2) & 
-- !\spi0|cordic|index_loop\(1)))) ) ) ) # ( \spi0|cordic|core|z_out\(9) & ( !\spi0|z_in\(9) & ( (((\spi0|cordic|index_loop\(1)) # (\spi0|cordic|index_loop\(2))) # (\spi0|cordic|index_loop\(0))) # (\spi0|cordic|index_loop\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011111111111111110000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_index_loop\(3),
	datab => \spi0|cordic|ALT_INV_index_loop\(0),
	datac => \spi0|cordic|ALT_INV_index_loop\(2),
	datad => \spi0|cordic|ALT_INV_index_loop\(1),
	datae => \spi0|cordic|core|ALT_INV_z_out\(9),
	dataf => \spi0|ALT_INV_z_in\(9),
	combout => \spi0|cordic|z_in_c~10_combout\);

-- Location: LABCELL_X80_Y21_N24
\spi0|cordic|z_in_c[9]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|z_in_c\(9) = ( \spi0|cordic|z_in_c~10_combout\ & ( (\spi0|cordic|state.LOAD_DATA~q\) # (\spi0|cordic|z_in_c\(9)) ) ) # ( !\spi0|cordic|z_in_c~10_combout\ & ( (\spi0|cordic|z_in_c\(9) & !\spi0|cordic|state.LOAD_DATA~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_z_in_c\(9),
	datab => \spi0|cordic|ALT_INV_state.LOAD_DATA~q\,
	dataf => \spi0|cordic|ALT_INV_z_in_c~10_combout\,
	combout => \spi0|cordic|z_in_c\(9));

-- Location: MLABCELL_X82_Y19_N3
\spi0|cordic|core|Add5~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|Add5~33_sumout\ = SUM(( !\spi0|cordic|sgn~combout\ $ (\spi0|cordic|core|Mux7~0_combout\) ) + ( \spi0|cordic|z_in_c\(10) ) + ( \spi0|cordic|core|Add5~42\ ))
-- \spi0|cordic|core|Add5~34\ = CARRY(( !\spi0|cordic|sgn~combout\ $ (\spi0|cordic|core|Mux7~0_combout\) ) + ( \spi0|cordic|z_in_c\(10) ) + ( \spi0|cordic|core|Add5~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_sgn~combout\,
	datac => \spi0|cordic|ALT_INV_z_in_c\(10),
	datad => \spi0|cordic|core|ALT_INV_Mux7~0_combout\,
	cin => \spi0|cordic|core|Add5~42\,
	sumout => \spi0|cordic|core|Add5~33_sumout\,
	cout => \spi0|cordic|core|Add5~34\);

-- Location: LABCELL_X79_Y21_N3
\spi0|cordic|core|z_out[10]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|z_out\(10) = ( \spi0|cordic|core|Add5~33_sumout\ & ( (\spi0|cordic|core|z_out\(10)) # (\spi0|cordic|core|state.EXECUTE~q\) ) ) # ( !\spi0|cordic|core|Add5~33_sumout\ & ( (!\spi0|cordic|core|state.EXECUTE~q\ & 
-- \spi0|cordic|core|z_out\(10)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi0|cordic|core|ALT_INV_state.EXECUTE~q\,
	datac => \spi0|cordic|core|ALT_INV_z_out\(10),
	dataf => \spi0|cordic|core|ALT_INV_Add5~33_sumout\,
	combout => \spi0|cordic|core|z_out\(10));

-- Location: LABCELL_X79_Y21_N42
\spi0|z_in[10]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|z_in\(10) = ( \spi0|spi|data_out\(10) & ( (\spi0|z_in\(10)) # (\spi0|Selector5~0_combout\) ) ) # ( !\spi0|spi|data_out\(10) & ( (!\spi0|Selector5~0_combout\ & \spi0|z_in\(10)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|ALT_INV_Selector5~0_combout\,
	datad => \spi0|ALT_INV_z_in\(10),
	dataf => \spi0|spi|ALT_INV_data_out\(10),
	combout => \spi0|z_in\(10));

-- Location: LABCELL_X79_Y21_N21
\spi0|cordic|z_in_c~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|z_in_c~8_combout\ = ( \spi0|cordic|core|z_out\(10) & ( \spi0|z_in\(10) ) ) # ( !\spi0|cordic|core|z_out\(10) & ( \spi0|z_in\(10) & ( (!\spi0|cordic|index_loop\(0) & (!\spi0|cordic|index_loop\(1) & (!\spi0|cordic|index_loop\(3) & 
-- !\spi0|cordic|index_loop\(2)))) ) ) ) # ( \spi0|cordic|core|z_out\(10) & ( !\spi0|z_in\(10) & ( (((\spi0|cordic|index_loop\(2)) # (\spi0|cordic|index_loop\(3))) # (\spi0|cordic|index_loop\(1))) # (\spi0|cordic|index_loop\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011111111111111110000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_index_loop\(0),
	datab => \spi0|cordic|ALT_INV_index_loop\(1),
	datac => \spi0|cordic|ALT_INV_index_loop\(3),
	datad => \spi0|cordic|ALT_INV_index_loop\(2),
	datae => \spi0|cordic|core|ALT_INV_z_out\(10),
	dataf => \spi0|ALT_INV_z_in\(10),
	combout => \spi0|cordic|z_in_c~8_combout\);

-- Location: LABCELL_X79_Y21_N51
\spi0|cordic|z_in_c[10]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|z_in_c\(10) = ( \spi0|cordic|z_in_c~8_combout\ & ( (\spi0|cordic|state.LOAD_DATA~q\) # (\spi0|cordic|z_in_c\(10)) ) ) # ( !\spi0|cordic|z_in_c~8_combout\ & ( (\spi0|cordic|z_in_c\(10) & !\spi0|cordic|state.LOAD_DATA~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_z_in_c\(10),
	datad => \spi0|cordic|ALT_INV_state.LOAD_DATA~q\,
	dataf => \spi0|cordic|ALT_INV_z_in_c~8_combout\,
	combout => \spi0|cordic|z_in_c\(10));

-- Location: MLABCELL_X82_Y19_N6
\spi0|cordic|core|Add5~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|Add5~25_sumout\ = SUM(( \spi0|cordic|z_in_c\(11) ) + ( !\spi0|cordic|sgn~combout\ $ (\spi0|cordic|core|Mux6~0_combout\) ) + ( \spi0|cordic|core|Add5~34\ ))
-- \spi0|cordic|core|Add5~26\ = CARRY(( \spi0|cordic|z_in_c\(11) ) + ( !\spi0|cordic|sgn~combout\ $ (\spi0|cordic|core|Mux6~0_combout\) ) + ( \spi0|cordic|core|Add5~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010110100101101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_sgn~combout\,
	datac => \spi0|cordic|core|ALT_INV_Mux6~0_combout\,
	datad => \spi0|cordic|ALT_INV_z_in_c\(11),
	cin => \spi0|cordic|core|Add5~34\,
	sumout => \spi0|cordic|core|Add5~25_sumout\,
	cout => \spi0|cordic|core|Add5~26\);

-- Location: LABCELL_X79_Y20_N54
\spi0|cordic|core|z_out[11]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|z_out\(11) = ( \spi0|cordic|core|z_out\(11) & ( \spi0|cordic|core|state.EXECUTE~q\ & ( \spi0|cordic|core|Add5~25_sumout\ ) ) ) # ( !\spi0|cordic|core|z_out\(11) & ( \spi0|cordic|core|state.EXECUTE~q\ & ( \spi0|cordic|core|Add5~25_sumout\ 
-- ) ) ) # ( \spi0|cordic|core|z_out\(11) & ( !\spi0|cordic|core|state.EXECUTE~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|cordic|core|ALT_INV_Add5~25_sumout\,
	datae => \spi0|cordic|core|ALT_INV_z_out\(11),
	dataf => \spi0|cordic|core|ALT_INV_state.EXECUTE~q\,
	combout => \spi0|cordic|core|z_out\(11));

-- Location: FF_X79_Y20_N35
\spi0|spi|data_out[11]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \spi0|spi|data_to_read\(11),
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => VCC,
	ena => \spi0|spi|Equal6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|data_out[11]~DUPLICATE_q\);

-- Location: LABCELL_X79_Y20_N42
\spi0|z_in[11]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|z_in\(11) = ( \spi0|z_in\(11) & ( (!\spi0|Selector5~0_combout\) # (\spi0|spi|data_out[11]~DUPLICATE_q\) ) ) # ( !\spi0|z_in\(11) & ( (\spi0|Selector5~0_combout\ & \spi0|spi|data_out[11]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi0|ALT_INV_Selector5~0_combout\,
	datac => \spi0|spi|ALT_INV_data_out[11]~DUPLICATE_q\,
	dataf => \spi0|ALT_INV_z_in\(11),
	combout => \spi0|z_in\(11));

-- Location: LABCELL_X79_Y20_N21
\spi0|cordic|z_in_c~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|z_in_c~6_combout\ = ( \spi0|cordic|index_loop\(3) & ( \spi0|z_in\(11) & ( \spi0|cordic|core|z_out\(11) ) ) ) # ( !\spi0|cordic|index_loop\(3) & ( \spi0|z_in\(11) & ( ((!\spi0|cordic|index_loop\(2) & (!\spi0|cordic|index_loop\(1) & 
-- !\spi0|cordic|index_loop\(0)))) # (\spi0|cordic|core|z_out\(11)) ) ) ) # ( \spi0|cordic|index_loop\(3) & ( !\spi0|z_in\(11) & ( \spi0|cordic|core|z_out\(11) ) ) ) # ( !\spi0|cordic|index_loop\(3) & ( !\spi0|z_in\(11) & ( (\spi0|cordic|core|z_out\(11) & 
-- (((\spi0|cordic|index_loop\(0)) # (\spi0|cordic|index_loop\(1))) # (\spi0|cordic|index_loop\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100110011001100110011001110110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_index_loop\(2),
	datab => \spi0|cordic|core|ALT_INV_z_out\(11),
	datac => \spi0|cordic|ALT_INV_index_loop\(1),
	datad => \spi0|cordic|ALT_INV_index_loop\(0),
	datae => \spi0|cordic|ALT_INV_index_loop\(3),
	dataf => \spi0|ALT_INV_z_in\(11),
	combout => \spi0|cordic|z_in_c~6_combout\);

-- Location: LABCELL_X79_Y20_N27
\spi0|cordic|z_in_c[11]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|z_in_c\(11) = ( \spi0|cordic|z_in_c\(11) & ( \spi0|cordic|z_in_c~6_combout\ ) ) # ( !\spi0|cordic|z_in_c\(11) & ( \spi0|cordic|z_in_c~6_combout\ & ( \spi0|cordic|state.LOAD_DATA~q\ ) ) ) # ( \spi0|cordic|z_in_c\(11) & ( 
-- !\spi0|cordic|z_in_c~6_combout\ & ( !\spi0|cordic|state.LOAD_DATA~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \spi0|cordic|ALT_INV_state.LOAD_DATA~q\,
	datae => \spi0|cordic|ALT_INV_z_in_c\(11),
	dataf => \spi0|cordic|ALT_INV_z_in_c~6_combout\,
	combout => \spi0|cordic|z_in_c\(11));

-- Location: MLABCELL_X82_Y19_N9
\spi0|cordic|core|Add5~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|Add5~17_sumout\ = SUM(( \spi0|cordic|z_in_c\(12) ) + ( !\spi0|cordic|sgn~combout\ $ (\spi0|cordic|core|Mux5~0_combout\) ) + ( \spi0|cordic|core|Add5~26\ ))
-- \spi0|cordic|core|Add5~18\ = CARRY(( \spi0|cordic|z_in_c\(12) ) + ( !\spi0|cordic|sgn~combout\ $ (\spi0|cordic|core|Mux5~0_combout\) ) + ( \spi0|cordic|core|Add5~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010110100101101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_sgn~combout\,
	datac => \spi0|cordic|core|ALT_INV_Mux5~0_combout\,
	datad => \spi0|cordic|ALT_INV_z_in_c\(12),
	cin => \spi0|cordic|core|Add5~26\,
	sumout => \spi0|cordic|core|Add5~17_sumout\,
	cout => \spi0|cordic|core|Add5~18\);

-- Location: LABCELL_X80_Y22_N39
\spi0|cordic|core|z_out[12]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|z_out\(12) = ( \spi0|cordic|core|state.EXECUTE~q\ & ( \spi0|cordic|core|Add5~17_sumout\ ) ) # ( !\spi0|cordic|core|state.EXECUTE~q\ & ( \spi0|cordic|core|z_out\(12) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|core|ALT_INV_Add5~17_sumout\,
	datac => \spi0|cordic|core|ALT_INV_z_out\(12),
	dataf => \spi0|cordic|core|ALT_INV_state.EXECUTE~q\,
	combout => \spi0|cordic|core|z_out\(12));

-- Location: FF_X80_Y22_N59
\spi0|spi|data_out[12]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \spi0|spi|data_to_read\(12),
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => VCC,
	ena => \spi0|spi|Equal6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|data_out[12]~DUPLICATE_q\);

-- Location: LABCELL_X80_Y22_N6
\spi0|z_in[12]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|z_in\(12) = ( \spi0|spi|data_out[12]~DUPLICATE_q\ & ( (\spi0|z_in\(12)) # (\spi0|Selector5~0_combout\) ) ) # ( !\spi0|spi|data_out[12]~DUPLICATE_q\ & ( (!\spi0|Selector5~0_combout\ & \spi0|z_in\(12)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000011111111111100000000111100000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|ALT_INV_Selector5~0_combout\,
	datad => \spi0|ALT_INV_z_in\(12),
	datae => \spi0|spi|ALT_INV_data_out[12]~DUPLICATE_q\,
	combout => \spi0|z_in\(12));

-- Location: LABCELL_X80_Y22_N48
\spi0|cordic|z_in_c~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|z_in_c~4_combout\ = ( \spi0|cordic|core|z_out\(12) & ( \spi0|z_in\(12) ) ) # ( !\spi0|cordic|core|z_out\(12) & ( \spi0|z_in\(12) & ( (!\spi0|cordic|index_loop\(0) & (!\spi0|cordic|index_loop\(3) & (!\spi0|cordic|index_loop\(2) & 
-- !\spi0|cordic|index_loop\(1)))) ) ) ) # ( \spi0|cordic|core|z_out\(12) & ( !\spi0|z_in\(12) & ( (((\spi0|cordic|index_loop\(1)) # (\spi0|cordic|index_loop\(2))) # (\spi0|cordic|index_loop\(3))) # (\spi0|cordic|index_loop\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011111111111111110000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_index_loop\(0),
	datab => \spi0|cordic|ALT_INV_index_loop\(3),
	datac => \spi0|cordic|ALT_INV_index_loop\(2),
	datad => \spi0|cordic|ALT_INV_index_loop\(1),
	datae => \spi0|cordic|core|ALT_INV_z_out\(12),
	dataf => \spi0|ALT_INV_z_in\(12),
	combout => \spi0|cordic|z_in_c~4_combout\);

-- Location: LABCELL_X80_Y22_N0
\spi0|cordic|z_in_c[12]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|z_in_c\(12) = ( \spi0|cordic|z_in_c~4_combout\ & ( (\spi0|cordic|state.LOAD_DATA~q\) # (\spi0|cordic|z_in_c\(12)) ) ) # ( !\spi0|cordic|z_in_c~4_combout\ & ( (\spi0|cordic|z_in_c\(12) & !\spi0|cordic|state.LOAD_DATA~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|cordic|ALT_INV_z_in_c\(12),
	datad => \spi0|cordic|ALT_INV_state.LOAD_DATA~q\,
	dataf => \spi0|cordic|ALT_INV_z_in_c~4_combout\,
	combout => \spi0|cordic|z_in_c\(12));

-- Location: MLABCELL_X82_Y19_N12
\spi0|cordic|core|Add5~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|Add5~9_sumout\ = SUM(( !\spi0|cordic|sgn~combout\ $ (\spi0|cordic|core|Mux4~0_combout\) ) + ( \spi0|cordic|z_in_c\(13) ) + ( \spi0|cordic|core|Add5~18\ ))
-- \spi0|cordic|core|Add5~10\ = CARRY(( !\spi0|cordic|sgn~combout\ $ (\spi0|cordic|core|Mux4~0_combout\) ) + ( \spi0|cordic|z_in_c\(13) ) + ( \spi0|cordic|core|Add5~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_sgn~combout\,
	datac => \spi0|cordic|ALT_INV_z_in_c\(13),
	datad => \spi0|cordic|core|ALT_INV_Mux4~0_combout\,
	cin => \spi0|cordic|core|Add5~18\,
	sumout => \spi0|cordic|core|Add5~9_sumout\,
	cout => \spi0|cordic|core|Add5~10\);

-- Location: LABCELL_X81_Y22_N6
\spi0|cordic|core|z_out[13]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|z_out\(13) = ( \spi0|cordic|core|state.EXECUTE~q\ & ( \spi0|cordic|core|Add5~9_sumout\ ) ) # ( !\spi0|cordic|core|state.EXECUTE~q\ & ( \spi0|cordic|core|z_out\(13) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi0|cordic|core|ALT_INV_z_out\(13),
	datad => \spi0|cordic|core|ALT_INV_Add5~9_sumout\,
	dataf => \spi0|cordic|core|ALT_INV_state.EXECUTE~q\,
	combout => \spi0|cordic|core|z_out\(13));

-- Location: FF_X81_Y22_N41
\spi0|spi|data_out[13]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \spi0|spi|data_to_read\(13),
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => VCC,
	ena => \spi0|spi|Equal6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|data_out[13]~DUPLICATE_q\);

-- Location: LABCELL_X81_Y22_N30
\spi0|z_in[13]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|z_in\(13) = ( \spi0|spi|data_out[13]~DUPLICATE_q\ & ( (\spi0|Selector5~0_combout\) # (\spi0|z_in\(13)) ) ) # ( !\spi0|spi|data_out[13]~DUPLICATE_q\ & ( (\spi0|z_in\(13) & !\spi0|Selector5~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi0|ALT_INV_z_in\(13),
	datac => \spi0|ALT_INV_Selector5~0_combout\,
	dataf => \spi0|spi|ALT_INV_data_out[13]~DUPLICATE_q\,
	combout => \spi0|z_in\(13));

-- Location: LABCELL_X81_Y22_N18
\spi0|cordic|z_in_c~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|z_in_c~2_combout\ = ( \spi0|cordic|core|z_out\(13) & ( \spi0|z_in\(13) ) ) # ( !\spi0|cordic|core|z_out\(13) & ( \spi0|z_in\(13) & ( (!\spi0|cordic|index_loop\(2) & (!\spi0|cordic|index_loop\(0) & (!\spi0|cordic|index_loop\(1) & 
-- !\spi0|cordic|index_loop\(3)))) ) ) ) # ( \spi0|cordic|core|z_out\(13) & ( !\spi0|z_in\(13) & ( (((\spi0|cordic|index_loop\(3)) # (\spi0|cordic|index_loop\(1))) # (\spi0|cordic|index_loop\(0))) # (\spi0|cordic|index_loop\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011111111111111110000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_index_loop\(2),
	datab => \spi0|cordic|ALT_INV_index_loop\(0),
	datac => \spi0|cordic|ALT_INV_index_loop\(1),
	datad => \spi0|cordic|ALT_INV_index_loop\(3),
	datae => \spi0|cordic|core|ALT_INV_z_out\(13),
	dataf => \spi0|ALT_INV_z_in\(13),
	combout => \spi0|cordic|z_in_c~2_combout\);

-- Location: LABCELL_X81_Y22_N45
\spi0|cordic|z_in_c[13]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|z_in_c\(13) = ( \spi0|cordic|z_in_c~2_combout\ & ( (\spi0|cordic|z_in_c\(13)) # (\spi0|cordic|state.LOAD_DATA~q\) ) ) # ( !\spi0|cordic|z_in_c~2_combout\ & ( (!\spi0|cordic|state.LOAD_DATA~q\ & \spi0|cordic|z_in_c\(13)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|cordic|ALT_INV_state.LOAD_DATA~q\,
	datad => \spi0|cordic|ALT_INV_z_in_c\(13),
	dataf => \spi0|cordic|ALT_INV_z_in_c~2_combout\,
	combout => \spi0|cordic|z_in_c\(13));

-- Location: MLABCELL_X82_Y19_N15
\spi0|cordic|core|Add5~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|Add5~5_sumout\ = SUM(( !\spi0|cordic|sgn~combout\ $ (\spi0|cordic|core|Mux3~0_combout\) ) + ( \spi0|cordic|z_in_c\(14) ) + ( \spi0|cordic|core|Add5~10\ ))
-- \spi0|cordic|core|Add5~6\ = CARRY(( !\spi0|cordic|sgn~combout\ $ (\spi0|cordic|core|Mux3~0_combout\) ) + ( \spi0|cordic|z_in_c\(14) ) + ( \spi0|cordic|core|Add5~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_sgn~combout\,
	datac => \spi0|cordic|ALT_INV_z_in_c\(14),
	datad => \spi0|cordic|core|ALT_INV_Mux3~0_combout\,
	cin => \spi0|cordic|core|Add5~10\,
	sumout => \spi0|cordic|core|Add5~5_sumout\,
	cout => \spi0|cordic|core|Add5~6\);

-- Location: MLABCELL_X82_Y22_N51
\spi0|cordic|core|z_out[14]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|z_out\(14) = ( \spi0|cordic|core|state.EXECUTE~q\ & ( \spi0|cordic|core|Add5~5_sumout\ ) ) # ( !\spi0|cordic|core|state.EXECUTE~q\ & ( \spi0|cordic|core|z_out\(14) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|core|ALT_INV_z_out\(14),
	datad => \spi0|cordic|core|ALT_INV_Add5~5_sumout\,
	dataf => \spi0|cordic|core|ALT_INV_state.EXECUTE~q\,
	combout => \spi0|cordic|core|z_out\(14));

-- Location: MLABCELL_X82_Y22_N42
\spi0|z_in[14]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|z_in\(14) = ( \spi0|z_in\(14) & ( (!\spi0|Selector5~0_combout\) # (\spi0|spi|data_out\(14)) ) ) # ( !\spi0|z_in\(14) & ( (\spi0|Selector5~0_combout\ & \spi0|spi|data_out\(14)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi0|ALT_INV_Selector5~0_combout\,
	datac => \spi0|spi|ALT_INV_data_out\(14),
	dataf => \spi0|ALT_INV_z_in\(14),
	combout => \spi0|z_in\(14));

-- Location: MLABCELL_X82_Y22_N24
\spi0|cordic|z_in_c~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|z_in_c~1_combout\ = ( \spi0|cordic|core|z_out\(14) & ( \spi0|z_in\(14) ) ) # ( !\spi0|cordic|core|z_out\(14) & ( \spi0|z_in\(14) & ( (!\spi0|cordic|index_loop\(0) & (!\spi0|cordic|index_loop\(1) & (!\spi0|cordic|index_loop\(3) & 
-- !\spi0|cordic|index_loop\(2)))) ) ) ) # ( \spi0|cordic|core|z_out\(14) & ( !\spi0|z_in\(14) & ( (((\spi0|cordic|index_loop\(2)) # (\spi0|cordic|index_loop\(3))) # (\spi0|cordic|index_loop\(1))) # (\spi0|cordic|index_loop\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011111111111111110000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_index_loop\(0),
	datab => \spi0|cordic|ALT_INV_index_loop\(1),
	datac => \spi0|cordic|ALT_INV_index_loop\(3),
	datad => \spi0|cordic|ALT_INV_index_loop\(2),
	datae => \spi0|cordic|core|ALT_INV_z_out\(14),
	dataf => \spi0|ALT_INV_z_in\(14),
	combout => \spi0|cordic|z_in_c~1_combout\);

-- Location: MLABCELL_X82_Y22_N45
\spi0|cordic|z_in_c[14]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|z_in_c\(14) = ( \spi0|cordic|z_in_c~1_combout\ & ( (\spi0|cordic|state.LOAD_DATA~q\) # (\spi0|cordic|z_in_c\(14)) ) ) # ( !\spi0|cordic|z_in_c~1_combout\ & ( (\spi0|cordic|z_in_c\(14) & !\spi0|cordic|state.LOAD_DATA~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|cordic|ALT_INV_z_in_c\(14),
	datad => \spi0|cordic|ALT_INV_state.LOAD_DATA~q\,
	dataf => \spi0|cordic|ALT_INV_z_in_c~1_combout\,
	combout => \spi0|cordic|z_in_c\(14));

-- Location: MLABCELL_X82_Y19_N18
\spi0|cordic|core|Add5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|Add5~1_sumout\ = SUM(( !\spi0|cordic|sgn~combout\ $ (\spi0|cordic|core|Mux2~0_combout\) ) + ( \spi0|cordic|z_in_c\(15) ) + ( \spi0|cordic|core|Add5~6\ ))
-- \spi0|cordic|core|Add5~2\ = CARRY(( !\spi0|cordic|sgn~combout\ $ (\spi0|cordic|core|Mux2~0_combout\) ) + ( \spi0|cordic|z_in_c\(15) ) + ( \spi0|cordic|core|Add5~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_sgn~combout\,
	datac => \spi0|cordic|ALT_INV_z_in_c\(15),
	datad => \spi0|cordic|core|ALT_INV_Mux2~0_combout\,
	cin => \spi0|cordic|core|Add5~6\,
	sumout => \spi0|cordic|core|Add5~1_sumout\,
	cout => \spi0|cordic|core|Add5~2\);

-- Location: MLABCELL_X82_Y21_N42
\spi0|cordic|core|z_out[15]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|z_out\(15) = ( \spi0|cordic|core|Add5~1_sumout\ & ( (\spi0|cordic|core|state.EXECUTE~q\) # (\spi0|cordic|core|z_out\(15)) ) ) # ( !\spi0|cordic|core|Add5~1_sumout\ & ( (\spi0|cordic|core|z_out\(15) & !\spi0|cordic|core|state.EXECUTE~q\) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi0|cordic|core|ALT_INV_z_out\(15),
	datac => \spi0|cordic|core|ALT_INV_state.EXECUTE~q\,
	dataf => \spi0|cordic|core|ALT_INV_Add5~1_sumout\,
	combout => \spi0|cordic|core|z_out\(15));

-- Location: MLABCELL_X82_Y21_N48
\spi0|z_in[15]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|z_in\(15) = ( \spi0|spi|data_out\(15) & ( (\spi0|z_in\(15)) # (\spi0|Selector5~0_combout\) ) ) # ( !\spi0|spi|data_out\(15) & ( (!\spi0|Selector5~0_combout\ & \spi0|z_in\(15)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi0|ALT_INV_Selector5~0_combout\,
	datac => \spi0|ALT_INV_z_in\(15),
	dataf => \spi0|spi|ALT_INV_data_out\(15),
	combout => \spi0|z_in\(15));

-- Location: MLABCELL_X82_Y21_N36
\spi0|cordic|z_in_c~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|z_in_c~0_combout\ = ( \spi0|cordic|core|z_out\(15) & ( \spi0|z_in\(15) ) ) # ( !\spi0|cordic|core|z_out\(15) & ( \spi0|z_in\(15) & ( (!\spi0|cordic|index_loop\(1) & (!\spi0|cordic|index_loop\(2) & (!\spi0|cordic|index_loop\(3) & 
-- !\spi0|cordic|index_loop\(0)))) ) ) ) # ( \spi0|cordic|core|z_out\(15) & ( !\spi0|z_in\(15) & ( (((\spi0|cordic|index_loop\(0)) # (\spi0|cordic|index_loop\(3))) # (\spi0|cordic|index_loop\(2))) # (\spi0|cordic|index_loop\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011111111111111110000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_index_loop\(1),
	datab => \spi0|cordic|ALT_INV_index_loop\(2),
	datac => \spi0|cordic|ALT_INV_index_loop\(3),
	datad => \spi0|cordic|ALT_INV_index_loop\(0),
	datae => \spi0|cordic|core|ALT_INV_z_out\(15),
	dataf => \spi0|ALT_INV_z_in\(15),
	combout => \spi0|cordic|z_in_c~0_combout\);

-- Location: MLABCELL_X82_Y21_N51
\spi0|cordic|z_in_c[15]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|z_in_c\(15) = ( \spi0|cordic|z_in_c~0_combout\ & ( (\spi0|cordic|state.LOAD_DATA~q\) # (\spi0|cordic|z_in_c\(15)) ) ) # ( !\spi0|cordic|z_in_c~0_combout\ & ( (\spi0|cordic|z_in_c\(15) & !\spi0|cordic|state.LOAD_DATA~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_z_in_c\(15),
	datac => \spi0|cordic|ALT_INV_state.LOAD_DATA~q\,
	dataf => \spi0|cordic|ALT_INV_z_in_c~0_combout\,
	combout => \spi0|cordic|z_in_c\(15));

-- Location: MLABCELL_X82_Y19_N21
\spi0|cordic|core|Add5~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|Add5~37_sumout\ = SUM(( \spi0|cordic|z_in_c\(16) ) + ( !\spi0|cordic|sgn~combout\ $ (\spi0|cordic|core|Mux1~1_combout\) ) + ( \spi0|cordic|core|Add5~2\ ))
-- \spi0|cordic|core|Add5~38\ = CARRY(( \spi0|cordic|z_in_c\(16) ) + ( !\spi0|cordic|sgn~combout\ $ (\spi0|cordic|core|Mux1~1_combout\) ) + ( \spi0|cordic|core|Add5~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010110100101101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_sgn~combout\,
	datac => \spi0|cordic|core|ALT_INV_Mux1~1_combout\,
	datad => \spi0|cordic|ALT_INV_z_in_c\(16),
	cin => \spi0|cordic|core|Add5~2\,
	sumout => \spi0|cordic|core|Add5~37_sumout\,
	cout => \spi0|cordic|core|Add5~38\);

-- Location: MLABCELL_X84_Y22_N39
\spi0|cordic|core|z_out[16]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|z_out\(16) = ( \spi0|cordic|core|Add5~37_sumout\ & ( (\spi0|cordic|core|state.EXECUTE~q\) # (\spi0|cordic|core|z_out\(16)) ) ) # ( !\spi0|cordic|core|Add5~37_sumout\ & ( (\spi0|cordic|core|z_out\(16) & 
-- !\spi0|cordic|core|state.EXECUTE~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|cordic|core|ALT_INV_z_out\(16),
	datad => \spi0|cordic|core|ALT_INV_state.EXECUTE~q\,
	dataf => \spi0|cordic|core|ALT_INV_Add5~37_sumout\,
	combout => \spi0|cordic|core|z_out\(16));

-- Location: MLABCELL_X84_Y22_N24
\spi0|cordic|z_in_c~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|z_in_c~9_combout\ = ( \spi0|z_in\(16) & ( \spi0|cordic|core|z_out\(16) ) ) # ( !\spi0|z_in\(16) & ( \spi0|cordic|core|z_out\(16) & ( (((\spi0|cordic|index_loop\(1)) # (\spi0|cordic|index_loop\(2))) # (\spi0|cordic|index_loop\(3))) # 
-- (\spi0|cordic|index_loop\(0)) ) ) ) # ( \spi0|z_in\(16) & ( !\spi0|cordic|core|z_out\(16) & ( (!\spi0|cordic|index_loop\(0) & (!\spi0|cordic|index_loop\(3) & (!\spi0|cordic|index_loop\(2) & !\spi0|cordic|index_loop\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000001111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_index_loop\(0),
	datab => \spi0|cordic|ALT_INV_index_loop\(3),
	datac => \spi0|cordic|ALT_INV_index_loop\(2),
	datad => \spi0|cordic|ALT_INV_index_loop\(1),
	datae => \spi0|ALT_INV_z_in\(16),
	dataf => \spi0|cordic|core|ALT_INV_z_out\(16),
	combout => \spi0|cordic|z_in_c~9_combout\);

-- Location: MLABCELL_X84_Y22_N36
\spi0|cordic|z_in_c[16]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|z_in_c\(16) = ( \spi0|cordic|z_in_c~9_combout\ & ( (\spi0|cordic|state.LOAD_DATA~q\) # (\spi0|cordic|z_in_c\(16)) ) ) # ( !\spi0|cordic|z_in_c~9_combout\ & ( (\spi0|cordic|z_in_c\(16) & !\spi0|cordic|state.LOAD_DATA~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|cordic|ALT_INV_z_in_c\(16),
	datad => \spi0|cordic|ALT_INV_state.LOAD_DATA~q\,
	dataf => \spi0|cordic|ALT_INV_z_in_c~9_combout\,
	combout => \spi0|cordic|z_in_c\(16));

-- Location: MLABCELL_X82_Y19_N24
\spi0|cordic|core|Add5~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|Add5~29_sumout\ = SUM(( !\spi0|cordic|sgn~combout\ $ (\spi0|cordic|core|Mux0~0_combout\) ) + ( \spi0|cordic|z_in_c\(17) ) + ( \spi0|cordic|core|Add5~38\ ))
-- \spi0|cordic|core|Add5~30\ = CARRY(( !\spi0|cordic|sgn~combout\ $ (\spi0|cordic|core|Mux0~0_combout\) ) + ( \spi0|cordic|z_in_c\(17) ) + ( \spi0|cordic|core|Add5~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_sgn~combout\,
	datac => \spi0|cordic|ALT_INV_z_in_c\(17),
	datad => \spi0|cordic|core|ALT_INV_Mux0~0_combout\,
	cin => \spi0|cordic|core|Add5~38\,
	sumout => \spi0|cordic|core|Add5~29_sumout\,
	cout => \spi0|cordic|core|Add5~30\);

-- Location: LABCELL_X85_Y20_N48
\spi0|cordic|core|z_out[17]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|z_out\(17) = ( \spi0|cordic|core|Add5~29_sumout\ & ( (\spi0|cordic|core|state.EXECUTE~q\) # (\spi0|cordic|core|z_out\(17)) ) ) # ( !\spi0|cordic|core|Add5~29_sumout\ & ( (\spi0|cordic|core|z_out\(17) & 
-- !\spi0|cordic|core|state.EXECUTE~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|cordic|core|ALT_INV_z_out\(17),
	datad => \spi0|cordic|core|ALT_INV_state.EXECUTE~q\,
	dataf => \spi0|cordic|core|ALT_INV_Add5~29_sumout\,
	combout => \spi0|cordic|core|z_out\(17));

-- Location: LABCELL_X85_Y20_N12
\spi0|cordic|z_in_c~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|z_in_c~7_combout\ = ( \spi0|z_in\(17) & ( \spi0|cordic|core|z_out\(17) ) ) # ( !\spi0|z_in\(17) & ( \spi0|cordic|core|z_out\(17) & ( (((\spi0|cordic|index_loop\(3)) # (\spi0|cordic|index_loop\(1))) # (\spi0|cordic|index_loop\(0))) # 
-- (\spi0|cordic|index_loop\(2)) ) ) ) # ( \spi0|z_in\(17) & ( !\spi0|cordic|core|z_out\(17) & ( (!\spi0|cordic|index_loop\(2) & (!\spi0|cordic|index_loop\(0) & (!\spi0|cordic|index_loop\(1) & !\spi0|cordic|index_loop\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000001111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_index_loop\(2),
	datab => \spi0|cordic|ALT_INV_index_loop\(0),
	datac => \spi0|cordic|ALT_INV_index_loop\(1),
	datad => \spi0|cordic|ALT_INV_index_loop\(3),
	datae => \spi0|ALT_INV_z_in\(17),
	dataf => \spi0|cordic|core|ALT_INV_z_out\(17),
	combout => \spi0|cordic|z_in_c~7_combout\);

-- Location: LABCELL_X85_Y20_N0
\spi0|cordic|z_in_c[17]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|z_in_c\(17) = ( \spi0|cordic|z_in_c~7_combout\ & ( (\spi0|cordic|z_in_c\(17)) # (\spi0|cordic|state.LOAD_DATA~q\) ) ) # ( !\spi0|cordic|z_in_c~7_combout\ & ( (!\spi0|cordic|state.LOAD_DATA~q\ & \spi0|cordic|z_in_c\(17)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|cordic|ALT_INV_state.LOAD_DATA~q\,
	datad => \spi0|cordic|ALT_INV_z_in_c\(17),
	dataf => \spi0|cordic|ALT_INV_z_in_c~7_combout\,
	combout => \spi0|cordic|z_in_c\(17));

-- Location: MLABCELL_X82_Y19_N27
\spi0|cordic|core|Add5~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|Add5~21_sumout\ = SUM(( !\spi0|cordic|sgn~combout\ ) + ( \spi0|cordic|z_in_c\(18) ) + ( \spi0|cordic|core|Add5~30\ ))
-- \spi0|cordic|core|Add5~22\ = CARRY(( !\spi0|cordic|sgn~combout\ ) + ( \spi0|cordic|z_in_c\(18) ) + ( \spi0|cordic|core|Add5~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_sgn~combout\,
	datac => \spi0|cordic|ALT_INV_z_in_c\(18),
	cin => \spi0|cordic|core|Add5~30\,
	sumout => \spi0|cordic|core|Add5~21_sumout\,
	cout => \spi0|cordic|core|Add5~22\);

-- Location: MLABCELL_X82_Y19_N51
\spi0|cordic|core|z_out[18]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|z_out\(18) = (!\spi0|cordic|core|state.EXECUTE~q\ & (\spi0|cordic|core|z_out\(18))) # (\spi0|cordic|core|state.EXECUTE~q\ & ((\spi0|cordic|core|Add5~21_sumout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111101010000010111110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|core|ALT_INV_z_out\(18),
	datac => \spi0|cordic|core|ALT_INV_state.EXECUTE~q\,
	datad => \spi0|cordic|core|ALT_INV_Add5~21_sumout\,
	combout => \spi0|cordic|core|z_out\(18));

-- Location: LABCELL_X80_Y20_N30
\spi0|z_in[18]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|z_in\(18) = ( \spi0|z_in\(18) & ( (!\spi0|Selector6~0_combout\) # (\spi0|spi|data_out[2]~DUPLICATE_q\) ) ) # ( !\spi0|z_in\(18) & ( (\spi0|Selector6~0_combout\ & \spi0|spi|data_out[2]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi0|ALT_INV_Selector6~0_combout\,
	datac => \spi0|spi|ALT_INV_data_out[2]~DUPLICATE_q\,
	dataf => \spi0|ALT_INV_z_in\(18),
	combout => \spi0|z_in\(18));

-- Location: LABCELL_X80_Y20_N21
\spi0|cordic|z_in_c~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|z_in_c~5_combout\ = ( \spi0|cordic|core|z_out\(18) & ( \spi0|z_in\(18) ) ) # ( !\spi0|cordic|core|z_out\(18) & ( \spi0|z_in\(18) & ( (!\spi0|cordic|index_loop\(1) & (!\spi0|cordic|index_loop\(3) & (!\spi0|cordic|index_loop\(0) & 
-- !\spi0|cordic|index_loop\(2)))) ) ) ) # ( \spi0|cordic|core|z_out\(18) & ( !\spi0|z_in\(18) & ( (((\spi0|cordic|index_loop\(2)) # (\spi0|cordic|index_loop\(0))) # (\spi0|cordic|index_loop\(3))) # (\spi0|cordic|index_loop\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011111111111111110000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_index_loop\(1),
	datab => \spi0|cordic|ALT_INV_index_loop\(3),
	datac => \spi0|cordic|ALT_INV_index_loop\(0),
	datad => \spi0|cordic|ALT_INV_index_loop\(2),
	datae => \spi0|cordic|core|ALT_INV_z_out\(18),
	dataf => \spi0|ALT_INV_z_in\(18),
	combout => \spi0|cordic|z_in_c~5_combout\);

-- Location: LABCELL_X80_Y20_N33
\spi0|cordic|z_in_c[18]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|z_in_c\(18) = ( \spi0|cordic|z_in_c~5_combout\ & ( (\spi0|cordic|z_in_c\(18)) # (\spi0|cordic|state.LOAD_DATA~q\) ) ) # ( !\spi0|cordic|z_in_c~5_combout\ & ( (!\spi0|cordic|state.LOAD_DATA~q\ & \spi0|cordic|z_in_c\(18)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_state.LOAD_DATA~q\,
	datad => \spi0|cordic|ALT_INV_z_in_c\(18),
	dataf => \spi0|cordic|ALT_INV_z_in_c~5_combout\,
	combout => \spi0|cordic|z_in_c\(18));

-- Location: MLABCELL_X82_Y19_N30
\spi0|cordic|core|Add5~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|Add5~13_sumout\ = SUM(( !\spi0|cordic|sgn~combout\ ) + ( \spi0|cordic|z_in_c\(19) ) + ( \spi0|cordic|core|Add5~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_sgn~combout\,
	datac => \spi0|cordic|ALT_INV_z_in_c\(19),
	cin => \spi0|cordic|core|Add5~22\,
	sumout => \spi0|cordic|core|Add5~13_sumout\);

-- Location: MLABCELL_X82_Y20_N33
\spi0|cordic|core|z_out[19]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|z_out\(19) = ( \spi0|cordic|core|Add5~13_sumout\ & ( (\spi0|cordic|core|state.EXECUTE~q\) # (\spi0|cordic|core|z_out\(19)) ) ) # ( !\spi0|cordic|core|Add5~13_sumout\ & ( (\spi0|cordic|core|z_out\(19) & 
-- !\spi0|cordic|core|state.EXECUTE~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|cordic|core|ALT_INV_z_out\(19),
	datad => \spi0|cordic|core|ALT_INV_state.EXECUTE~q\,
	dataf => \spi0|cordic|core|ALT_INV_Add5~13_sumout\,
	combout => \spi0|cordic|core|z_out\(19));

-- Location: MLABCELL_X82_Y20_N30
\spi0|cordic|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|Equal0~0_combout\ = ( !\spi0|cordic|index_loop\(0) & ( (!\spi0|cordic|index_loop\(1) & (!\spi0|cordic|index_loop\(2) & !\spi0|cordic|index_loop\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi0|cordic|ALT_INV_index_loop\(1),
	datac => \spi0|cordic|ALT_INV_index_loop\(2),
	datad => \spi0|cordic|ALT_INV_index_loop\(3),
	dataf => \spi0|cordic|ALT_INV_index_loop\(0),
	combout => \spi0|cordic|Equal0~0_combout\);

-- Location: MLABCELL_X82_Y20_N51
\spi0|cordic|Selector11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|Selector11~0_combout\ = ( \spi0|cordic|Equal0~0_combout\ & ( (\spi0|cordic|state.LOAD_DATA~q\ & \spi0|z_in\(19)) ) ) # ( !\spi0|cordic|Equal0~0_combout\ & ( (\spi0|cordic|state.LOAD_DATA~q\ & \spi0|cordic|core|z_out\(19)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_state.LOAD_DATA~q\,
	datab => \spi0|ALT_INV_z_in\(19),
	datac => \spi0|cordic|core|ALT_INV_z_out\(19),
	dataf => \spi0|cordic|ALT_INV_Equal0~0_combout\,
	combout => \spi0|cordic|Selector11~0_combout\);

-- Location: LABCELL_X81_Y21_N6
\spi0|cordic|WideOr0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|WideOr0~0_combout\ = ( \spi0|cordic|state.LOAD_DATA~q\ ) # ( !\spi0|cordic|state.LOAD_DATA~q\ & ( !\spi0|cordic|state.IDLE~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|cordic|ALT_INV_state.IDLE~q\,
	dataf => \spi0|cordic|ALT_INV_state.LOAD_DATA~q\,
	combout => \spi0|cordic|WideOr0~0_combout\);

-- Location: MLABCELL_X82_Y20_N48
\spi0|cordic|sgn\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|sgn~combout\ = ( \spi0|cordic|WideOr0~0_combout\ & ( \spi0|cordic|Selector11~0_combout\ ) ) # ( !\spi0|cordic|WideOr0~0_combout\ & ( \spi0|cordic|sgn~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|cordic|ALT_INV_Selector11~0_combout\,
	datad => \spi0|cordic|ALT_INV_sgn~combout\,
	dataf => \spi0|cordic|ALT_INV_WideOr0~0_combout\,
	combout => \spi0|cordic|sgn~combout\);

-- Location: LABCELL_X83_Y18_N30
\spi0|cordic|core|ShiftRight1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|ShiftRight1~0_combout\ = ( \spi0|cordic|x_in_c\(14) & ( ((!\spi0|cordic|index\(0) & !\spi0|cordic|index\(1))) # (\spi0|cordic|x_in_c\(15)) ) ) # ( !\spi0|cordic|x_in_c\(14) & ( (\spi0|cordic|x_in_c\(15) & ((\spi0|cordic|index\(1)) # 
-- (\spi0|cordic|index\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001110111000000000111011110001000111111111000100011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_index\(0),
	datab => \spi0|cordic|ALT_INV_index\(1),
	datad => \spi0|cordic|ALT_INV_x_in_c\(15),
	dataf => \spi0|cordic|ALT_INV_x_in_c\(14),
	combout => \spi0|cordic|core|ShiftRight1~0_combout\);

-- Location: LABCELL_X80_Y19_N54
\spi0|cordic|core|ShiftRight0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|ShiftRight0~3_combout\ = ( \spi0|cordic|y_in_c\(14) & ( \spi0|cordic|y_in_c\(11) & ( (!\spi0|cordic|index\(0) & ((!\spi0|cordic|index\(1)) # ((\spi0|cordic|y_in_c\(13))))) # (\spi0|cordic|index\(0) & (((\spi0|cordic|y_in_c\(12))) # 
-- (\spi0|cordic|index\(1)))) ) ) ) # ( !\spi0|cordic|y_in_c\(14) & ( \spi0|cordic|y_in_c\(11) & ( (!\spi0|cordic|index\(0) & ((!\spi0|cordic|index\(1)) # ((\spi0|cordic|y_in_c\(13))))) # (\spi0|cordic|index\(0) & (!\spi0|cordic|index\(1) & 
-- (\spi0|cordic|y_in_c\(12)))) ) ) ) # ( \spi0|cordic|y_in_c\(14) & ( !\spi0|cordic|y_in_c\(11) & ( (!\spi0|cordic|index\(0) & (\spi0|cordic|index\(1) & ((\spi0|cordic|y_in_c\(13))))) # (\spi0|cordic|index\(0) & (((\spi0|cordic|y_in_c\(12))) # 
-- (\spi0|cordic|index\(1)))) ) ) ) # ( !\spi0|cordic|y_in_c\(14) & ( !\spi0|cordic|y_in_c\(11) & ( (!\spi0|cordic|index\(0) & (\spi0|cordic|index\(1) & ((\spi0|cordic|y_in_c\(13))))) # (\spi0|cordic|index\(0) & (!\spi0|cordic|index\(1) & 
-- (\spi0|cordic|y_in_c\(12)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100110000101010011011110001100101011101001110110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_index\(0),
	datab => \spi0|cordic|ALT_INV_index\(1),
	datac => \spi0|cordic|ALT_INV_y_in_c\(12),
	datad => \spi0|cordic|ALT_INV_y_in_c\(13),
	datae => \spi0|cordic|ALT_INV_y_in_c\(14),
	dataf => \spi0|cordic|ALT_INV_y_in_c\(11),
	combout => \spi0|cordic|core|ShiftRight0~3_combout\);

-- Location: LABCELL_X83_Y18_N0
\spi0|cordic|core|ShiftRight1~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|ShiftRight1~12_combout\ = ( \spi0|cordic|x_in_c\(9) & ( \spi0|cordic|x_in_c\(8) & ( ((!\spi0|cordic|index\(0) & ((\spi0|cordic|x_in_c\(6)))) # (\spi0|cordic|index\(0) & (\spi0|cordic|x_in_c\(7)))) # (\spi0|cordic|index\(1)) ) ) ) # ( 
-- !\spi0|cordic|x_in_c\(9) & ( \spi0|cordic|x_in_c\(8) & ( (!\spi0|cordic|index\(0) & (((\spi0|cordic|x_in_c\(6))) # (\spi0|cordic|index\(1)))) # (\spi0|cordic|index\(0) & (!\spi0|cordic|index\(1) & (\spi0|cordic|x_in_c\(7)))) ) ) ) # ( 
-- \spi0|cordic|x_in_c\(9) & ( !\spi0|cordic|x_in_c\(8) & ( (!\spi0|cordic|index\(0) & (!\spi0|cordic|index\(1) & ((\spi0|cordic|x_in_c\(6))))) # (\spi0|cordic|index\(0) & (((\spi0|cordic|x_in_c\(7))) # (\spi0|cordic|index\(1)))) ) ) ) # ( 
-- !\spi0|cordic|x_in_c\(9) & ( !\spi0|cordic|x_in_c\(8) & ( (!\spi0|cordic|index\(1) & ((!\spi0|cordic|index\(0) & ((\spi0|cordic|x_in_c\(6)))) # (\spi0|cordic|index\(0) & (\spi0|cordic|x_in_c\(7))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000101011001110100100110101011100011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_index\(0),
	datab => \spi0|cordic|ALT_INV_index\(1),
	datac => \spi0|cordic|ALT_INV_x_in_c\(7),
	datad => \spi0|cordic|ALT_INV_x_in_c\(6),
	datae => \spi0|cordic|ALT_INV_x_in_c\(9),
	dataf => \spi0|cordic|ALT_INV_x_in_c\(8),
	combout => \spi0|cordic|core|ShiftRight1~12_combout\);

-- Location: MLABCELL_X82_Y18_N0
\spi0|cordic|core|ShiftRight1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|ShiftRight1~13_combout\ = ( \spi0|cordic|core|ShiftRight1~0_combout\ & ( \spi0|cordic|core|ShiftRight1~12_combout\ & ( (!\spi0|cordic|index\(2)) # ((!\spi0|cordic|index\(3) & ((\spi0|cordic|core|ShiftRight1~4_combout\))) # 
-- (\spi0|cordic|index\(3) & (\spi0|cordic|x_in_c\(15)))) ) ) ) # ( !\spi0|cordic|core|ShiftRight1~0_combout\ & ( \spi0|cordic|core|ShiftRight1~12_combout\ & ( (!\spi0|cordic|index\(2) & (((!\spi0|cordic|index\(3))))) # (\spi0|cordic|index\(2) & 
-- ((!\spi0|cordic|index\(3) & ((\spi0|cordic|core|ShiftRight1~4_combout\))) # (\spi0|cordic|index\(3) & (\spi0|cordic|x_in_c\(15))))) ) ) ) # ( \spi0|cordic|core|ShiftRight1~0_combout\ & ( !\spi0|cordic|core|ShiftRight1~12_combout\ & ( 
-- (!\spi0|cordic|index\(2) & (((\spi0|cordic|index\(3))))) # (\spi0|cordic|index\(2) & ((!\spi0|cordic|index\(3) & ((\spi0|cordic|core|ShiftRight1~4_combout\))) # (\spi0|cordic|index\(3) & (\spi0|cordic|x_in_c\(15))))) ) ) ) # ( 
-- !\spi0|cordic|core|ShiftRight1~0_combout\ & ( !\spi0|cordic|core|ShiftRight1~12_combout\ & ( (\spi0|cordic|index\(2) & ((!\spi0|cordic|index\(3) & ((\spi0|cordic|core|ShiftRight1~4_combout\))) # (\spi0|cordic|index\(3) & (\spi0|cordic|x_in_c\(15))))) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101010001000010110101101110100001111100011010101111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_index\(2),
	datab => \spi0|cordic|ALT_INV_x_in_c\(15),
	datac => \spi0|cordic|ALT_INV_index\(3),
	datad => \spi0|cordic|core|ALT_INV_ShiftRight1~4_combout\,
	datae => \spi0|cordic|core|ALT_INV_ShiftRight1~0_combout\,
	dataf => \spi0|cordic|core|ALT_INV_ShiftRight1~12_combout\,
	combout => \spi0|cordic|core|ShiftRight1~13_combout\);

-- Location: MLABCELL_X84_Y21_N42
\spi0|x_in[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|x_in[0]~0_combout\ = ( \spi0|state.READ_X~q\ & ( \spi0|spi|SPI_rd_wr_done_flag~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|spi|ALT_INV_SPI_rd_wr_done_flag~q\,
	dataf => \spi0|ALT_INV_state.READ_X~q\,
	combout => \spi0|x_in[0]~0_combout\);

-- Location: MLABCELL_X82_Y20_N42
\spi0|x_in[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|x_in\(3) = ( \spi0|x_in\(3) & ( (!\spi0|x_in[0]~0_combout\) # (\spi0|spi|data_out\(3)) ) ) # ( !\spi0|x_in\(3) & ( (\spi0|x_in[0]~0_combout\ & \spi0|spi|data_out\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|ALT_INV_x_in[0]~0_combout\,
	datad => \spi0|spi|ALT_INV_data_out\(3),
	dataf => \spi0|ALT_INV_x_in\(3),
	combout => \spi0|x_in\(3));

-- Location: LABCELL_X80_Y19_N24
\spi0|cordic|core|ShiftRight0~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|ShiftRight0~18_combout\ = ( \spi0|cordic|y_in_c\(4) & ( \spi0|cordic|y_in_c\(5) & ( (!\spi0|cordic|index\(0) & (((\spi0|cordic|index\(1))) # (\spi0|cordic|y_in_c\(3)))) # (\spi0|cordic|index\(0) & (((!\spi0|cordic|index\(1)) # 
-- (\spi0|cordic|y_in_c\(6))))) ) ) ) # ( !\spi0|cordic|y_in_c\(4) & ( \spi0|cordic|y_in_c\(5) & ( (!\spi0|cordic|index\(0) & (((\spi0|cordic|index\(1))) # (\spi0|cordic|y_in_c\(3)))) # (\spi0|cordic|index\(0) & (((\spi0|cordic|y_in_c\(6) & 
-- \spi0|cordic|index\(1))))) ) ) ) # ( \spi0|cordic|y_in_c\(4) & ( !\spi0|cordic|y_in_c\(5) & ( (!\spi0|cordic|index\(0) & (\spi0|cordic|y_in_c\(3) & ((!\spi0|cordic|index\(1))))) # (\spi0|cordic|index\(0) & (((!\spi0|cordic|index\(1)) # 
-- (\spi0|cordic|y_in_c\(6))))) ) ) ) # ( !\spi0|cordic|y_in_c\(4) & ( !\spi0|cordic|y_in_c\(5) & ( (!\spi0|cordic|index\(0) & (\spi0|cordic|y_in_c\(3) & ((!\spi0|cordic|index\(1))))) # (\spi0|cordic|index\(0) & (((\spi0|cordic|y_in_c\(6) & 
-- \spi0|cordic|index\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000101011101110000010100100010101011110111011110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_index\(0),
	datab => \spi0|cordic|ALT_INV_y_in_c\(3),
	datac => \spi0|cordic|ALT_INV_y_in_c\(6),
	datad => \spi0|cordic|ALT_INV_index\(1),
	datae => \spi0|cordic|ALT_INV_y_in_c\(4),
	dataf => \spi0|cordic|ALT_INV_y_in_c\(5),
	combout => \spi0|cordic|core|ShiftRight0~18_combout\);

-- Location: LABCELL_X80_Y19_N48
\spi0|cordic|core|ShiftRight0~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|ShiftRight0~19_combout\ = ( \spi0|cordic|core|ShiftRight0~3_combout\ & ( \spi0|cordic|core|ShiftRight0~10_combout\ & ( (!\spi0|cordic|index\(3) & (((\spi0|cordic|index\(2)) # (\spi0|cordic|core|ShiftRight0~18_combout\)))) # 
-- (\spi0|cordic|index\(3) & (((!\spi0|cordic|index\(2))) # (\spi0|cordic|y_in_c\(15)))) ) ) ) # ( !\spi0|cordic|core|ShiftRight0~3_combout\ & ( \spi0|cordic|core|ShiftRight0~10_combout\ & ( (!\spi0|cordic|index\(3) & (((\spi0|cordic|index\(2)) # 
-- (\spi0|cordic|core|ShiftRight0~18_combout\)))) # (\spi0|cordic|index\(3) & (\spi0|cordic|y_in_c\(15) & ((\spi0|cordic|index\(2))))) ) ) ) # ( \spi0|cordic|core|ShiftRight0~3_combout\ & ( !\spi0|cordic|core|ShiftRight0~10_combout\ & ( 
-- (!\spi0|cordic|index\(3) & (((\spi0|cordic|core|ShiftRight0~18_combout\ & !\spi0|cordic|index\(2))))) # (\spi0|cordic|index\(3) & (((!\spi0|cordic|index\(2))) # (\spi0|cordic|y_in_c\(15)))) ) ) ) # ( !\spi0|cordic|core|ShiftRight0~3_combout\ & ( 
-- !\spi0|cordic|core|ShiftRight0~10_combout\ & ( (!\spi0|cordic|index\(3) & (((\spi0|cordic|core|ShiftRight0~18_combout\ & !\spi0|cordic|index\(2))))) # (\spi0|cordic|index\(3) & (\spi0|cordic|y_in_c\(15) & ((\spi0|cordic|index\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000010001001111110001000100001100110111010011111111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_y_in_c\(15),
	datab => \spi0|cordic|ALT_INV_index\(3),
	datac => \spi0|cordic|core|ALT_INV_ShiftRight0~18_combout\,
	datad => \spi0|cordic|ALT_INV_index\(2),
	datae => \spi0|cordic|core|ALT_INV_ShiftRight0~3_combout\,
	dataf => \spi0|cordic|core|ALT_INV_ShiftRight0~10_combout\,
	combout => \spi0|cordic|core|ShiftRight0~19_combout\);

-- Location: LABCELL_X85_Y20_N57
\spi0|x_in[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|x_in\(1) = ( \spi0|spi|data_out\(1) & ( (\spi0|x_in\(1)) # (\spi0|x_in[0]~0_combout\) ) ) # ( !\spi0|spi|data_out\(1) & ( (!\spi0|x_in[0]~0_combout\ & \spi0|x_in\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|ALT_INV_x_in[0]~0_combout\,
	datad => \spi0|ALT_INV_x_in\(1),
	dataf => \spi0|spi|ALT_INV_data_out\(1),
	combout => \spi0|x_in\(1));

-- Location: LABCELL_X83_Y20_N27
\spi0|cordic|core|ShiftRight1~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|ShiftRight1~22_combout\ = ( \spi0|cordic|index\(0) & ( \spi0|cordic|x_in_c\(1) & ( (!\spi0|cordic|index\(1) & ((\spi0|cordic|x_in_c\(2)))) # (\spi0|cordic|index\(1) & (\spi0|cordic|x_in_c\(4))) ) ) ) # ( !\spi0|cordic|index\(0) & ( 
-- \spi0|cordic|x_in_c\(1) & ( (!\spi0|cordic|index\(1)) # (\spi0|cordic|x_in_c\(3)) ) ) ) # ( \spi0|cordic|index\(0) & ( !\spi0|cordic|x_in_c\(1) & ( (!\spi0|cordic|index\(1) & ((\spi0|cordic|x_in_c\(2)))) # (\spi0|cordic|index\(1) & 
-- (\spi0|cordic|x_in_c\(4))) ) ) ) # ( !\spi0|cordic|index\(0) & ( !\spi0|cordic|x_in_c\(1) & ( (\spi0|cordic|index\(1) & \spi0|cordic|x_in_c\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111001101010011010111110000111111110011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_x_in_c\(4),
	datab => \spi0|cordic|ALT_INV_x_in_c\(2),
	datac => \spi0|cordic|ALT_INV_index\(1),
	datad => \spi0|cordic|ALT_INV_x_in_c\(3),
	datae => \spi0|cordic|ALT_INV_index\(0),
	dataf => \spi0|cordic|ALT_INV_x_in_c\(1),
	combout => \spi0|cordic|core|ShiftRight1~22_combout\);

-- Location: LABCELL_X83_Y21_N54
\spi0|cordic|core|ShiftRight1~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|ShiftRight1~23_combout\ = ( \spi0|cordic|core|ShiftRight1~1_combout\ & ( \spi0|cordic|core|ShiftRight1~6_combout\ & ( ((!\spi0|cordic|index\(2) & (\spi0|cordic|core|ShiftRight1~22_combout\)) # (\spi0|cordic|index\(2) & 
-- ((\spi0|cordic|core|ShiftRight1~14_combout\)))) # (\spi0|cordic|index\(3)) ) ) ) # ( !\spi0|cordic|core|ShiftRight1~1_combout\ & ( \spi0|cordic|core|ShiftRight1~6_combout\ & ( (!\spi0|cordic|index\(3) & ((!\spi0|cordic|index\(2) & 
-- (\spi0|cordic|core|ShiftRight1~22_combout\)) # (\spi0|cordic|index\(2) & ((\spi0|cordic|core|ShiftRight1~14_combout\))))) # (\spi0|cordic|index\(3) & (((!\spi0|cordic|index\(2))))) ) ) ) # ( \spi0|cordic|core|ShiftRight1~1_combout\ & ( 
-- !\spi0|cordic|core|ShiftRight1~6_combout\ & ( (!\spi0|cordic|index\(3) & ((!\spi0|cordic|index\(2) & (\spi0|cordic|core|ShiftRight1~22_combout\)) # (\spi0|cordic|index\(2) & ((\spi0|cordic|core|ShiftRight1~14_combout\))))) # (\spi0|cordic|index\(3) & 
-- (((\spi0|cordic|index\(2))))) ) ) ) # ( !\spi0|cordic|core|ShiftRight1~1_combout\ & ( !\spi0|cordic|core|ShiftRight1~6_combout\ & ( (!\spi0|cordic|index\(3) & ((!\spi0|cordic|index\(2) & (\spi0|cordic|core|ShiftRight1~22_combout\)) # 
-- (\spi0|cordic|index\(2) & ((\spi0|cordic|core|ShiftRight1~14_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000001100010001000011111101110111000011000111011100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|core|ALT_INV_ShiftRight1~22_combout\,
	datab => \spi0|cordic|ALT_INV_index\(3),
	datac => \spi0|cordic|core|ALT_INV_ShiftRight1~14_combout\,
	datad => \spi0|cordic|ALT_INV_index\(2),
	datae => \spi0|cordic|core|ALT_INV_ShiftRight1~1_combout\,
	dataf => \spi0|cordic|core|ALT_INV_ShiftRight1~6_combout\,
	combout => \spi0|cordic|core|ShiftRight1~23_combout\);

-- Location: MLABCELL_X84_Y22_N54
\spi0|y_in[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|y_in\(0) = ( \spi0|spi|data_out[0]~DUPLICATE_q\ & ( (\spi0|y_in\(0)) # (\spi0|y_in[0]~0_combout\) ) ) # ( !\spi0|spi|data_out[0]~DUPLICATE_q\ & ( (!\spi0|y_in[0]~0_combout\ & \spi0|y_in\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|ALT_INV_y_in[0]~0_combout\,
	datad => \spi0|ALT_INV_y_in\(0),
	dataf => \spi0|spi|ALT_INV_data_out[0]~DUPLICATE_q\,
	combout => \spi0|y_in\(0));

-- Location: LABCELL_X83_Y21_N0
\spi0|cordic|core|Add1~66\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|Add1~66_cout\ = CARRY(( \spi0|cordic|sgn~combout\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi0|cordic|ALT_INV_sgn~combout\,
	cin => GND,
	cout => \spi0|cordic|core|Add1~66_cout\);

-- Location: LABCELL_X83_Y21_N3
\spi0|cordic|core|Add1~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|Add1~61_sumout\ = SUM(( !\spi0|cordic|sgn~combout\ $ (!\spi0|cordic|core|ShiftRight1~25_combout\) ) + ( \spi0|cordic|y_in_c\(0) ) + ( \spi0|cordic|core|Add1~66_cout\ ))
-- \spi0|cordic|core|Add1~62\ = CARRY(( !\spi0|cordic|sgn~combout\ $ (!\spi0|cordic|core|ShiftRight1~25_combout\) ) + ( \spi0|cordic|y_in_c\(0) ) + ( \spi0|cordic|core|Add1~66_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi0|cordic|ALT_INV_sgn~combout\,
	datac => \spi0|cordic|core|ALT_INV_ShiftRight1~25_combout\,
	dataf => \spi0|cordic|ALT_INV_y_in_c\(0),
	cin => \spi0|cordic|core|Add1~66_cout\,
	sumout => \spi0|cordic|core|Add1~61_sumout\,
	cout => \spi0|cordic|core|Add1~62\);

-- Location: MLABCELL_X84_Y22_N48
\spi0|cordic|core|y_out[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|y_out\(0) = ( \spi0|cordic|core|y_out\(0) & ( (!\spi0|cordic|core|state.EXECUTE~q\) # (\spi0|cordic|core|Add1~61_sumout\) ) ) # ( !\spi0|cordic|core|y_out\(0) & ( (\spi0|cordic|core|Add1~61_sumout\ & \spi0|cordic|core|state.EXECUTE~q\) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi0|cordic|core|ALT_INV_Add1~61_sumout\,
	datad => \spi0|cordic|core|ALT_INV_state.EXECUTE~q\,
	dataf => \spi0|cordic|core|ALT_INV_y_out\(0),
	combout => \spi0|cordic|core|y_out\(0));

-- Location: MLABCELL_X84_Y22_N27
\spi0|cordic|y_in_c~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|y_in_c~15_combout\ = ( \spi0|y_in\(0) & ( \spi0|cordic|core|y_out\(0) ) ) # ( !\spi0|y_in\(0) & ( \spi0|cordic|core|y_out\(0) & ( (((\spi0|cordic|index_loop\(2)) # (\spi0|cordic|index_loop\(1))) # (\spi0|cordic|index_loop\(3))) # 
-- (\spi0|cordic|index_loop\(0)) ) ) ) # ( \spi0|y_in\(0) & ( !\spi0|cordic|core|y_out\(0) & ( (!\spi0|cordic|index_loop\(0) & (!\spi0|cordic|index_loop\(3) & (!\spi0|cordic|index_loop\(1) & !\spi0|cordic|index_loop\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000001111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_index_loop\(0),
	datab => \spi0|cordic|ALT_INV_index_loop\(3),
	datac => \spi0|cordic|ALT_INV_index_loop\(1),
	datad => \spi0|cordic|ALT_INV_index_loop\(2),
	datae => \spi0|ALT_INV_y_in\(0),
	dataf => \spi0|cordic|core|ALT_INV_y_out\(0),
	combout => \spi0|cordic|y_in_c~15_combout\);

-- Location: MLABCELL_X84_Y22_N57
\spi0|cordic|y_in_c[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|y_in_c\(0) = ( \spi0|cordic|y_in_c~15_combout\ & ( (\spi0|cordic|y_in_c\(0)) # (\spi0|cordic|state.LOAD_DATA~q\) ) ) # ( !\spi0|cordic|y_in_c~15_combout\ & ( (!\spi0|cordic|state.LOAD_DATA~q\ & \spi0|cordic|y_in_c\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|cordic|ALT_INV_state.LOAD_DATA~q\,
	datad => \spi0|cordic|ALT_INV_y_in_c\(0),
	dataf => \spi0|cordic|ALT_INV_y_in_c~15_combout\,
	combout => \spi0|cordic|y_in_c\(0));

-- Location: LABCELL_X81_Y18_N48
\spi0|cordic|core|ShiftRight0~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|ShiftRight0~24_combout\ = ( \spi0|cordic|y_in_c\(1) & ( \spi0|cordic|y_in_c\(0) & ( (!\spi0|cordic|index\(1)) # ((!\spi0|cordic|index\(0) & (\spi0|cordic|y_in_c\(2))) # (\spi0|cordic|index\(0) & ((\spi0|cordic|y_in_c\(3))))) ) ) ) # ( 
-- !\spi0|cordic|y_in_c\(1) & ( \spi0|cordic|y_in_c\(0) & ( (!\spi0|cordic|index\(0) & ((!\spi0|cordic|index\(1)) # ((\spi0|cordic|y_in_c\(2))))) # (\spi0|cordic|index\(0) & (\spi0|cordic|index\(1) & ((\spi0|cordic|y_in_c\(3))))) ) ) ) # ( 
-- \spi0|cordic|y_in_c\(1) & ( !\spi0|cordic|y_in_c\(0) & ( (!\spi0|cordic|index\(0) & (\spi0|cordic|index\(1) & (\spi0|cordic|y_in_c\(2)))) # (\spi0|cordic|index\(0) & ((!\spi0|cordic|index\(1)) # ((\spi0|cordic|y_in_c\(3))))) ) ) ) # ( 
-- !\spi0|cordic|y_in_c\(1) & ( !\spi0|cordic|y_in_c\(0) & ( (\spi0|cordic|index\(1) & ((!\spi0|cordic|index\(0) & (\spi0|cordic|y_in_c\(2))) # (\spi0|cordic|index\(0) & ((\spi0|cordic|y_in_c\(3)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011010001100101011110001010100110111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_index\(0),
	datab => \spi0|cordic|ALT_INV_index\(1),
	datac => \spi0|cordic|ALT_INV_y_in_c\(2),
	datad => \spi0|cordic|ALT_INV_y_in_c\(3),
	datae => \spi0|cordic|ALT_INV_y_in_c\(1),
	dataf => \spi0|cordic|ALT_INV_y_in_c\(0),
	combout => \spi0|cordic|core|ShiftRight0~24_combout\);

-- Location: LABCELL_X81_Y18_N6
\spi0|cordic|core|ShiftRight0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|ShiftRight0~25_combout\ = ( \spi0|cordic|core|ShiftRight0~2_combout\ & ( \spi0|cordic|core|ShiftRight0~24_combout\ & ( (!\spi0|cordic|index\(3) & ((!\spi0|cordic|index\(2)) # ((\spi0|cordic|core|ShiftRight0~16_combout\)))) # 
-- (\spi0|cordic|index\(3) & (((\spi0|cordic|core|ShiftRight0~8_combout\)) # (\spi0|cordic|index\(2)))) ) ) ) # ( !\spi0|cordic|core|ShiftRight0~2_combout\ & ( \spi0|cordic|core|ShiftRight0~24_combout\ & ( (!\spi0|cordic|index\(3) & 
-- ((!\spi0|cordic|index\(2)) # ((\spi0|cordic|core|ShiftRight0~16_combout\)))) # (\spi0|cordic|index\(3) & (!\spi0|cordic|index\(2) & ((\spi0|cordic|core|ShiftRight0~8_combout\)))) ) ) ) # ( \spi0|cordic|core|ShiftRight0~2_combout\ & ( 
-- !\spi0|cordic|core|ShiftRight0~24_combout\ & ( (!\spi0|cordic|index\(3) & (\spi0|cordic|index\(2) & (\spi0|cordic|core|ShiftRight0~16_combout\))) # (\spi0|cordic|index\(3) & (((\spi0|cordic|core|ShiftRight0~8_combout\)) # (\spi0|cordic|index\(2)))) ) ) ) 
-- # ( !\spi0|cordic|core|ShiftRight0~2_combout\ & ( !\spi0|cordic|core|ShiftRight0~24_combout\ & ( (!\spi0|cordic|index\(3) & (\spi0|cordic|index\(2) & (\spi0|cordic|core|ShiftRight0~16_combout\))) # (\spi0|cordic|index\(3) & (!\spi0|cordic|index\(2) & 
-- ((\spi0|cordic|core|ShiftRight0~8_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110000100110101011110001010110011101001101111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_index\(3),
	datab => \spi0|cordic|ALT_INV_index\(2),
	datac => \spi0|cordic|core|ALT_INV_ShiftRight0~16_combout\,
	datad => \spi0|cordic|core|ALT_INV_ShiftRight0~8_combout\,
	datae => \spi0|cordic|core|ALT_INV_ShiftRight0~2_combout\,
	dataf => \spi0|cordic|core|ALT_INV_ShiftRight0~24_combout\,
	combout => \spi0|cordic|core|ShiftRight0~25_combout\);

-- Location: LABCELL_X81_Y19_N0
\spi0|cordic|core|Add3~66\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|Add3~66_cout\ = CARRY(( !\spi0|cordic|sgn~combout\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|cordic|ALT_INV_sgn~combout\,
	cin => GND,
	cout => \spi0|cordic|core|Add3~66_cout\);

-- Location: LABCELL_X81_Y19_N3
\spi0|cordic|core|Add3~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|Add3~61_sumout\ = SUM(( !\spi0|cordic|sgn~combout\ $ (\spi0|cordic|core|ShiftRight0~25_combout\) ) + ( \spi0|cordic|x_in_c\(0) ) + ( \spi0|cordic|core|Add3~66_cout\ ))
-- \spi0|cordic|core|Add3~62\ = CARRY(( !\spi0|cordic|sgn~combout\ $ (\spi0|cordic|core|ShiftRight0~25_combout\) ) + ( \spi0|cordic|x_in_c\(0) ) + ( \spi0|cordic|core|Add3~66_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000001111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi0|cordic|ALT_INV_x_in_c\(0),
	datac => \spi0|cordic|ALT_INV_sgn~combout\,
	datad => \spi0|cordic|core|ALT_INV_ShiftRight0~25_combout\,
	cin => \spi0|cordic|core|Add3~66_cout\,
	sumout => \spi0|cordic|core|Add3~61_sumout\,
	cout => \spi0|cordic|core|Add3~62\);

-- Location: MLABCELL_X84_Y22_N6
\spi0|cordic|core|x_out[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|x_out\(0) = ( \spi0|cordic|core|x_out\(0) & ( (!\spi0|cordic|core|state.EXECUTE~q\) # (\spi0|cordic|core|Add3~61_sumout\) ) ) # ( !\spi0|cordic|core|x_out\(0) & ( (\spi0|cordic|core|Add3~61_sumout\ & \spi0|cordic|core|state.EXECUTE~q\) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|cordic|core|ALT_INV_Add3~61_sumout\,
	datad => \spi0|cordic|core|ALT_INV_state.EXECUTE~q\,
	dataf => \spi0|cordic|core|ALT_INV_x_out\(0),
	combout => \spi0|cordic|core|x_out\(0));

-- Location: MLABCELL_X84_Y22_N42
\spi0|x_in[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|x_in\(0) = ( \spi0|spi|data_out[0]~DUPLICATE_q\ & ( (\spi0|x_in\(0)) # (\spi0|x_in[0]~0_combout\) ) ) # ( !\spi0|spi|data_out[0]~DUPLICATE_q\ & ( (!\spi0|x_in[0]~0_combout\ & \spi0|x_in\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001001110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|ALT_INV_x_in[0]~0_combout\,
	datab => \spi0|ALT_INV_x_in\(0),
	dataf => \spi0|spi|ALT_INV_data_out[0]~DUPLICATE_q\,
	combout => \spi0|x_in\(0));

-- Location: MLABCELL_X84_Y22_N12
\spi0|cordic|x_in_c~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|x_in_c~15_combout\ = ( \spi0|cordic|core|x_out\(0) & ( \spi0|x_in\(0) ) ) # ( !\spi0|cordic|core|x_out\(0) & ( \spi0|x_in\(0) & ( (!\spi0|cordic|index_loop\(3) & (!\spi0|cordic|index_loop\(1) & (!\spi0|cordic|index_loop\(0) & 
-- !\spi0|cordic|index_loop\(2)))) ) ) ) # ( \spi0|cordic|core|x_out\(0) & ( !\spi0|x_in\(0) & ( (((\spi0|cordic|index_loop\(2)) # (\spi0|cordic|index_loop\(0))) # (\spi0|cordic|index_loop\(1))) # (\spi0|cordic|index_loop\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011111111111111110000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_index_loop\(3),
	datab => \spi0|cordic|ALT_INV_index_loop\(1),
	datac => \spi0|cordic|ALT_INV_index_loop\(0),
	datad => \spi0|cordic|ALT_INV_index_loop\(2),
	datae => \spi0|cordic|core|ALT_INV_x_out\(0),
	dataf => \spi0|ALT_INV_x_in\(0),
	combout => \spi0|cordic|x_in_c~15_combout\);

-- Location: MLABCELL_X84_Y22_N9
\spi0|cordic|x_in_c[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|x_in_c\(0) = ( \spi0|cordic|x_in_c~15_combout\ & ( (\spi0|cordic|state.LOAD_DATA~q\) # (\spi0|cordic|x_in_c\(0)) ) ) # ( !\spi0|cordic|x_in_c~15_combout\ & ( (\spi0|cordic|x_in_c\(0) & !\spi0|cordic|state.LOAD_DATA~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|cordic|ALT_INV_x_in_c\(0),
	datad => \spi0|cordic|ALT_INV_state.LOAD_DATA~q\,
	dataf => \spi0|cordic|ALT_INV_x_in_c~15_combout\,
	combout => \spi0|cordic|x_in_c\(0));

-- Location: LABCELL_X83_Y20_N30
\spi0|cordic|core|ShiftRight1~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|ShiftRight1~24_combout\ = ( \spi0|cordic|index\(0) & ( \spi0|cordic|x_in_c\(0) & ( (!\spi0|cordic|index\(1) & ((\spi0|cordic|x_in_c\(1)))) # (\spi0|cordic|index\(1) & (\spi0|cordic|x_in_c\(3))) ) ) ) # ( !\spi0|cordic|index\(0) & ( 
-- \spi0|cordic|x_in_c\(0) & ( (!\spi0|cordic|index\(1)) # (\spi0|cordic|x_in_c\(2)) ) ) ) # ( \spi0|cordic|index\(0) & ( !\spi0|cordic|x_in_c\(0) & ( (!\spi0|cordic|index\(1) & ((\spi0|cordic|x_in_c\(1)))) # (\spi0|cordic|index\(1) & 
-- (\spi0|cordic|x_in_c\(3))) ) ) ) # ( !\spi0|cordic|index\(0) & ( !\spi0|cordic|x_in_c\(0) & ( (\spi0|cordic|x_in_c\(2) & \spi0|cordic|index\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000011110101010111111111001100110000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_x_in_c\(3),
	datab => \spi0|cordic|ALT_INV_x_in_c\(2),
	datac => \spi0|cordic|ALT_INV_x_in_c\(1),
	datad => \spi0|cordic|ALT_INV_index\(1),
	datae => \spi0|cordic|ALT_INV_index\(0),
	dataf => \spi0|cordic|ALT_INV_x_in_c\(0),
	combout => \spi0|cordic|core|ShiftRight1~24_combout\);

-- Location: MLABCELL_X82_Y21_N18
\spi0|cordic|core|ShiftRight1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|ShiftRight1~25_combout\ = ( \spi0|cordic|core|ShiftRight1~16_combout\ & ( \spi0|cordic|core|ShiftRight1~2_combout\ & ( ((!\spi0|cordic|index\(3) & ((\spi0|cordic|core|ShiftRight1~24_combout\))) # (\spi0|cordic|index\(3) & 
-- (\spi0|cordic|core|ShiftRight1~8_combout\))) # (\spi0|cordic|index\(2)) ) ) ) # ( !\spi0|cordic|core|ShiftRight1~16_combout\ & ( \spi0|cordic|core|ShiftRight1~2_combout\ & ( (!\spi0|cordic|index\(3) & (((\spi0|cordic|core|ShiftRight1~24_combout\ & 
-- !\spi0|cordic|index\(2))))) # (\spi0|cordic|index\(3) & (((\spi0|cordic|index\(2))) # (\spi0|cordic|core|ShiftRight1~8_combout\))) ) ) ) # ( \spi0|cordic|core|ShiftRight1~16_combout\ & ( !\spi0|cordic|core|ShiftRight1~2_combout\ & ( 
-- (!\spi0|cordic|index\(3) & (((\spi0|cordic|index\(2)) # (\spi0|cordic|core|ShiftRight1~24_combout\)))) # (\spi0|cordic|index\(3) & (\spi0|cordic|core|ShiftRight1~8_combout\ & ((!\spi0|cordic|index\(2))))) ) ) ) # ( 
-- !\spi0|cordic|core|ShiftRight1~16_combout\ & ( !\spi0|cordic|core|ShiftRight1~2_combout\ & ( (!\spi0|cordic|index\(2) & ((!\spi0|cordic|index\(3) & ((\spi0|cordic|core|ShiftRight1~24_combout\))) # (\spi0|cordic|index\(3) & 
-- (\spi0|cordic|core|ShiftRight1~8_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100000000000110111010101000011011010101010001101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_index\(3),
	datab => \spi0|cordic|core|ALT_INV_ShiftRight1~8_combout\,
	datac => \spi0|cordic|core|ALT_INV_ShiftRight1~24_combout\,
	datad => \spi0|cordic|ALT_INV_index\(2),
	datae => \spi0|cordic|core|ALT_INV_ShiftRight1~16_combout\,
	dataf => \spi0|cordic|core|ALT_INV_ShiftRight1~2_combout\,
	combout => \spi0|cordic|core|ShiftRight1~25_combout\);

-- Location: LABCELL_X83_Y21_N6
\spi0|cordic|core|Add1~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|Add1~57_sumout\ = SUM(( !\spi0|cordic|sgn~combout\ $ (!\spi0|cordic|core|ShiftRight1~23_combout\) ) + ( \spi0|cordic|y_in_c\(1) ) + ( \spi0|cordic|core|Add1~62\ ))
-- \spi0|cordic|core|Add1~58\ = CARRY(( !\spi0|cordic|sgn~combout\ $ (!\spi0|cordic|core|ShiftRight1~23_combout\) ) + ( \spi0|cordic|y_in_c\(1) ) + ( \spi0|cordic|core|Add1~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi0|cordic|ALT_INV_sgn~combout\,
	datac => \spi0|cordic|ALT_INV_y_in_c\(1),
	datad => \spi0|cordic|core|ALT_INV_ShiftRight1~23_combout\,
	cin => \spi0|cordic|core|Add1~62\,
	sumout => \spi0|cordic|core|Add1~57_sumout\,
	cout => \spi0|cordic|core|Add1~58\);

-- Location: LABCELL_X85_Y20_N27
\spi0|cordic|core|y_out[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|y_out\(1) = ( \spi0|cordic|core|state.EXECUTE~q\ & ( \spi0|cordic|core|Add1~57_sumout\ ) ) # ( !\spi0|cordic|core|state.EXECUTE~q\ & ( \spi0|cordic|core|y_out\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|cordic|core|ALT_INV_Add1~57_sumout\,
	datad => \spi0|cordic|core|ALT_INV_y_out\(1),
	dataf => \spi0|cordic|core|ALT_INV_state.EXECUTE~q\,
	combout => \spi0|cordic|core|y_out\(1));

-- Location: LABCELL_X85_Y20_N39
\spi0|y_in[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|y_in\(1) = ( \spi0|y_in[0]~0_combout\ & ( \spi0|spi|data_out\(1) ) ) # ( !\spi0|y_in[0]~0_combout\ & ( \spi0|y_in\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi|ALT_INV_data_out\(1),
	datac => \spi0|ALT_INV_y_in\(1),
	dataf => \spi0|ALT_INV_y_in[0]~0_combout\,
	combout => \spi0|y_in\(1));

-- Location: LABCELL_X85_Y20_N42
\spi0|cordic|y_in_c~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|y_in_c~14_combout\ = ( \spi0|cordic|core|y_out\(1) & ( \spi0|y_in\(1) ) ) # ( !\spi0|cordic|core|y_out\(1) & ( \spi0|y_in\(1) & ( (!\spi0|cordic|index_loop\(2) & (!\spi0|cordic|index_loop\(0) & (!\spi0|cordic|index_loop\(1) & 
-- !\spi0|cordic|index_loop\(3)))) ) ) ) # ( \spi0|cordic|core|y_out\(1) & ( !\spi0|y_in\(1) & ( (((\spi0|cordic|index_loop\(3)) # (\spi0|cordic|index_loop\(1))) # (\spi0|cordic|index_loop\(0))) # (\spi0|cordic|index_loop\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011111111111111110000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_index_loop\(2),
	datab => \spi0|cordic|ALT_INV_index_loop\(0),
	datac => \spi0|cordic|ALT_INV_index_loop\(1),
	datad => \spi0|cordic|ALT_INV_index_loop\(3),
	datae => \spi0|cordic|core|ALT_INV_y_out\(1),
	dataf => \spi0|ALT_INV_y_in\(1),
	combout => \spi0|cordic|y_in_c~14_combout\);

-- Location: LABCELL_X85_Y20_N51
\spi0|cordic|y_in_c[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|y_in_c\(1) = ( \spi0|cordic|y_in_c~14_combout\ & ( (\spi0|cordic|state.LOAD_DATA~q\) # (\spi0|cordic|y_in_c\(1)) ) ) # ( !\spi0|cordic|y_in_c~14_combout\ & ( (\spi0|cordic|y_in_c\(1) & !\spi0|cordic|state.LOAD_DATA~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_y_in_c\(1),
	datad => \spi0|cordic|ALT_INV_state.LOAD_DATA~q\,
	dataf => \spi0|cordic|ALT_INV_y_in_c~14_combout\,
	combout => \spi0|cordic|y_in_c\(1));

-- Location: LABCELL_X80_Y20_N51
\spi0|cordic|core|ShiftRight0~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|ShiftRight0~22_combout\ = ( \spi0|cordic|y_in_c\(3) & ( \spi0|cordic|index\(0) & ( (!\spi0|cordic|index\(1) & (\spi0|cordic|y_in_c\(2))) # (\spi0|cordic|index\(1) & ((\spi0|cordic|y_in_c\(4)))) ) ) ) # ( !\spi0|cordic|y_in_c\(3) & ( 
-- \spi0|cordic|index\(0) & ( (!\spi0|cordic|index\(1) & (\spi0|cordic|y_in_c\(2))) # (\spi0|cordic|index\(1) & ((\spi0|cordic|y_in_c\(4)))) ) ) ) # ( \spi0|cordic|y_in_c\(3) & ( !\spi0|cordic|index\(0) & ( (\spi0|cordic|index\(1)) # 
-- (\spi0|cordic|y_in_c\(1)) ) ) ) # ( !\spi0|cordic|y_in_c\(3) & ( !\spi0|cordic|index\(0) & ( (\spi0|cordic|y_in_c\(1) & !\spi0|cordic|index\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100111111111101010101000011110101010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_y_in_c\(2),
	datab => \spi0|cordic|ALT_INV_y_in_c\(1),
	datac => \spi0|cordic|ALT_INV_y_in_c\(4),
	datad => \spi0|cordic|ALT_INV_index\(1),
	datae => \spi0|cordic|ALT_INV_y_in_c\(3),
	dataf => \spi0|cordic|ALT_INV_index\(0),
	combout => \spi0|cordic|core|ShiftRight0~22_combout\);

-- Location: LABCELL_X81_Y19_N54
\spi0|cordic|core|ShiftRight0~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|ShiftRight0~23_combout\ = ( \spi0|cordic|core|ShiftRight0~6_combout\ & ( \spi0|cordic|core|ShiftRight0~14_combout\ & ( (!\spi0|cordic|index\(2) & (((\spi0|cordic|core|ShiftRight0~22_combout\) # (\spi0|cordic|index\(3))))) # 
-- (\spi0|cordic|index\(2) & (((!\spi0|cordic|index\(3))) # (\spi0|cordic|core|ShiftRight0~1_combout\))) ) ) ) # ( !\spi0|cordic|core|ShiftRight0~6_combout\ & ( \spi0|cordic|core|ShiftRight0~14_combout\ & ( (!\spi0|cordic|index\(2) & 
-- (((!\spi0|cordic|index\(3) & \spi0|cordic|core|ShiftRight0~22_combout\)))) # (\spi0|cordic|index\(2) & (((!\spi0|cordic|index\(3))) # (\spi0|cordic|core|ShiftRight0~1_combout\))) ) ) ) # ( \spi0|cordic|core|ShiftRight0~6_combout\ & ( 
-- !\spi0|cordic|core|ShiftRight0~14_combout\ & ( (!\spi0|cordic|index\(2) & (((\spi0|cordic|core|ShiftRight0~22_combout\) # (\spi0|cordic|index\(3))))) # (\spi0|cordic|index\(2) & (\spi0|cordic|core|ShiftRight0~1_combout\ & (\spi0|cordic|index\(3)))) ) ) ) 
-- # ( !\spi0|cordic|core|ShiftRight0~6_combout\ & ( !\spi0|cordic|core|ShiftRight0~14_combout\ & ( (!\spi0|cordic|index\(2) & (((!\spi0|cordic|index\(3) & \spi0|cordic|core|ShiftRight0~22_combout\)))) # (\spi0|cordic|index\(2) & 
-- (\spi0|cordic|core|ShiftRight0~1_combout\ & (\spi0|cordic|index\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110100001000010111010101101010001111100010101101111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_index\(2),
	datab => \spi0|cordic|core|ALT_INV_ShiftRight0~1_combout\,
	datac => \spi0|cordic|ALT_INV_index\(3),
	datad => \spi0|cordic|core|ALT_INV_ShiftRight0~22_combout\,
	datae => \spi0|cordic|core|ALT_INV_ShiftRight0~6_combout\,
	dataf => \spi0|cordic|core|ALT_INV_ShiftRight0~14_combout\,
	combout => \spi0|cordic|core|ShiftRight0~23_combout\);

-- Location: LABCELL_X81_Y19_N6
\spi0|cordic|core|Add3~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|Add3~57_sumout\ = SUM(( !\spi0|cordic|sgn~combout\ $ (\spi0|cordic|core|ShiftRight0~23_combout\) ) + ( \spi0|cordic|x_in_c\(1) ) + ( \spi0|cordic|core|Add3~62\ ))
-- \spi0|cordic|core|Add3~58\ = CARRY(( !\spi0|cordic|sgn~combout\ $ (\spi0|cordic|core|ShiftRight0~23_combout\) ) + ( \spi0|cordic|x_in_c\(1) ) + ( \spi0|cordic|core|Add3~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000001111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_x_in_c\(1),
	datac => \spi0|cordic|ALT_INV_sgn~combout\,
	datad => \spi0|cordic|core|ALT_INV_ShiftRight0~23_combout\,
	cin => \spi0|cordic|core|Add3~62\,
	sumout => \spi0|cordic|core|Add3~57_sumout\,
	cout => \spi0|cordic|core|Add3~58\);

-- Location: LABCELL_X85_Y20_N9
\spi0|cordic|core|x_out[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|x_out\(1) = ( \spi0|cordic|core|state.EXECUTE~q\ & ( \spi0|cordic|core|Add3~57_sumout\ ) ) # ( !\spi0|cordic|core|state.EXECUTE~q\ & ( \spi0|cordic|core|x_out\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|cordic|core|ALT_INV_x_out\(1),
	datad => \spi0|cordic|core|ALT_INV_Add3~57_sumout\,
	dataf => \spi0|cordic|core|ALT_INV_state.EXECUTE~q\,
	combout => \spi0|cordic|core|x_out\(1));

-- Location: LABCELL_X85_Y20_N15
\spi0|cordic|x_in_c~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|x_in_c~14_combout\ = ( \spi0|x_in\(1) & ( \spi0|cordic|core|x_out\(1) ) ) # ( !\spi0|x_in\(1) & ( \spi0|cordic|core|x_out\(1) & ( (((\spi0|cordic|index_loop\(1)) # (\spi0|cordic|index_loop\(3))) # (\spi0|cordic|index_loop\(0))) # 
-- (\spi0|cordic|index_loop\(2)) ) ) ) # ( \spi0|x_in\(1) & ( !\spi0|cordic|core|x_out\(1) & ( (!\spi0|cordic|index_loop\(2) & (!\spi0|cordic|index_loop\(0) & (!\spi0|cordic|index_loop\(3) & !\spi0|cordic|index_loop\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000001111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_index_loop\(2),
	datab => \spi0|cordic|ALT_INV_index_loop\(0),
	datac => \spi0|cordic|ALT_INV_index_loop\(3),
	datad => \spi0|cordic|ALT_INV_index_loop\(1),
	datae => \spi0|ALT_INV_x_in\(1),
	dataf => \spi0|cordic|core|ALT_INV_x_out\(1),
	combout => \spi0|cordic|x_in_c~14_combout\);

-- Location: LABCELL_X85_Y20_N24
\spi0|cordic|x_in_c[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|x_in_c\(1) = ( \spi0|cordic|x_in_c~14_combout\ & ( (\spi0|cordic|x_in_c\(1)) # (\spi0|cordic|state.LOAD_DATA~q\) ) ) # ( !\spi0|cordic|x_in_c~14_combout\ & ( (!\spi0|cordic|state.LOAD_DATA~q\ & \spi0|cordic|x_in_c\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_state.LOAD_DATA~q\,
	datac => \spi0|cordic|ALT_INV_x_in_c\(1),
	dataf => \spi0|cordic|ALT_INV_x_in_c~14_combout\,
	combout => \spi0|cordic|x_in_c\(1));

-- Location: LABCELL_X81_Y19_N9
\spi0|cordic|core|Add3~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|Add3~53_sumout\ = SUM(( !\spi0|cordic|sgn~combout\ $ (\spi0|cordic|core|ShiftRight0~21_combout\) ) + ( \spi0|cordic|x_in_c\(2) ) + ( \spi0|cordic|core|Add3~58\ ))
-- \spi0|cordic|core|Add3~54\ = CARRY(( !\spi0|cordic|sgn~combout\ $ (\spi0|cordic|core|ShiftRight0~21_combout\) ) + ( \spi0|cordic|x_in_c\(2) ) + ( \spi0|cordic|core|Add3~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|cordic|ALT_INV_sgn~combout\,
	datad => \spi0|cordic|core|ALT_INV_ShiftRight0~21_combout\,
	dataf => \spi0|cordic|ALT_INV_x_in_c\(2),
	cin => \spi0|cordic|core|Add3~58\,
	sumout => \spi0|cordic|core|Add3~53_sumout\,
	cout => \spi0|cordic|core|Add3~54\);

-- Location: MLABCELL_X84_Y21_N27
\spi0|cordic|core|x_out[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|x_out\(2) = ( \spi0|cordic|core|state.EXECUTE~q\ & ( \spi0|cordic|core|Add3~53_sumout\ ) ) # ( !\spi0|cordic|core|state.EXECUTE~q\ & ( \spi0|cordic|core|x_out\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|cordic|core|ALT_INV_Add3~53_sumout\,
	datad => \spi0|cordic|core|ALT_INV_x_out\(2),
	dataf => \spi0|cordic|core|ALT_INV_state.EXECUTE~q\,
	combout => \spi0|cordic|core|x_out\(2));

-- Location: FF_X80_Y20_N49
\spi0|spi|data_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \spi0|spi|data_to_read\(2),
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => VCC,
	ena => \spi0|spi|Equal6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|data_out\(2));

-- Location: MLABCELL_X84_Y18_N33
\spi0|x_in[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|x_in\(2) = ( \spi0|spi|data_out\(2) & ( (\spi0|x_in[0]~0_combout\) # (\spi0|x_in\(2)) ) ) # ( !\spi0|spi|data_out\(2) & ( (\spi0|x_in\(2) & !\spi0|x_in[0]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|ALT_INV_x_in\(2),
	datac => \spi0|ALT_INV_x_in[0]~0_combout\,
	dataf => \spi0|spi|ALT_INV_data_out\(2),
	combout => \spi0|x_in\(2));

-- Location: MLABCELL_X84_Y18_N15
\spi0|cordic|x_in_c~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|x_in_c~13_combout\ = ( \spi0|cordic|core|x_out\(2) & ( \spi0|x_in\(2) ) ) # ( !\spi0|cordic|core|x_out\(2) & ( \spi0|x_in\(2) & ( (!\spi0|cordic|index_loop\(2) & (!\spi0|cordic|index_loop\(3) & (!\spi0|cordic|index_loop\(0) & 
-- !\spi0|cordic|index_loop\(1)))) ) ) ) # ( \spi0|cordic|core|x_out\(2) & ( !\spi0|x_in\(2) & ( (((\spi0|cordic|index_loop\(1)) # (\spi0|cordic|index_loop\(0))) # (\spi0|cordic|index_loop\(3))) # (\spi0|cordic|index_loop\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011111111111111110000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_index_loop\(2),
	datab => \spi0|cordic|ALT_INV_index_loop\(3),
	datac => \spi0|cordic|ALT_INV_index_loop\(0),
	datad => \spi0|cordic|ALT_INV_index_loop\(1),
	datae => \spi0|cordic|core|ALT_INV_x_out\(2),
	dataf => \spi0|ALT_INV_x_in\(2),
	combout => \spi0|cordic|x_in_c~13_combout\);

-- Location: LABCELL_X83_Y20_N45
\spi0|cordic|x_in_c[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|x_in_c\(2) = ( \spi0|cordic|x_in_c~13_combout\ & ( (\spi0|cordic|x_in_c\(2)) # (\spi0|cordic|state.LOAD_DATA~q\) ) ) # ( !\spi0|cordic|x_in_c~13_combout\ & ( (!\spi0|cordic|state.LOAD_DATA~q\ & \spi0|cordic|x_in_c\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_state.LOAD_DATA~q\,
	datad => \spi0|cordic|ALT_INV_x_in_c\(2),
	dataf => \spi0|cordic|ALT_INV_x_in_c~13_combout\,
	combout => \spi0|cordic|x_in_c\(2));

-- Location: LABCELL_X83_Y18_N18
\spi0|cordic|core|ShiftRight1~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|ShiftRight1~20_combout\ = ( \spi0|cordic|x_in_c\(2) & ( \spi0|cordic|x_in_c\(3) & ( (!\spi0|cordic|index\(1)) # ((!\spi0|cordic|index\(0) & (\spi0|cordic|x_in_c\(4))) # (\spi0|cordic|index\(0) & ((\spi0|cordic|x_in_c\(5))))) ) ) ) # ( 
-- !\spi0|cordic|x_in_c\(2) & ( \spi0|cordic|x_in_c\(3) & ( (!\spi0|cordic|index\(0) & (\spi0|cordic|x_in_c\(4) & ((\spi0|cordic|index\(1))))) # (\spi0|cordic|index\(0) & (((!\spi0|cordic|index\(1)) # (\spi0|cordic|x_in_c\(5))))) ) ) ) # ( 
-- \spi0|cordic|x_in_c\(2) & ( !\spi0|cordic|x_in_c\(3) & ( (!\spi0|cordic|index\(0) & (((!\spi0|cordic|index\(1))) # (\spi0|cordic|x_in_c\(4)))) # (\spi0|cordic|index\(0) & (((\spi0|cordic|x_in_c\(5) & \spi0|cordic|index\(1))))) ) ) ) # ( 
-- !\spi0|cordic|x_in_c\(2) & ( !\spi0|cordic|x_in_c\(3) & ( (\spi0|cordic|index\(1) & ((!\spi0|cordic|index\(0) & (\spi0|cordic|x_in_c\(4))) # (\spi0|cordic|index\(0) & ((\spi0|cordic|x_in_c\(5)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000111110011000100011100110011010001111111111101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_x_in_c\(4),
	datab => \spi0|cordic|ALT_INV_index\(0),
	datac => \spi0|cordic|ALT_INV_x_in_c\(5),
	datad => \spi0|cordic|ALT_INV_index\(1),
	datae => \spi0|cordic|ALT_INV_x_in_c\(2),
	dataf => \spi0|cordic|ALT_INV_x_in_c\(3),
	combout => \spi0|cordic|core|ShiftRight1~20_combout\);

-- Location: LABCELL_X83_Y18_N42
\spi0|cordic|core|ShiftRight1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|ShiftRight1~21_combout\ = ( \spi0|cordic|core|ShiftRight1~12_combout\ & ( \spi0|cordic|core|ShiftRight1~4_combout\ & ( (!\spi0|cordic|index\(3) & (((\spi0|cordic|core|ShiftRight1~20_combout\)) # (\spi0|cordic|index\(2)))) # 
-- (\spi0|cordic|index\(3) & ((!\spi0|cordic|index\(2)) # ((\spi0|cordic|core|ShiftRight1~0_combout\)))) ) ) ) # ( !\spi0|cordic|core|ShiftRight1~12_combout\ & ( \spi0|cordic|core|ShiftRight1~4_combout\ & ( (!\spi0|cordic|index\(3) & (!\spi0|cordic|index\(2) 
-- & (\spi0|cordic|core|ShiftRight1~20_combout\))) # (\spi0|cordic|index\(3) & ((!\spi0|cordic|index\(2)) # ((\spi0|cordic|core|ShiftRight1~0_combout\)))) ) ) ) # ( \spi0|cordic|core|ShiftRight1~12_combout\ & ( !\spi0|cordic|core|ShiftRight1~4_combout\ & ( 
-- (!\spi0|cordic|index\(3) & (((\spi0|cordic|core|ShiftRight1~20_combout\)) # (\spi0|cordic|index\(2)))) # (\spi0|cordic|index\(3) & (\spi0|cordic|index\(2) & ((\spi0|cordic|core|ShiftRight1~0_combout\)))) ) ) ) # ( 
-- !\spi0|cordic|core|ShiftRight1~12_combout\ & ( !\spi0|cordic|core|ShiftRight1~4_combout\ & ( (!\spi0|cordic|index\(3) & (!\spi0|cordic|index\(2) & (\spi0|cordic|core|ShiftRight1~20_combout\))) # (\spi0|cordic|index\(3) & (\spi0|cordic|index\(2) & 
-- ((\spi0|cordic|core|ShiftRight1~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000011001001010100011101101001100010111010110111001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_index\(3),
	datab => \spi0|cordic|ALT_INV_index\(2),
	datac => \spi0|cordic|core|ALT_INV_ShiftRight1~20_combout\,
	datad => \spi0|cordic|core|ALT_INV_ShiftRight1~0_combout\,
	datae => \spi0|cordic|core|ALT_INV_ShiftRight1~12_combout\,
	dataf => \spi0|cordic|core|ALT_INV_ShiftRight1~4_combout\,
	combout => \spi0|cordic|core|ShiftRight1~21_combout\);

-- Location: LABCELL_X83_Y21_N9
\spi0|cordic|core|Add1~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|Add1~53_sumout\ = SUM(( !\spi0|cordic|sgn~combout\ $ (!\spi0|cordic|core|ShiftRight1~21_combout\) ) + ( \spi0|cordic|y_in_c\(2) ) + ( \spi0|cordic|core|Add1~58\ ))
-- \spi0|cordic|core|Add1~54\ = CARRY(( !\spi0|cordic|sgn~combout\ $ (!\spi0|cordic|core|ShiftRight1~21_combout\) ) + ( \spi0|cordic|y_in_c\(2) ) + ( \spi0|cordic|core|Add1~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi0|cordic|ALT_INV_sgn~combout\,
	datac => \spi0|cordic|ALT_INV_y_in_c\(2),
	datad => \spi0|cordic|core|ALT_INV_ShiftRight1~21_combout\,
	cin => \spi0|cordic|core|Add1~58\,
	sumout => \spi0|cordic|core|Add1~53_sumout\,
	cout => \spi0|cordic|core|Add1~54\);

-- Location: LABCELL_X85_Y21_N36
\spi0|cordic|core|y_out[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|y_out\(2) = ( \spi0|cordic|core|state.EXECUTE~q\ & ( \spi0|cordic|core|Add1~53_sumout\ ) ) # ( !\spi0|cordic|core|state.EXECUTE~q\ & ( \spi0|cordic|core|y_out\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|cordic|core|ALT_INV_y_out\(2),
	datad => \spi0|cordic|core|ALT_INV_Add1~53_sumout\,
	datae => \spi0|cordic|core|ALT_INV_state.EXECUTE~q\,
	combout => \spi0|cordic|core|y_out\(2));

-- Location: LABCELL_X80_Y20_N57
\spi0|y_in[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|y_in\(2) = ( \spi0|y_in[0]~0_combout\ & ( \spi0|spi|data_out[2]~DUPLICATE_q\ ) ) # ( !\spi0|y_in[0]~0_combout\ & ( \spi0|y_in\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi|ALT_INV_data_out[2]~DUPLICATE_q\,
	datac => \spi0|ALT_INV_y_in\(2),
	dataf => \spi0|ALT_INV_y_in[0]~0_combout\,
	combout => \spi0|y_in\(2));

-- Location: LABCELL_X80_Y20_N27
\spi0|cordic|y_in_c~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|y_in_c~13_combout\ = ( \spi0|cordic|core|y_out\(2) & ( \spi0|y_in\(2) ) ) # ( !\spi0|cordic|core|y_out\(2) & ( \spi0|y_in\(2) & ( (!\spi0|cordic|index_loop\(1) & (!\spi0|cordic|index_loop\(3) & (!\spi0|cordic|index_loop\(0) & 
-- !\spi0|cordic|index_loop\(2)))) ) ) ) # ( \spi0|cordic|core|y_out\(2) & ( !\spi0|y_in\(2) & ( (((\spi0|cordic|index_loop\(2)) # (\spi0|cordic|index_loop\(0))) # (\spi0|cordic|index_loop\(3))) # (\spi0|cordic|index_loop\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011111111111111110000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_index_loop\(1),
	datab => \spi0|cordic|ALT_INV_index_loop\(3),
	datac => \spi0|cordic|ALT_INV_index_loop\(0),
	datad => \spi0|cordic|ALT_INV_index_loop\(2),
	datae => \spi0|cordic|core|ALT_INV_y_out\(2),
	dataf => \spi0|ALT_INV_y_in\(2),
	combout => \spi0|cordic|y_in_c~13_combout\);

-- Location: LABCELL_X80_Y20_N54
\spi0|cordic|y_in_c[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|y_in_c\(2) = ( \spi0|cordic|y_in_c~13_combout\ & ( (\spi0|cordic|y_in_c\(2)) # (\spi0|cordic|state.LOAD_DATA~q\) ) ) # ( !\spi0|cordic|y_in_c~13_combout\ & ( (!\spi0|cordic|state.LOAD_DATA~q\ & \spi0|cordic|y_in_c\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|cordic|ALT_INV_state.LOAD_DATA~q\,
	datad => \spi0|cordic|ALT_INV_y_in_c\(2),
	dataf => \spi0|cordic|ALT_INV_y_in_c~13_combout\,
	combout => \spi0|cordic|y_in_c\(2));

-- Location: LABCELL_X80_Y18_N54
\spi0|cordic|core|ShiftRight0~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|ShiftRight0~20_combout\ = ( \spi0|cordic|y_in_c\(5) & ( \spi0|cordic|y_in_c\(3) & ( ((!\spi0|cordic|index\(1) & ((\spi0|cordic|y_in_c\(2)))) # (\spi0|cordic|index\(1) & (\spi0|cordic|y_in_c\(4)))) # (\spi0|cordic|index\(0)) ) ) ) # ( 
-- !\spi0|cordic|y_in_c\(5) & ( \spi0|cordic|y_in_c\(3) & ( (!\spi0|cordic|index\(1) & (((\spi0|cordic|y_in_c\(2)) # (\spi0|cordic|index\(0))))) # (\spi0|cordic|index\(1) & (\spi0|cordic|y_in_c\(4) & (!\spi0|cordic|index\(0)))) ) ) ) # ( 
-- \spi0|cordic|y_in_c\(5) & ( !\spi0|cordic|y_in_c\(3) & ( (!\spi0|cordic|index\(1) & (((!\spi0|cordic|index\(0) & \spi0|cordic|y_in_c\(2))))) # (\spi0|cordic|index\(1) & (((\spi0|cordic|index\(0))) # (\spi0|cordic|y_in_c\(4)))) ) ) ) # ( 
-- !\spi0|cordic|y_in_c\(5) & ( !\spi0|cordic|y_in_c\(3) & ( (!\spi0|cordic|index\(0) & ((!\spi0|cordic|index\(1) & ((\spi0|cordic|y_in_c\(2)))) # (\spi0|cordic|index\(1) & (\spi0|cordic|y_in_c\(4))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000010110000000101011011010100011010101110100001111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_index\(1),
	datab => \spi0|cordic|ALT_INV_y_in_c\(4),
	datac => \spi0|cordic|ALT_INV_index\(0),
	datad => \spi0|cordic|ALT_INV_y_in_c\(2),
	datae => \spi0|cordic|ALT_INV_y_in_c\(5),
	dataf => \spi0|cordic|ALT_INV_y_in_c\(3),
	combout => \spi0|cordic|core|ShiftRight0~20_combout\);

-- Location: LABCELL_X80_Y18_N24
\spi0|cordic|core|ShiftRight0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|ShiftRight0~21_combout\ = ( \spi0|cordic|core|ShiftRight0~4_combout\ & ( \spi0|cordic|core|ShiftRight0~12_combout\ & ( (!\spi0|cordic|index\(2) & (((\spi0|cordic|index\(3))) # (\spi0|cordic|core|ShiftRight0~20_combout\))) # 
-- (\spi0|cordic|index\(2) & (((!\spi0|cordic|index\(3)) # (\spi0|cordic|core|ShiftRight0~0_combout\)))) ) ) ) # ( !\spi0|cordic|core|ShiftRight0~4_combout\ & ( \spi0|cordic|core|ShiftRight0~12_combout\ & ( (!\spi0|cordic|index\(2) & 
-- (\spi0|cordic|core|ShiftRight0~20_combout\ & ((!\spi0|cordic|index\(3))))) # (\spi0|cordic|index\(2) & (((!\spi0|cordic|index\(3)) # (\spi0|cordic|core|ShiftRight0~0_combout\)))) ) ) ) # ( \spi0|cordic|core|ShiftRight0~4_combout\ & ( 
-- !\spi0|cordic|core|ShiftRight0~12_combout\ & ( (!\spi0|cordic|index\(2) & (((\spi0|cordic|index\(3))) # (\spi0|cordic|core|ShiftRight0~20_combout\))) # (\spi0|cordic|index\(2) & (((\spi0|cordic|core|ShiftRight0~0_combout\ & \spi0|cordic|index\(3))))) ) ) 
-- ) # ( !\spi0|cordic|core|ShiftRight0~4_combout\ & ( !\spi0|cordic|core|ShiftRight0~12_combout\ & ( (!\spi0|cordic|index\(2) & (\spi0|cordic|core|ShiftRight0~20_combout\ & ((!\spi0|cordic|index\(3))))) # (\spi0|cordic|index\(2) & 
-- (((\spi0|cordic|core|ShiftRight0~0_combout\ & \spi0|cordic|index\(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000000011010001001100111101110111000000110111011111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|core|ALT_INV_ShiftRight0~20_combout\,
	datab => \spi0|cordic|ALT_INV_index\(2),
	datac => \spi0|cordic|core|ALT_INV_ShiftRight0~0_combout\,
	datad => \spi0|cordic|ALT_INV_index\(3),
	datae => \spi0|cordic|core|ALT_INV_ShiftRight0~4_combout\,
	dataf => \spi0|cordic|core|ALT_INV_ShiftRight0~12_combout\,
	combout => \spi0|cordic|core|ShiftRight0~21_combout\);

-- Location: LABCELL_X81_Y19_N12
\spi0|cordic|core|Add3~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|Add3~49_sumout\ = SUM(( !\spi0|cordic|sgn~combout\ $ (\spi0|cordic|core|ShiftRight0~19_combout\) ) + ( \spi0|cordic|x_in_c\(3) ) + ( \spi0|cordic|core|Add3~54\ ))
-- \spi0|cordic|core|Add3~50\ = CARRY(( !\spi0|cordic|sgn~combout\ $ (\spi0|cordic|core|ShiftRight0~19_combout\) ) + ( \spi0|cordic|x_in_c\(3) ) + ( \spi0|cordic|core|Add3~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000001111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_x_in_c\(3),
	datac => \spi0|cordic|ALT_INV_sgn~combout\,
	datad => \spi0|cordic|core|ALT_INV_ShiftRight0~19_combout\,
	cin => \spi0|cordic|core|Add3~54\,
	sumout => \spi0|cordic|core|Add3~49_sumout\,
	cout => \spi0|cordic|core|Add3~50\);

-- Location: MLABCELL_X84_Y19_N42
\spi0|cordic|core|x_out[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|x_out\(3) = ( \spi0|cordic|core|x_out\(3) & ( (!\spi0|cordic|core|state.EXECUTE~q\) # (\spi0|cordic|core|Add3~49_sumout\) ) ) # ( !\spi0|cordic|core|x_out\(3) & ( (\spi0|cordic|core|state.EXECUTE~q\ & \spi0|cordic|core|Add3~49_sumout\) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|cordic|core|ALT_INV_state.EXECUTE~q\,
	datad => \spi0|cordic|core|ALT_INV_Add3~49_sumout\,
	dataf => \spi0|cordic|core|ALT_INV_x_out\(3),
	combout => \spi0|cordic|core|x_out\(3));

-- Location: MLABCELL_X82_Y20_N57
\spi0|cordic|x_in_c~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|x_in_c~12_combout\ = ( \spi0|x_in\(3) & ( \spi0|cordic|core|x_out\(3) ) ) # ( !\spi0|x_in\(3) & ( \spi0|cordic|core|x_out\(3) & ( (((\spi0|cordic|index_loop\(3)) # (\spi0|cordic|index_loop\(1))) # (\spi0|cordic|index_loop\(0))) # 
-- (\spi0|cordic|index_loop\(2)) ) ) ) # ( \spi0|x_in\(3) & ( !\spi0|cordic|core|x_out\(3) & ( (!\spi0|cordic|index_loop\(2) & (!\spi0|cordic|index_loop\(0) & (!\spi0|cordic|index_loop\(1) & !\spi0|cordic|index_loop\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000001111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_index_loop\(2),
	datab => \spi0|cordic|ALT_INV_index_loop\(0),
	datac => \spi0|cordic|ALT_INV_index_loop\(1),
	datad => \spi0|cordic|ALT_INV_index_loop\(3),
	datae => \spi0|ALT_INV_x_in\(3),
	dataf => \spi0|cordic|core|ALT_INV_x_out\(3),
	combout => \spi0|cordic|x_in_c~12_combout\);

-- Location: MLABCELL_X82_Y20_N45
\spi0|cordic|x_in_c[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|x_in_c\(3) = ( \spi0|cordic|x_in_c~12_combout\ & ( (\spi0|cordic|x_in_c\(3)) # (\spi0|cordic|state.LOAD_DATA~q\) ) ) # ( !\spi0|cordic|x_in_c~12_combout\ & ( (!\spi0|cordic|state.LOAD_DATA~q\ & \spi0|cordic|x_in_c\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_state.LOAD_DATA~q\,
	datad => \spi0|cordic|ALT_INV_x_in_c\(3),
	dataf => \spi0|cordic|ALT_INV_x_in_c~12_combout\,
	combout => \spi0|cordic|x_in_c\(3));

-- Location: LABCELL_X83_Y22_N48
\spi0|cordic|core|ShiftRight1~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|ShiftRight1~18_combout\ = ( \spi0|cordic|index\(0) & ( \spi0|cordic|x_in_c\(5) & ( (!\spi0|cordic|index\(1) & (\spi0|cordic|x_in_c\(4))) # (\spi0|cordic|index\(1) & ((\spi0|cordic|x_in_c\(6)))) ) ) ) # ( !\spi0|cordic|index\(0) & ( 
-- \spi0|cordic|x_in_c\(5) & ( (\spi0|cordic|x_in_c\(3)) # (\spi0|cordic|index\(1)) ) ) ) # ( \spi0|cordic|index\(0) & ( !\spi0|cordic|x_in_c\(5) & ( (!\spi0|cordic|index\(1) & (\spi0|cordic|x_in_c\(4))) # (\spi0|cordic|index\(1) & 
-- ((\spi0|cordic|x_in_c\(6)))) ) ) ) # ( !\spi0|cordic|index\(0) & ( !\spi0|cordic|x_in_c\(5) & ( (!\spi0|cordic|index\(1) & \spi0|cordic|x_in_c\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010000010100101111101110111011101110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_index\(1),
	datab => \spi0|cordic|ALT_INV_x_in_c\(3),
	datac => \spi0|cordic|ALT_INV_x_in_c\(4),
	datad => \spi0|cordic|ALT_INV_x_in_c\(6),
	datae => \spi0|cordic|ALT_INV_index\(0),
	dataf => \spi0|cordic|ALT_INV_x_in_c\(5),
	combout => \spi0|cordic|core|ShiftRight1~18_combout\);

-- Location: LABCELL_X83_Y22_N18
\spi0|cordic|core|ShiftRight1~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|ShiftRight1~19_combout\ = ( \spi0|cordic|core|ShiftRight1~10_combout\ & ( \spi0|cordic|core|ShiftRight1~18_combout\ & ( (!\spi0|cordic|index\(3)) # ((!\spi0|cordic|index\(2) & ((\spi0|cordic|core|ShiftRight1~3_combout\))) # 
-- (\spi0|cordic|index\(2) & (\spi0|cordic|x_in_c\(15)))) ) ) ) # ( !\spi0|cordic|core|ShiftRight1~10_combout\ & ( \spi0|cordic|core|ShiftRight1~18_combout\ & ( (!\spi0|cordic|index\(3) & (((!\spi0|cordic|index\(2))))) # (\spi0|cordic|index\(3) & 
-- ((!\spi0|cordic|index\(2) & ((\spi0|cordic|core|ShiftRight1~3_combout\))) # (\spi0|cordic|index\(2) & (\spi0|cordic|x_in_c\(15))))) ) ) ) # ( \spi0|cordic|core|ShiftRight1~10_combout\ & ( !\spi0|cordic|core|ShiftRight1~18_combout\ & ( 
-- (!\spi0|cordic|index\(3) & (((\spi0|cordic|index\(2))))) # (\spi0|cordic|index\(3) & ((!\spi0|cordic|index\(2) & ((\spi0|cordic|core|ShiftRight1~3_combout\))) # (\spi0|cordic|index\(2) & (\spi0|cordic|x_in_c\(15))))) ) ) ) # ( 
-- !\spi0|cordic|core|ShiftRight1~10_combout\ & ( !\spi0|cordic|core|ShiftRight1~18_combout\ & ( (\spi0|cordic|index\(3) & ((!\spi0|cordic|index\(2) & ((\spi0|cordic|core|ShiftRight1~3_combout\))) # (\spi0|cordic|index\(2) & (\spi0|cordic|x_in_c\(15))))) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100010001000001011011101110101111000100011010111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_index\(3),
	datab => \spi0|cordic|ALT_INV_x_in_c\(15),
	datac => \spi0|cordic|core|ALT_INV_ShiftRight1~3_combout\,
	datad => \spi0|cordic|ALT_INV_index\(2),
	datae => \spi0|cordic|core|ALT_INV_ShiftRight1~10_combout\,
	dataf => \spi0|cordic|core|ALT_INV_ShiftRight1~18_combout\,
	combout => \spi0|cordic|core|ShiftRight1~19_combout\);

-- Location: LABCELL_X83_Y21_N12
\spi0|cordic|core|Add1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|Add1~49_sumout\ = SUM(( !\spi0|cordic|sgn~combout\ $ (!\spi0|cordic|core|ShiftRight1~19_combout\) ) + ( \spi0|cordic|y_in_c\(3) ) + ( \spi0|cordic|core|Add1~54\ ))
-- \spi0|cordic|core|Add1~50\ = CARRY(( !\spi0|cordic|sgn~combout\ $ (!\spi0|cordic|core|ShiftRight1~19_combout\) ) + ( \spi0|cordic|y_in_c\(3) ) + ( \spi0|cordic|core|Add1~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi0|cordic|ALT_INV_sgn~combout\,
	datac => \spi0|cordic|ALT_INV_y_in_c\(3),
	datad => \spi0|cordic|core|ALT_INV_ShiftRight1~19_combout\,
	cin => \spi0|cordic|core|Add1~54\,
	sumout => \spi0|cordic|core|Add1~49_sumout\,
	cout => \spi0|cordic|core|Add1~50\);

-- Location: MLABCELL_X84_Y19_N51
\spi0|cordic|core|y_out[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|y_out\(3) = ( \spi0|cordic|core|state.EXECUTE~q\ & ( \spi0|cordic|core|Add1~49_sumout\ ) ) # ( !\spi0|cordic|core|state.EXECUTE~q\ & ( \spi0|cordic|core|y_out\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|cordic|core|ALT_INV_y_out\(3),
	datad => \spi0|cordic|core|ALT_INV_Add1~49_sumout\,
	dataf => \spi0|cordic|core|ALT_INV_state.EXECUTE~q\,
	combout => \spi0|cordic|core|y_out\(3));

-- Location: LABCELL_X79_Y19_N36
\spi0|y_in[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|y_in\(3) = ( \spi0|spi|data_out\(3) & ( \spi0|y_in[0]~0_combout\ ) ) # ( \spi0|spi|data_out\(3) & ( !\spi0|y_in[0]~0_combout\ & ( \spi0|y_in\(3) ) ) ) # ( !\spi0|spi|data_out\(3) & ( !\spi0|y_in[0]~0_combout\ & ( \spi0|y_in\(3) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|ALT_INV_y_in\(3),
	datae => \spi0|spi|ALT_INV_data_out\(3),
	dataf => \spi0|ALT_INV_y_in[0]~0_combout\,
	combout => \spi0|y_in\(3));

-- Location: LABCELL_X80_Y19_N15
\spi0|cordic|y_in_c~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|y_in_c~12_combout\ = ( \spi0|cordic|core|y_out\(3) & ( \spi0|y_in\(3) ) ) # ( !\spi0|cordic|core|y_out\(3) & ( \spi0|y_in\(3) & ( (!\spi0|cordic|index_loop\(3) & (!\spi0|cordic|index_loop\(2) & (!\spi0|cordic|index_loop\(0) & 
-- !\spi0|cordic|index_loop\(1)))) ) ) ) # ( \spi0|cordic|core|y_out\(3) & ( !\spi0|y_in\(3) & ( (((\spi0|cordic|index_loop\(1)) # (\spi0|cordic|index_loop\(0))) # (\spi0|cordic|index_loop\(2))) # (\spi0|cordic|index_loop\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011111111111111110000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_index_loop\(3),
	datab => \spi0|cordic|ALT_INV_index_loop\(2),
	datac => \spi0|cordic|ALT_INV_index_loop\(0),
	datad => \spi0|cordic|ALT_INV_index_loop\(1),
	datae => \spi0|cordic|core|ALT_INV_y_out\(3),
	dataf => \spi0|ALT_INV_y_in\(3),
	combout => \spi0|cordic|y_in_c~12_combout\);

-- Location: LABCELL_X80_Y19_N45
\spi0|cordic|y_in_c[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|y_in_c\(3) = ( \spi0|cordic|y_in_c~12_combout\ & ( (\spi0|cordic|y_in_c\(3)) # (\spi0|cordic|state.LOAD_DATA~q\) ) ) # ( !\spi0|cordic|y_in_c~12_combout\ & ( (!\spi0|cordic|state.LOAD_DATA~q\ & \spi0|cordic|y_in_c\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|cordic|ALT_INV_state.LOAD_DATA~q\,
	datad => \spi0|cordic|ALT_INV_y_in_c\(3),
	dataf => \spi0|cordic|ALT_INV_y_in_c~12_combout\,
	combout => \spi0|cordic|y_in_c\(3));

-- Location: LABCELL_X83_Y21_N15
\spi0|cordic|core|Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|Add1~45_sumout\ = SUM(( !\spi0|cordic|sgn~combout\ $ (!\spi0|cordic|core|ShiftRight1~17_combout\) ) + ( \spi0|cordic|y_in_c\(4) ) + ( \spi0|cordic|core|Add1~50\ ))
-- \spi0|cordic|core|Add1~46\ = CARRY(( !\spi0|cordic|sgn~combout\ $ (!\spi0|cordic|core|ShiftRight1~17_combout\) ) + ( \spi0|cordic|y_in_c\(4) ) + ( \spi0|cordic|core|Add1~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|cordic|ALT_INV_sgn~combout\,
	datad => \spi0|cordic|core|ALT_INV_ShiftRight1~17_combout\,
	dataf => \spi0|cordic|ALT_INV_y_in_c\(4),
	cin => \spi0|cordic|core|Add1~50\,
	sumout => \spi0|cordic|core|Add1~45_sumout\,
	cout => \spi0|cordic|core|Add1~46\);

-- Location: LABCELL_X80_Y20_N45
\spi0|cordic|core|y_out[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|y_out\(4) = ( \spi0|cordic|core|Add1~45_sumout\ & ( (\spi0|cordic|core|state.EXECUTE~q\) # (\spi0|cordic|core|y_out\(4)) ) ) # ( !\spi0|cordic|core|Add1~45_sumout\ & ( (\spi0|cordic|core|y_out\(4) & !\spi0|cordic|core|state.EXECUTE~q\) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|cordic|core|ALT_INV_y_out\(4),
	datad => \spi0|cordic|core|ALT_INV_state.EXECUTE~q\,
	dataf => \spi0|cordic|core|ALT_INV_Add1~45_sumout\,
	combout => \spi0|cordic|core|y_out\(4));

-- Location: LABCELL_X80_Y20_N9
\spi0|y_in[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|y_in\(4) = ( \spi0|y_in\(4) & ( (!\spi0|y_in[0]~0_combout\) # (\spi0|spi|data_out\(4)) ) ) # ( !\spi0|y_in\(4) & ( (\spi0|y_in[0]~0_combout\ & \spi0|spi|data_out\(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|ALT_INV_y_in[0]~0_combout\,
	datad => \spi0|spi|ALT_INV_data_out\(4),
	dataf => \spi0|ALT_INV_y_in\(4),
	combout => \spi0|y_in\(4));

-- Location: LABCELL_X80_Y20_N18
\spi0|cordic|y_in_c~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|y_in_c~11_combout\ = ( \spi0|cordic|core|y_out\(4) & ( \spi0|y_in\(4) ) ) # ( !\spi0|cordic|core|y_out\(4) & ( \spi0|y_in\(4) & ( (!\spi0|cordic|index_loop\(1) & (!\spi0|cordic|index_loop\(3) & (!\spi0|cordic|index_loop\(2) & 
-- !\spi0|cordic|index_loop\(0)))) ) ) ) # ( \spi0|cordic|core|y_out\(4) & ( !\spi0|y_in\(4) & ( (((\spi0|cordic|index_loop\(0)) # (\spi0|cordic|index_loop\(2))) # (\spi0|cordic|index_loop\(3))) # (\spi0|cordic|index_loop\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011111111111111110000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_index_loop\(1),
	datab => \spi0|cordic|ALT_INV_index_loop\(3),
	datac => \spi0|cordic|ALT_INV_index_loop\(2),
	datad => \spi0|cordic|ALT_INV_index_loop\(0),
	datae => \spi0|cordic|core|ALT_INV_y_out\(4),
	dataf => \spi0|ALT_INV_y_in\(4),
	combout => \spi0|cordic|y_in_c~11_combout\);

-- Location: LABCELL_X80_Y20_N6
\spi0|cordic|y_in_c[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|y_in_c\(4) = ( \spi0|cordic|y_in_c~11_combout\ & ( (\spi0|cordic|state.LOAD_DATA~q\) # (\spi0|cordic|y_in_c\(4)) ) ) # ( !\spi0|cordic|y_in_c~11_combout\ & ( (\spi0|cordic|y_in_c\(4) & !\spi0|cordic|state.LOAD_DATA~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi0|cordic|ALT_INV_y_in_c\(4),
	datad => \spi0|cordic|ALT_INV_state.LOAD_DATA~q\,
	dataf => \spi0|cordic|ALT_INV_y_in_c~11_combout\,
	combout => \spi0|cordic|y_in_c\(4));

-- Location: LABCELL_X81_Y18_N0
\spi0|cordic|core|ShiftRight0~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|ShiftRight0~16_combout\ = ( \spi0|cordic|y_in_c\(7) & ( \spi0|cordic|y_in_c\(5) & ( ((!\spi0|cordic|index\(1) & (\spi0|cordic|y_in_c\(4))) # (\spi0|cordic|index\(1) & ((\spi0|cordic|y_in_c\(6))))) # (\spi0|cordic|index\(0)) ) ) ) # ( 
-- !\spi0|cordic|y_in_c\(7) & ( \spi0|cordic|y_in_c\(5) & ( (!\spi0|cordic|index\(0) & ((!\spi0|cordic|index\(1) & (\spi0|cordic|y_in_c\(4))) # (\spi0|cordic|index\(1) & ((\spi0|cordic|y_in_c\(6)))))) # (\spi0|cordic|index\(0) & (!\spi0|cordic|index\(1))) ) 
-- ) ) # ( \spi0|cordic|y_in_c\(7) & ( !\spi0|cordic|y_in_c\(5) & ( (!\spi0|cordic|index\(0) & ((!\spi0|cordic|index\(1) & (\spi0|cordic|y_in_c\(4))) # (\spi0|cordic|index\(1) & ((\spi0|cordic|y_in_c\(6)))))) # (\spi0|cordic|index\(0) & 
-- (\spi0|cordic|index\(1))) ) ) ) # ( !\spi0|cordic|y_in_c\(7) & ( !\spi0|cordic|y_in_c\(5) & ( (!\spi0|cordic|index\(0) & ((!\spi0|cordic|index\(1) & (\spi0|cordic|y_in_c\(4))) # (\spi0|cordic|index\(1) & ((\spi0|cordic|y_in_c\(6)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000110010011101101001100011011100101110101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_index\(0),
	datab => \spi0|cordic|ALT_INV_index\(1),
	datac => \spi0|cordic|ALT_INV_y_in_c\(4),
	datad => \spi0|cordic|ALT_INV_y_in_c\(6),
	datae => \spi0|cordic|ALT_INV_y_in_c\(7),
	dataf => \spi0|cordic|ALT_INV_y_in_c\(5),
	combout => \spi0|cordic|core|ShiftRight0~16_combout\);

-- Location: LABCELL_X81_Y18_N24
\spi0|cordic|core|ShiftRight0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|ShiftRight0~17_combout\ = ( \spi0|cordic|core|ShiftRight0~2_combout\ & ( \spi0|cordic|core|ShiftRight0~8_combout\ & ( (!\spi0|cordic|index\(3) & (((\spi0|cordic|core|ShiftRight0~16_combout\)) # (\spi0|cordic|index\(2)))) # 
-- (\spi0|cordic|index\(3) & ((!\spi0|cordic|index\(2)) # ((\spi0|cordic|y_in_c\(15))))) ) ) ) # ( !\spi0|cordic|core|ShiftRight0~2_combout\ & ( \spi0|cordic|core|ShiftRight0~8_combout\ & ( (!\spi0|cordic|index\(3) & 
-- (((\spi0|cordic|core|ShiftRight0~16_combout\)) # (\spi0|cordic|index\(2)))) # (\spi0|cordic|index\(3) & (\spi0|cordic|index\(2) & ((\spi0|cordic|y_in_c\(15))))) ) ) ) # ( \spi0|cordic|core|ShiftRight0~2_combout\ & ( 
-- !\spi0|cordic|core|ShiftRight0~8_combout\ & ( (!\spi0|cordic|index\(3) & (!\spi0|cordic|index\(2) & (\spi0|cordic|core|ShiftRight0~16_combout\))) # (\spi0|cordic|index\(3) & ((!\spi0|cordic|index\(2)) # ((\spi0|cordic|y_in_c\(15))))) ) ) ) # ( 
-- !\spi0|cordic|core|ShiftRight0~2_combout\ & ( !\spi0|cordic|core|ShiftRight0~8_combout\ & ( (!\spi0|cordic|index\(3) & (!\spi0|cordic|index\(2) & (\spi0|cordic|core|ShiftRight0~16_combout\))) # (\spi0|cordic|index\(3) & (\spi0|cordic|index\(2) & 
-- ((\spi0|cordic|y_in_c\(15))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000011001010011000101110100101010001110110110111001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_index\(3),
	datab => \spi0|cordic|ALT_INV_index\(2),
	datac => \spi0|cordic|core|ALT_INV_ShiftRight0~16_combout\,
	datad => \spi0|cordic|ALT_INV_y_in_c\(15),
	datae => \spi0|cordic|core|ALT_INV_ShiftRight0~2_combout\,
	dataf => \spi0|cordic|core|ALT_INV_ShiftRight0~8_combout\,
	combout => \spi0|cordic|core|ShiftRight0~17_combout\);

-- Location: LABCELL_X81_Y19_N15
\spi0|cordic|core|Add3~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|Add3~45_sumout\ = SUM(( \spi0|cordic|x_in_c\(4) ) + ( !\spi0|cordic|sgn~combout\ $ (\spi0|cordic|core|ShiftRight0~17_combout\) ) + ( \spi0|cordic|core|Add3~50\ ))
-- \spi0|cordic|core|Add3~46\ = CARRY(( \spi0|cordic|x_in_c\(4) ) + ( !\spi0|cordic|sgn~combout\ $ (\spi0|cordic|core|ShiftRight0~17_combout\) ) + ( \spi0|cordic|core|Add3~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001111000011110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi0|cordic|ALT_INV_sgn~combout\,
	datac => \spi0|cordic|core|ALT_INV_ShiftRight0~17_combout\,
	datad => \spi0|cordic|ALT_INV_x_in_c\(4),
	cin => \spi0|cordic|core|Add3~50\,
	sumout => \spi0|cordic|core|Add3~45_sumout\,
	cout => \spi0|cordic|core|Add3~46\);

-- Location: LABCELL_X83_Y20_N54
\spi0|cordic|core|x_out[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|x_out\(4) = ( \spi0|cordic|core|state.EXECUTE~q\ & ( \spi0|cordic|core|Add3~45_sumout\ ) ) # ( !\spi0|cordic|core|state.EXECUTE~q\ & ( \spi0|cordic|core|x_out\(4) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi0|cordic|core|ALT_INV_Add3~45_sumout\,
	datad => \spi0|cordic|core|ALT_INV_x_out\(4),
	dataf => \spi0|cordic|core|ALT_INV_state.EXECUTE~q\,
	combout => \spi0|cordic|core|x_out\(4));

-- Location: LABCELL_X83_Y20_N51
\spi0|x_in[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|x_in\(4) = ( \spi0|spi|data_out[4]~DUPLICATE_q\ & ( (\spi0|x_in\(4)) # (\spi0|x_in[0]~0_combout\) ) ) # ( !\spi0|spi|data_out[4]~DUPLICATE_q\ & ( (!\spi0|x_in[0]~0_combout\ & \spi0|x_in\(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|ALT_INV_x_in[0]~0_combout\,
	datad => \spi0|ALT_INV_x_in\(4),
	dataf => \spi0|spi|ALT_INV_data_out[4]~DUPLICATE_q\,
	combout => \spi0|x_in\(4));

-- Location: LABCELL_X83_Y20_N18
\spi0|cordic|x_in_c~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|x_in_c~11_combout\ = ( \spi0|cordic|core|x_out\(4) & ( \spi0|x_in\(4) ) ) # ( !\spi0|cordic|core|x_out\(4) & ( \spi0|x_in\(4) & ( (!\spi0|cordic|index_loop\(1) & (!\spi0|cordic|index_loop\(2) & (!\spi0|cordic|index_loop\(0) & 
-- !\spi0|cordic|index_loop\(3)))) ) ) ) # ( \spi0|cordic|core|x_out\(4) & ( !\spi0|x_in\(4) & ( (((\spi0|cordic|index_loop\(3)) # (\spi0|cordic|index_loop\(0))) # (\spi0|cordic|index_loop\(2))) # (\spi0|cordic|index_loop\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011111111111111110000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_index_loop\(1),
	datab => \spi0|cordic|ALT_INV_index_loop\(2),
	datac => \spi0|cordic|ALT_INV_index_loop\(0),
	datad => \spi0|cordic|ALT_INV_index_loop\(3),
	datae => \spi0|cordic|core|ALT_INV_x_out\(4),
	dataf => \spi0|ALT_INV_x_in\(4),
	combout => \spi0|cordic|x_in_c~11_combout\);

-- Location: LABCELL_X83_Y20_N36
\spi0|cordic|x_in_c[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|x_in_c\(4) = ( \spi0|cordic|x_in_c~11_combout\ & ( (\spi0|cordic|state.LOAD_DATA~q\) # (\spi0|cordic|x_in_c\(4)) ) ) # ( !\spi0|cordic|x_in_c~11_combout\ & ( (\spi0|cordic|x_in_c\(4) & !\spi0|cordic|state.LOAD_DATA~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|cordic|ALT_INV_x_in_c\(4),
	datad => \spi0|cordic|ALT_INV_state.LOAD_DATA~q\,
	dataf => \spi0|cordic|ALT_INV_x_in_c~11_combout\,
	combout => \spi0|cordic|x_in_c\(4));

-- Location: MLABCELL_X82_Y18_N12
\spi0|cordic|core|ShiftRight1~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|ShiftRight1~16_combout\ = ( \spi0|cordic|x_in_c\(4) & ( \spi0|cordic|x_in_c\(5) & ( (!\spi0|cordic|index\(1)) # ((!\spi0|cordic|index\(0) & (\spi0|cordic|x_in_c\(6))) # (\spi0|cordic|index\(0) & ((\spi0|cordic|x_in_c\(7))))) ) ) ) # ( 
-- !\spi0|cordic|x_in_c\(4) & ( \spi0|cordic|x_in_c\(5) & ( (!\spi0|cordic|index\(1) & (((\spi0|cordic|index\(0))))) # (\spi0|cordic|index\(1) & ((!\spi0|cordic|index\(0) & (\spi0|cordic|x_in_c\(6))) # (\spi0|cordic|index\(0) & ((\spi0|cordic|x_in_c\(7)))))) 
-- ) ) ) # ( \spi0|cordic|x_in_c\(4) & ( !\spi0|cordic|x_in_c\(5) & ( (!\spi0|cordic|index\(1) & (((!\spi0|cordic|index\(0))))) # (\spi0|cordic|index\(1) & ((!\spi0|cordic|index\(0) & (\spi0|cordic|x_in_c\(6))) # (\spi0|cordic|index\(0) & 
-- ((\spi0|cordic|x_in_c\(7)))))) ) ) ) # ( !\spi0|cordic|x_in_c\(4) & ( !\spi0|cordic|x_in_c\(5) & ( (\spi0|cordic|index\(1) & ((!\spi0|cordic|index\(0) & (\spi0|cordic|x_in_c\(6))) # (\spi0|cordic|index\(0) & ((\spi0|cordic|x_in_c\(7)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010101101100001011010100011010000111111011101010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_index\(1),
	datab => \spi0|cordic|ALT_INV_x_in_c\(6),
	datac => \spi0|cordic|ALT_INV_index\(0),
	datad => \spi0|cordic|ALT_INV_x_in_c\(7),
	datae => \spi0|cordic|ALT_INV_x_in_c\(4),
	dataf => \spi0|cordic|ALT_INV_x_in_c\(5),
	combout => \spi0|cordic|core|ShiftRight1~16_combout\);

-- Location: MLABCELL_X82_Y18_N54
\spi0|cordic|core|ShiftRight1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|ShiftRight1~17_combout\ = ( \spi0|cordic|core|ShiftRight1~2_combout\ & ( \spi0|cordic|core|ShiftRight1~8_combout\ & ( (!\spi0|cordic|index\(3) & (((\spi0|cordic|core|ShiftRight1~16_combout\) # (\spi0|cordic|index\(2))))) # 
-- (\spi0|cordic|index\(3) & (((!\spi0|cordic|index\(2))) # (\spi0|cordic|x_in_c\(15)))) ) ) ) # ( !\spi0|cordic|core|ShiftRight1~2_combout\ & ( \spi0|cordic|core|ShiftRight1~8_combout\ & ( (!\spi0|cordic|index\(3) & 
-- (((\spi0|cordic|core|ShiftRight1~16_combout\) # (\spi0|cordic|index\(2))))) # (\spi0|cordic|index\(3) & (\spi0|cordic|x_in_c\(15) & (\spi0|cordic|index\(2)))) ) ) ) # ( \spi0|cordic|core|ShiftRight1~2_combout\ & ( !\spi0|cordic|core|ShiftRight1~8_combout\ 
-- & ( (!\spi0|cordic|index\(3) & (((!\spi0|cordic|index\(2) & \spi0|cordic|core|ShiftRight1~16_combout\)))) # (\spi0|cordic|index\(3) & (((!\spi0|cordic|index\(2))) # (\spi0|cordic|x_in_c\(15)))) ) ) ) # ( !\spi0|cordic|core|ShiftRight1~2_combout\ & ( 
-- !\spi0|cordic|core|ShiftRight1~8_combout\ & ( (!\spi0|cordic|index\(3) & (((!\spi0|cordic|index\(2) & \spi0|cordic|core|ShiftRight1~16_combout\)))) # (\spi0|cordic|index\(3) & (\spi0|cordic|x_in_c\(15) & (\spi0|cordic|index\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110100001010100011111000100001011101010110101101111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_index\(3),
	datab => \spi0|cordic|ALT_INV_x_in_c\(15),
	datac => \spi0|cordic|ALT_INV_index\(2),
	datad => \spi0|cordic|core|ALT_INV_ShiftRight1~16_combout\,
	datae => \spi0|cordic|core|ALT_INV_ShiftRight1~2_combout\,
	dataf => \spi0|cordic|core|ALT_INV_ShiftRight1~8_combout\,
	combout => \spi0|cordic|core|ShiftRight1~17_combout\);

-- Location: LABCELL_X83_Y21_N18
\spi0|cordic|core|Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|Add1~41_sumout\ = SUM(( \spi0|cordic|y_in_c\(5) ) + ( !\spi0|cordic|sgn~combout\ $ (!\spi0|cordic|core|ShiftRight1~15_combout\) ) + ( \spi0|cordic|core|Add1~46\ ))
-- \spi0|cordic|core|Add1~42\ = CARRY(( \spi0|cordic|y_in_c\(5) ) + ( !\spi0|cordic|sgn~combout\ $ (!\spi0|cordic|core|ShiftRight1~15_combout\) ) + ( \spi0|cordic|core|Add1~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110000111100001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi0|cordic|ALT_INV_sgn~combout\,
	datac => \spi0|cordic|core|ALT_INV_ShiftRight1~15_combout\,
	datad => \spi0|cordic|ALT_INV_y_in_c\(5),
	cin => \spi0|cordic|core|Add1~46\,
	sumout => \spi0|cordic|core|Add1~41_sumout\,
	cout => \spi0|cordic|core|Add1~42\);

-- Location: MLABCELL_X84_Y18_N48
\spi0|cordic|core|y_out[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|y_out\(5) = ( \spi0|cordic|core|Add1~41_sumout\ & ( (\spi0|cordic|core|state.EXECUTE~q\) # (\spi0|cordic|core|y_out\(5)) ) ) # ( !\spi0|cordic|core|Add1~41_sumout\ & ( (\spi0|cordic|core|y_out\(5) & !\spi0|cordic|core|state.EXECUTE~q\) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|cordic|core|ALT_INV_y_out\(5),
	datad => \spi0|cordic|core|ALT_INV_state.EXECUTE~q\,
	dataf => \spi0|cordic|core|ALT_INV_Add1~41_sumout\,
	combout => \spi0|cordic|core|y_out\(5));

-- Location: MLABCELL_X84_Y18_N42
\spi0|y_in[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|y_in\(5) = ( \spi0|y_in[0]~0_combout\ & ( \spi0|spi|data_out\(5) ) ) # ( !\spi0|y_in[0]~0_combout\ & ( \spi0|y_in\(5) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi|ALT_INV_data_out\(5),
	datab => \spi0|ALT_INV_y_in\(5),
	dataf => \spi0|ALT_INV_y_in[0]~0_combout\,
	combout => \spi0|y_in\(5));

-- Location: MLABCELL_X84_Y18_N12
\spi0|cordic|y_in_c~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|y_in_c~10_combout\ = ( \spi0|cordic|core|y_out\(5) & ( \spi0|y_in\(5) ) ) # ( !\spi0|cordic|core|y_out\(5) & ( \spi0|y_in\(5) & ( (!\spi0|cordic|index_loop\(2) & (!\spi0|cordic|index_loop\(3) & (!\spi0|cordic|index_loop\(1) & 
-- !\spi0|cordic|index_loop\(0)))) ) ) ) # ( \spi0|cordic|core|y_out\(5) & ( !\spi0|y_in\(5) & ( (((\spi0|cordic|index_loop\(0)) # (\spi0|cordic|index_loop\(1))) # (\spi0|cordic|index_loop\(3))) # (\spi0|cordic|index_loop\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011111111111111110000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_index_loop\(2),
	datab => \spi0|cordic|ALT_INV_index_loop\(3),
	datac => \spi0|cordic|ALT_INV_index_loop\(1),
	datad => \spi0|cordic|ALT_INV_index_loop\(0),
	datae => \spi0|cordic|core|ALT_INV_y_out\(5),
	dataf => \spi0|ALT_INV_y_in\(5),
	combout => \spi0|cordic|y_in_c~10_combout\);

-- Location: MLABCELL_X84_Y18_N45
\spi0|cordic|y_in_c[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|y_in_c\(5) = ( \spi0|cordic|y_in_c~10_combout\ & ( (\spi0|cordic|state.LOAD_DATA~q\) # (\spi0|cordic|y_in_c\(5)) ) ) # ( !\spi0|cordic|y_in_c~10_combout\ & ( (\spi0|cordic|y_in_c\(5) & !\spi0|cordic|state.LOAD_DATA~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|cordic|ALT_INV_y_in_c\(5),
	datad => \spi0|cordic|ALT_INV_state.LOAD_DATA~q\,
	dataf => \spi0|cordic|ALT_INV_y_in_c~10_combout\,
	combout => \spi0|cordic|y_in_c\(5));

-- Location: LABCELL_X80_Y18_N30
\spi0|cordic|core|ShiftRight0~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|ShiftRight0~14_combout\ = ( \spi0|cordic|y_in_c\(5) & ( \spi0|cordic|y_in_c\(8) & ( (!\spi0|cordic|index\(0) & (((!\spi0|cordic|index\(1)) # (\spi0|cordic|y_in_c\(7))))) # (\spi0|cordic|index\(0) & (((\spi0|cordic|index\(1))) # 
-- (\spi0|cordic|y_in_c\(6)))) ) ) ) # ( !\spi0|cordic|y_in_c\(5) & ( \spi0|cordic|y_in_c\(8) & ( (!\spi0|cordic|index\(0) & (((\spi0|cordic|y_in_c\(7) & \spi0|cordic|index\(1))))) # (\spi0|cordic|index\(0) & (((\spi0|cordic|index\(1))) # 
-- (\spi0|cordic|y_in_c\(6)))) ) ) ) # ( \spi0|cordic|y_in_c\(5) & ( !\spi0|cordic|y_in_c\(8) & ( (!\spi0|cordic|index\(0) & (((!\spi0|cordic|index\(1)) # (\spi0|cordic|y_in_c\(7))))) # (\spi0|cordic|index\(0) & (\spi0|cordic|y_in_c\(6) & 
-- ((!\spi0|cordic|index\(1))))) ) ) ) # ( !\spi0|cordic|y_in_c\(5) & ( !\spi0|cordic|y_in_c\(8) & ( (!\spi0|cordic|index\(0) & (((\spi0|cordic|y_in_c\(7) & \spi0|cordic|index\(1))))) # (\spi0|cordic|index\(0) & (\spi0|cordic|y_in_c\(6) & 
-- ((!\spi0|cordic|index\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100001100110111010000110000010001001111111101110100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_y_in_c\(6),
	datab => \spi0|cordic|ALT_INV_index\(0),
	datac => \spi0|cordic|ALT_INV_y_in_c\(7),
	datad => \spi0|cordic|ALT_INV_index\(1),
	datae => \spi0|cordic|ALT_INV_y_in_c\(5),
	dataf => \spi0|cordic|ALT_INV_y_in_c\(8),
	combout => \spi0|cordic|core|ShiftRight0~14_combout\);

-- Location: LABCELL_X80_Y18_N18
\spi0|cordic|core|ShiftRight0~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|ShiftRight0~15_combout\ = ( \spi0|cordic|core|ShiftRight0~1_combout\ & ( \spi0|cordic|core|ShiftRight0~6_combout\ & ( (!\spi0|cordic|index\(2) & (((\spi0|cordic|core|ShiftRight0~14_combout\)) # (\spi0|cordic|index\(3)))) # 
-- (\spi0|cordic|index\(2) & ((!\spi0|cordic|index\(3)) # ((\spi0|cordic|y_in_c\(15))))) ) ) ) # ( !\spi0|cordic|core|ShiftRight0~1_combout\ & ( \spi0|cordic|core|ShiftRight0~6_combout\ & ( (!\spi0|cordic|index\(2) & (!\spi0|cordic|index\(3) & 
-- ((\spi0|cordic|core|ShiftRight0~14_combout\)))) # (\spi0|cordic|index\(2) & ((!\spi0|cordic|index\(3)) # ((\spi0|cordic|y_in_c\(15))))) ) ) ) # ( \spi0|cordic|core|ShiftRight0~1_combout\ & ( !\spi0|cordic|core|ShiftRight0~6_combout\ & ( 
-- (!\spi0|cordic|index\(2) & (((\spi0|cordic|core|ShiftRight0~14_combout\)) # (\spi0|cordic|index\(3)))) # (\spi0|cordic|index\(2) & (\spi0|cordic|index\(3) & (\spi0|cordic|y_in_c\(15)))) ) ) ) # ( !\spi0|cordic|core|ShiftRight0~1_combout\ & ( 
-- !\spi0|cordic|core|ShiftRight0~6_combout\ & ( (!\spi0|cordic|index\(2) & (!\spi0|cordic|index\(3) & ((\spi0|cordic|core|ShiftRight0~14_combout\)))) # (\spi0|cordic|index\(2) & (\spi0|cordic|index\(3) & (\spi0|cordic|y_in_c\(15)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110001001001000111010101101000101110011010110011111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_index\(2),
	datab => \spi0|cordic|ALT_INV_index\(3),
	datac => \spi0|cordic|ALT_INV_y_in_c\(15),
	datad => \spi0|cordic|core|ALT_INV_ShiftRight0~14_combout\,
	datae => \spi0|cordic|core|ALT_INV_ShiftRight0~1_combout\,
	dataf => \spi0|cordic|core|ALT_INV_ShiftRight0~6_combout\,
	combout => \spi0|cordic|core|ShiftRight0~15_combout\);

-- Location: LABCELL_X81_Y19_N18
\spi0|cordic|core|Add3~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|Add3~41_sumout\ = SUM(( \spi0|cordic|x_in_c\(5) ) + ( !\spi0|cordic|sgn~combout\ $ (\spi0|cordic|core|ShiftRight0~15_combout\) ) + ( \spi0|cordic|core|Add3~46\ ))
-- \spi0|cordic|core|Add3~42\ = CARRY(( \spi0|cordic|x_in_c\(5) ) + ( !\spi0|cordic|sgn~combout\ $ (\spi0|cordic|core|ShiftRight0~15_combout\) ) + ( \spi0|cordic|core|Add3~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010110100101101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_sgn~combout\,
	datac => \spi0|cordic|core|ALT_INV_ShiftRight0~15_combout\,
	datad => \spi0|cordic|ALT_INV_x_in_c\(5),
	cin => \spi0|cordic|core|Add3~46\,
	sumout => \spi0|cordic|core|Add3~41_sumout\,
	cout => \spi0|cordic|core|Add3~42\);

-- Location: MLABCELL_X84_Y18_N24
\spi0|cordic|core|x_out[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|x_out\(5) = ( \spi0|cordic|core|state.EXECUTE~q\ & ( \spi0|cordic|core|Add3~41_sumout\ ) ) # ( !\spi0|cordic|core|state.EXECUTE~q\ & ( \spi0|cordic|core|x_out\(5) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|cordic|core|ALT_INV_x_out\(5),
	datad => \spi0|cordic|core|ALT_INV_Add3~41_sumout\,
	dataf => \spi0|cordic|core|ALT_INV_state.EXECUTE~q\,
	combout => \spi0|cordic|core|x_out\(5));

-- Location: MLABCELL_X84_Y18_N27
\spi0|x_in[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|x_in\(5) = ( \spi0|spi|data_out\(5) & ( (\spi0|x_in\(5)) # (\spi0|x_in[0]~0_combout\) ) ) # ( !\spi0|spi|data_out\(5) & ( (!\spi0|x_in[0]~0_combout\ & \spi0|x_in\(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|ALT_INV_x_in[0]~0_combout\,
	datad => \spi0|ALT_INV_x_in\(5),
	dataf => \spi0|spi|ALT_INV_data_out\(5),
	combout => \spi0|x_in\(5));

-- Location: MLABCELL_X84_Y18_N0
\spi0|cordic|x_in_c~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|x_in_c~10_combout\ = ( \spi0|cordic|core|x_out\(5) & ( \spi0|x_in\(5) ) ) # ( !\spi0|cordic|core|x_out\(5) & ( \spi0|x_in\(5) & ( (!\spi0|cordic|index_loop\(2) & (!\spi0|cordic|index_loop\(0) & (!\spi0|cordic|index_loop\(1) & 
-- !\spi0|cordic|index_loop\(3)))) ) ) ) # ( \spi0|cordic|core|x_out\(5) & ( !\spi0|x_in\(5) & ( (((\spi0|cordic|index_loop\(3)) # (\spi0|cordic|index_loop\(1))) # (\spi0|cordic|index_loop\(0))) # (\spi0|cordic|index_loop\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011111111111111110000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_index_loop\(2),
	datab => \spi0|cordic|ALT_INV_index_loop\(0),
	datac => \spi0|cordic|ALT_INV_index_loop\(1),
	datad => \spi0|cordic|ALT_INV_index_loop\(3),
	datae => \spi0|cordic|core|ALT_INV_x_out\(5),
	dataf => \spi0|ALT_INV_x_in\(5),
	combout => \spi0|cordic|x_in_c~10_combout\);

-- Location: MLABCELL_X84_Y18_N30
\spi0|cordic|x_in_c[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|x_in_c\(5) = ( \spi0|cordic|x_in_c~10_combout\ & ( (\spi0|cordic|state.LOAD_DATA~q\) # (\spi0|cordic|x_in_c\(5)) ) ) # ( !\spi0|cordic|x_in_c~10_combout\ & ( (\spi0|cordic|x_in_c\(5) & !\spi0|cordic|state.LOAD_DATA~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi0|cordic|ALT_INV_x_in_c\(5),
	datad => \spi0|cordic|ALT_INV_state.LOAD_DATA~q\,
	dataf => \spi0|cordic|ALT_INV_x_in_c~10_combout\,
	combout => \spi0|cordic|x_in_c\(5));

-- Location: LABCELL_X83_Y18_N12
\spi0|cordic|core|ShiftRight1~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|ShiftRight1~14_combout\ = ( \spi0|cordic|x_in_c\(6) & ( \spi0|cordic|x_in_c\(8) & ( ((!\spi0|cordic|index\(1) & (\spi0|cordic|x_in_c\(5))) # (\spi0|cordic|index\(1) & ((\spi0|cordic|x_in_c\(7))))) # (\spi0|cordic|index\(0)) ) ) ) # ( 
-- !\spi0|cordic|x_in_c\(6) & ( \spi0|cordic|x_in_c\(8) & ( (!\spi0|cordic|index\(0) & ((!\spi0|cordic|index\(1) & (\spi0|cordic|x_in_c\(5))) # (\spi0|cordic|index\(1) & ((\spi0|cordic|x_in_c\(7)))))) # (\spi0|cordic|index\(0) & (\spi0|cordic|index\(1))) ) ) 
-- ) # ( \spi0|cordic|x_in_c\(6) & ( !\spi0|cordic|x_in_c\(8) & ( (!\spi0|cordic|index\(0) & ((!\spi0|cordic|index\(1) & (\spi0|cordic|x_in_c\(5))) # (\spi0|cordic|index\(1) & ((\spi0|cordic|x_in_c\(7)))))) # (\spi0|cordic|index\(0) & 
-- (!\spi0|cordic|index\(1))) ) ) ) # ( !\spi0|cordic|x_in_c\(6) & ( !\spi0|cordic|x_in_c\(8) & ( (!\spi0|cordic|index\(0) & ((!\spi0|cordic|index\(1) & (\spi0|cordic|x_in_c\(5))) # (\spi0|cordic|index\(1) & ((\spi0|cordic|x_in_c\(7)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010010011000110111000011001001110110101110101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_index\(0),
	datab => \spi0|cordic|ALT_INV_index\(1),
	datac => \spi0|cordic|ALT_INV_x_in_c\(5),
	datad => \spi0|cordic|ALT_INV_x_in_c\(7),
	datae => \spi0|cordic|ALT_INV_x_in_c\(6),
	dataf => \spi0|cordic|ALT_INV_x_in_c\(8),
	combout => \spi0|cordic|core|ShiftRight1~14_combout\);

-- Location: LABCELL_X83_Y22_N12
\spi0|cordic|core|ShiftRight1~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|ShiftRight1~15_combout\ = ( \spi0|cordic|core|ShiftRight1~14_combout\ & ( \spi0|cordic|core|ShiftRight1~6_combout\ & ( (!\spi0|cordic|index\(3)) # ((!\spi0|cordic|index\(2) & (\spi0|cordic|core|ShiftRight1~1_combout\)) # 
-- (\spi0|cordic|index\(2) & ((\spi0|cordic|x_in_c\(15))))) ) ) ) # ( !\spi0|cordic|core|ShiftRight1~14_combout\ & ( \spi0|cordic|core|ShiftRight1~6_combout\ & ( (!\spi0|cordic|index\(2) & (\spi0|cordic|core|ShiftRight1~1_combout\ & 
-- ((\spi0|cordic|index\(3))))) # (\spi0|cordic|index\(2) & (((!\spi0|cordic|index\(3)) # (\spi0|cordic|x_in_c\(15))))) ) ) ) # ( \spi0|cordic|core|ShiftRight1~14_combout\ & ( !\spi0|cordic|core|ShiftRight1~6_combout\ & ( (!\spi0|cordic|index\(2) & 
-- (((!\spi0|cordic|index\(3))) # (\spi0|cordic|core|ShiftRight1~1_combout\))) # (\spi0|cordic|index\(2) & (((\spi0|cordic|x_in_c\(15) & \spi0|cordic|index\(3))))) ) ) ) # ( !\spi0|cordic|core|ShiftRight1~14_combout\ & ( 
-- !\spi0|cordic|core|ShiftRight1~6_combout\ & ( (\spi0|cordic|index\(3) & ((!\spi0|cordic|index\(2) & (\spi0|cordic|core|ShiftRight1~1_combout\)) # (\spi0|cordic|index\(2) & ((\spi0|cordic|x_in_c\(15)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000111110011000100011100110011010001111111111101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|core|ALT_INV_ShiftRight1~1_combout\,
	datab => \spi0|cordic|ALT_INV_index\(2),
	datac => \spi0|cordic|ALT_INV_x_in_c\(15),
	datad => \spi0|cordic|ALT_INV_index\(3),
	datae => \spi0|cordic|core|ALT_INV_ShiftRight1~14_combout\,
	dataf => \spi0|cordic|core|ALT_INV_ShiftRight1~6_combout\,
	combout => \spi0|cordic|core|ShiftRight1~15_combout\);

-- Location: LABCELL_X83_Y21_N21
\spi0|cordic|core|Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|Add1~37_sumout\ = SUM(( !\spi0|cordic|sgn~combout\ $ (!\spi0|cordic|core|ShiftRight1~13_combout\) ) + ( \spi0|cordic|y_in_c\(6) ) + ( \spi0|cordic|core|Add1~42\ ))
-- \spi0|cordic|core|Add1~38\ = CARRY(( !\spi0|cordic|sgn~combout\ $ (!\spi0|cordic|core|ShiftRight1~13_combout\) ) + ( \spi0|cordic|y_in_c\(6) ) + ( \spi0|cordic|core|Add1~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_y_in_c\(6),
	datab => \spi0|cordic|ALT_INV_sgn~combout\,
	datac => \spi0|cordic|core|ALT_INV_ShiftRight1~13_combout\,
	cin => \spi0|cordic|core|Add1~42\,
	sumout => \spi0|cordic|core|Add1~37_sumout\,
	cout => \spi0|cordic|core|Add1~38\);

-- Location: MLABCELL_X82_Y18_N30
\spi0|cordic|core|y_out[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|y_out\(6) = ( \spi0|cordic|core|Add1~37_sumout\ & ( (\spi0|cordic|core|state.EXECUTE~q\) # (\spi0|cordic|core|y_out\(6)) ) ) # ( !\spi0|cordic|core|Add1~37_sumout\ & ( (\spi0|cordic|core|y_out\(6) & !\spi0|cordic|core|state.EXECUTE~q\) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi0|cordic|core|ALT_INV_y_out\(6),
	datac => \spi0|cordic|core|ALT_INV_state.EXECUTE~q\,
	dataf => \spi0|cordic|core|ALT_INV_Add1~37_sumout\,
	combout => \spi0|cordic|core|y_out\(6));

-- Location: FF_X82_Y18_N7
\spi0|spi|data_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \spi0|spi|data_to_read\(6),
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => VCC,
	ena => \spi0|spi|Equal6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|data_out\(6));

-- Location: MLABCELL_X82_Y18_N48
\spi0|y_in[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|y_in\(6) = ( \spi0|y_in\(6) & ( (!\spi0|y_in[0]~0_combout\) # (\spi0|spi|data_out\(6)) ) ) # ( !\spi0|y_in\(6) & ( (\spi0|spi|data_out\(6) & \spi0|y_in[0]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|spi|ALT_INV_data_out\(6),
	datad => \spi0|ALT_INV_y_in[0]~0_combout\,
	dataf => \spi0|ALT_INV_y_in\(6),
	combout => \spi0|y_in\(6));

-- Location: MLABCELL_X82_Y18_N21
\spi0|cordic|y_in_c~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|y_in_c~9_combout\ = ( \spi0|cordic|core|y_out\(6) & ( \spi0|y_in\(6) ) ) # ( !\spi0|cordic|core|y_out\(6) & ( \spi0|y_in\(6) & ( (!\spi0|cordic|index_loop\(1) & (!\spi0|cordic|index_loop\(0) & (!\spi0|cordic|index_loop\(3) & 
-- !\spi0|cordic|index_loop\(2)))) ) ) ) # ( \spi0|cordic|core|y_out\(6) & ( !\spi0|y_in\(6) & ( (((\spi0|cordic|index_loop\(2)) # (\spi0|cordic|index_loop\(3))) # (\spi0|cordic|index_loop\(0))) # (\spi0|cordic|index_loop\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011111111111111110000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_index_loop\(1),
	datab => \spi0|cordic|ALT_INV_index_loop\(0),
	datac => \spi0|cordic|ALT_INV_index_loop\(3),
	datad => \spi0|cordic|ALT_INV_index_loop\(2),
	datae => \spi0|cordic|core|ALT_INV_y_out\(6),
	dataf => \spi0|ALT_INV_y_in\(6),
	combout => \spi0|cordic|y_in_c~9_combout\);

-- Location: MLABCELL_X82_Y18_N33
\spi0|cordic|y_in_c[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|y_in_c\(6) = ( \spi0|cordic|y_in_c~9_combout\ & ( (\spi0|cordic|state.LOAD_DATA~q\) # (\spi0|cordic|y_in_c\(6)) ) ) # ( !\spi0|cordic|y_in_c~9_combout\ & ( (\spi0|cordic|y_in_c\(6) & !\spi0|cordic|state.LOAD_DATA~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_y_in_c\(6),
	datad => \spi0|cordic|ALT_INV_state.LOAD_DATA~q\,
	dataf => \spi0|cordic|ALT_INV_y_in_c~9_combout\,
	combout => \spi0|cordic|y_in_c\(6));

-- Location: LABCELL_X80_Y18_N6
\spi0|cordic|core|ShiftRight0~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|ShiftRight0~12_combout\ = ( \spi0|cordic|y_in_c\(7) & ( \spi0|cordic|y_in_c\(8) & ( (!\spi0|cordic|index\(1) & (((\spi0|cordic|y_in_c\(6))) # (\spi0|cordic|index\(0)))) # (\spi0|cordic|index\(1) & ((!\spi0|cordic|index\(0)) # 
-- ((\spi0|cordic|y_in_c\(9))))) ) ) ) # ( !\spi0|cordic|y_in_c\(7) & ( \spi0|cordic|y_in_c\(8) & ( (!\spi0|cordic|index\(1) & (!\spi0|cordic|index\(0) & (\spi0|cordic|y_in_c\(6)))) # (\spi0|cordic|index\(1) & ((!\spi0|cordic|index\(0)) # 
-- ((\spi0|cordic|y_in_c\(9))))) ) ) ) # ( \spi0|cordic|y_in_c\(7) & ( !\spi0|cordic|y_in_c\(8) & ( (!\spi0|cordic|index\(1) & (((\spi0|cordic|y_in_c\(6))) # (\spi0|cordic|index\(0)))) # (\spi0|cordic|index\(1) & (\spi0|cordic|index\(0) & 
-- ((\spi0|cordic|y_in_c\(9))))) ) ) ) # ( !\spi0|cordic|y_in_c\(7) & ( !\spi0|cordic|y_in_c\(8) & ( (!\spi0|cordic|index\(1) & (!\spi0|cordic|index\(0) & (\spi0|cordic|y_in_c\(6)))) # (\spi0|cordic|index\(1) & (\spi0|cordic|index\(0) & 
-- ((\spi0|cordic|y_in_c\(9))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000011001001010100011101101001100010111010110111001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_index\(1),
	datab => \spi0|cordic|ALT_INV_index\(0),
	datac => \spi0|cordic|ALT_INV_y_in_c\(6),
	datad => \spi0|cordic|ALT_INV_y_in_c\(9),
	datae => \spi0|cordic|ALT_INV_y_in_c\(7),
	dataf => \spi0|cordic|ALT_INV_y_in_c\(8),
	combout => \spi0|cordic|core|ShiftRight0~12_combout\);

-- Location: LABCELL_X80_Y18_N42
\spi0|cordic|core|ShiftRight0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|ShiftRight0~13_combout\ = ( \spi0|cordic|core|ShiftRight0~4_combout\ & ( \spi0|cordic|core|ShiftRight0~12_combout\ & ( (!\spi0|cordic|index\(3)) # ((!\spi0|cordic|index\(2) & ((\spi0|cordic|core|ShiftRight0~0_combout\))) # 
-- (\spi0|cordic|index\(2) & (\spi0|cordic|y_in_c\(15)))) ) ) ) # ( !\spi0|cordic|core|ShiftRight0~4_combout\ & ( \spi0|cordic|core|ShiftRight0~12_combout\ & ( (!\spi0|cordic|index\(3) & (((!\spi0|cordic|index\(2))))) # (\spi0|cordic|index\(3) & 
-- ((!\spi0|cordic|index\(2) & ((\spi0|cordic|core|ShiftRight0~0_combout\))) # (\spi0|cordic|index\(2) & (\spi0|cordic|y_in_c\(15))))) ) ) ) # ( \spi0|cordic|core|ShiftRight0~4_combout\ & ( !\spi0|cordic|core|ShiftRight0~12_combout\ & ( 
-- (!\spi0|cordic|index\(3) & (((\spi0|cordic|index\(2))))) # (\spi0|cordic|index\(3) & ((!\spi0|cordic|index\(2) & ((\spi0|cordic|core|ShiftRight0~0_combout\))) # (\spi0|cordic|index\(2) & (\spi0|cordic|y_in_c\(15))))) ) ) ) # ( 
-- !\spi0|cordic|core|ShiftRight0~4_combout\ & ( !\spi0|cordic|core|ShiftRight0~12_combout\ & ( (\spi0|cordic|index\(3) & ((!\spi0|cordic|index\(2) & ((\spi0|cordic|core|ShiftRight0~0_combout\))) # (\spi0|cordic|index\(2) & (\spi0|cordic|y_in_c\(15))))) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100010001000000111101110111001111000100011100111111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_y_in_c\(15),
	datab => \spi0|cordic|ALT_INV_index\(3),
	datac => \spi0|cordic|core|ALT_INV_ShiftRight0~0_combout\,
	datad => \spi0|cordic|ALT_INV_index\(2),
	datae => \spi0|cordic|core|ALT_INV_ShiftRight0~4_combout\,
	dataf => \spi0|cordic|core|ALT_INV_ShiftRight0~12_combout\,
	combout => \spi0|cordic|core|ShiftRight0~13_combout\);

-- Location: LABCELL_X81_Y19_N21
\spi0|cordic|core|Add3~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|Add3~37_sumout\ = SUM(( !\spi0|cordic|sgn~combout\ $ (\spi0|cordic|core|ShiftRight0~13_combout\) ) + ( \spi0|cordic|x_in_c\(6) ) + ( \spi0|cordic|core|Add3~42\ ))
-- \spi0|cordic|core|Add3~38\ = CARRY(( !\spi0|cordic|sgn~combout\ $ (\spi0|cordic|core|ShiftRight0~13_combout\) ) + ( \spi0|cordic|x_in_c\(6) ) + ( \spi0|cordic|core|Add3~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000001111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi0|cordic|ALT_INV_x_in_c\(6),
	datac => \spi0|cordic|ALT_INV_sgn~combout\,
	datad => \spi0|cordic|core|ALT_INV_ShiftRight0~13_combout\,
	cin => \spi0|cordic|core|Add3~42\,
	sumout => \spi0|cordic|core|Add3~37_sumout\,
	cout => \spi0|cordic|core|Add3~38\);

-- Location: MLABCELL_X82_Y18_N45
\spi0|cordic|core|x_out[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|x_out\(6) = ( \spi0|cordic|core|Add3~37_sumout\ & ( (\spi0|cordic|core|state.EXECUTE~q\) # (\spi0|cordic|core|x_out\(6)) ) ) # ( !\spi0|cordic|core|Add3~37_sumout\ & ( (\spi0|cordic|core|x_out\(6) & !\spi0|cordic|core|state.EXECUTE~q\) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|cordic|core|ALT_INV_x_out\(6),
	datad => \spi0|cordic|core|ALT_INV_state.EXECUTE~q\,
	dataf => \spi0|cordic|core|ALT_INV_Add3~37_sumout\,
	combout => \spi0|cordic|core|x_out\(6));

-- Location: MLABCELL_X82_Y18_N39
\spi0|x_in[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|x_in\(6) = ( \spi0|spi|data_out[6]~DUPLICATE_q\ & ( (\spi0|x_in\(6)) # (\spi0|x_in[0]~0_combout\) ) ) # ( !\spi0|spi|data_out[6]~DUPLICATE_q\ & ( (!\spi0|x_in[0]~0_combout\ & \spi0|x_in\(6)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|ALT_INV_x_in[0]~0_combout\,
	datac => \spi0|ALT_INV_x_in\(6),
	dataf => \spi0|spi|ALT_INV_data_out[6]~DUPLICATE_q\,
	combout => \spi0|x_in\(6));

-- Location: MLABCELL_X82_Y18_N18
\spi0|cordic|x_in_c~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|x_in_c~9_combout\ = ( \spi0|cordic|core|x_out\(6) & ( \spi0|x_in\(6) ) ) # ( !\spi0|cordic|core|x_out\(6) & ( \spi0|x_in\(6) & ( (!\spi0|cordic|index_loop\(1) & (!\spi0|cordic|index_loop\(0) & (!\spi0|cordic|index_loop\(2) & 
-- !\spi0|cordic|index_loop\(3)))) ) ) ) # ( \spi0|cordic|core|x_out\(6) & ( !\spi0|x_in\(6) & ( (((\spi0|cordic|index_loop\(3)) # (\spi0|cordic|index_loop\(2))) # (\spi0|cordic|index_loop\(0))) # (\spi0|cordic|index_loop\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011111111111111110000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_index_loop\(1),
	datab => \spi0|cordic|ALT_INV_index_loop\(0),
	datac => \spi0|cordic|ALT_INV_index_loop\(2),
	datad => \spi0|cordic|ALT_INV_index_loop\(3),
	datae => \spi0|cordic|core|ALT_INV_x_out\(6),
	dataf => \spi0|ALT_INV_x_in\(6),
	combout => \spi0|cordic|x_in_c~9_combout\);

-- Location: MLABCELL_X82_Y18_N36
\spi0|cordic|x_in_c[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|x_in_c\(6) = ( \spi0|cordic|x_in_c~9_combout\ & ( (\spi0|cordic|state.LOAD_DATA~q\) # (\spi0|cordic|x_in_c\(6)) ) ) # ( !\spi0|cordic|x_in_c~9_combout\ & ( (\spi0|cordic|x_in_c\(6) & !\spi0|cordic|state.LOAD_DATA~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|cordic|ALT_INV_x_in_c\(6),
	datad => \spi0|cordic|ALT_INV_state.LOAD_DATA~q\,
	dataf => \spi0|cordic|ALT_INV_x_in_c~9_combout\,
	combout => \spi0|cordic|x_in_c\(6));

-- Location: LABCELL_X81_Y19_N24
\spi0|cordic|core|Add3~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|Add3~33_sumout\ = SUM(( !\spi0|cordic|sgn~combout\ $ (((!\spi0|cordic|index\(3) & ((\spi0|cordic|core|ShiftRight0~11_combout\))) # (\spi0|cordic|index\(3) & (\spi0|cordic|y_in_c\(15))))) ) + ( \spi0|cordic|x_in_c\(7) ) + ( 
-- \spi0|cordic|core|Add3~38\ ))
-- \spi0|cordic|core|Add3~34\ = CARRY(( !\spi0|cordic|sgn~combout\ $ (((!\spi0|cordic|index\(3) & ((\spi0|cordic|core|ShiftRight0~11_combout\))) # (\spi0|cordic|index\(3) & (\spi0|cordic|y_in_c\(15))))) ) + ( \spi0|cordic|x_in_c\(7) ) + ( 
-- \spi0|cordic|core|Add3~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001110000100101101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_y_in_c\(15),
	datab => \spi0|cordic|ALT_INV_index\(3),
	datac => \spi0|cordic|ALT_INV_sgn~combout\,
	datad => \spi0|cordic|core|ALT_INV_ShiftRight0~11_combout\,
	dataf => \spi0|cordic|ALT_INV_x_in_c\(7),
	cin => \spi0|cordic|core|Add3~38\,
	sumout => \spi0|cordic|core|Add3~33_sumout\,
	cout => \spi0|cordic|core|Add3~34\);

-- Location: MLABCELL_X84_Y20_N0
\spi0|cordic|core|x_out[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|x_out\(7) = ( \spi0|cordic|core|Add3~33_sumout\ & ( (\spi0|cordic|core|x_out\(7)) # (\spi0|cordic|core|state.EXECUTE~q\) ) ) # ( !\spi0|cordic|core|Add3~33_sumout\ & ( (!\spi0|cordic|core|state.EXECUTE~q\ & \spi0|cordic|core|x_out\(7)) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|cordic|core|ALT_INV_state.EXECUTE~q\,
	datad => \spi0|cordic|core|ALT_INV_x_out\(7),
	dataf => \spi0|cordic|core|ALT_INV_Add3~33_sumout\,
	combout => \spi0|cordic|core|x_out\(7));

-- Location: MLABCELL_X84_Y20_N33
\spi0|x_in[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|x_in\(7) = ( \spi0|spi|data_out\(7) & ( (\spi0|x_in[0]~0_combout\) # (\spi0|x_in\(7)) ) ) # ( !\spi0|spi|data_out\(7) & ( (\spi0|x_in\(7) & !\spi0|x_in[0]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|ALT_INV_x_in\(7),
	datad => \spi0|ALT_INV_x_in[0]~0_combout\,
	dataf => \spi0|spi|ALT_INV_data_out\(7),
	combout => \spi0|x_in\(7));

-- Location: MLABCELL_X84_Y20_N12
\spi0|cordic|x_in_c~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|x_in_c~8_combout\ = ( \spi0|cordic|core|x_out\(7) & ( \spi0|x_in\(7) ) ) # ( !\spi0|cordic|core|x_out\(7) & ( \spi0|x_in\(7) & ( (!\spi0|cordic|index_loop\(1) & (!\spi0|cordic|index_loop\(0) & (!\spi0|cordic|index_loop\(2) & 
-- !\spi0|cordic|index_loop\(3)))) ) ) ) # ( \spi0|cordic|core|x_out\(7) & ( !\spi0|x_in\(7) & ( (((\spi0|cordic|index_loop\(3)) # (\spi0|cordic|index_loop\(2))) # (\spi0|cordic|index_loop\(0))) # (\spi0|cordic|index_loop\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011111111111111110000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_index_loop\(1),
	datab => \spi0|cordic|ALT_INV_index_loop\(0),
	datac => \spi0|cordic|ALT_INV_index_loop\(2),
	datad => \spi0|cordic|ALT_INV_index_loop\(3),
	datae => \spi0|cordic|core|ALT_INV_x_out\(7),
	dataf => \spi0|ALT_INV_x_in\(7),
	combout => \spi0|cordic|x_in_c~8_combout\);

-- Location: MLABCELL_X84_Y20_N18
\spi0|cordic|x_in_c[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|x_in_c\(7) = ( \spi0|cordic|x_in_c~8_combout\ & ( (\spi0|cordic|state.LOAD_DATA~q\) # (\spi0|cordic|x_in_c\(7)) ) ) # ( !\spi0|cordic|x_in_c~8_combout\ & ( (\spi0|cordic|x_in_c\(7) & !\spi0|cordic|state.LOAD_DATA~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|cordic|ALT_INV_x_in_c\(7),
	datad => \spi0|cordic|ALT_INV_state.LOAD_DATA~q\,
	dataf => \spi0|cordic|ALT_INV_x_in_c~8_combout\,
	combout => \spi0|cordic|x_in_c\(7));

-- Location: LABCELL_X83_Y22_N0
\spi0|cordic|core|ShiftRight1~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|ShiftRight1~10_combout\ = ( \spi0|cordic|x_in_c\(10) & ( \spi0|cordic|index\(0) & ( (\spi0|cordic|x_in_c\(8)) # (\spi0|cordic|index\(1)) ) ) ) # ( !\spi0|cordic|x_in_c\(10) & ( \spi0|cordic|index\(0) & ( (!\spi0|cordic|index\(1) & 
-- \spi0|cordic|x_in_c\(8)) ) ) ) # ( \spi0|cordic|x_in_c\(10) & ( !\spi0|cordic|index\(0) & ( (!\spi0|cordic|index\(1) & (\spi0|cordic|x_in_c\(7))) # (\spi0|cordic|index\(1) & ((\spi0|cordic|x_in_c\(9)))) ) ) ) # ( !\spi0|cordic|x_in_c\(10) & ( 
-- !\spi0|cordic|index\(0) & ( (!\spi0|cordic|index\(1) & (\spi0|cordic|x_in_c\(7))) # (\spi0|cordic|index\(1) & ((\spi0|cordic|x_in_c\(9)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100100010001000100111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_index\(1),
	datab => \spi0|cordic|ALT_INV_x_in_c\(8),
	datac => \spi0|cordic|ALT_INV_x_in_c\(7),
	datad => \spi0|cordic|ALT_INV_x_in_c\(9),
	datae => \spi0|cordic|ALT_INV_x_in_c\(10),
	dataf => \spi0|cordic|ALT_INV_index\(0),
	combout => \spi0|cordic|core|ShiftRight1~10_combout\);

-- Location: LABCELL_X83_Y22_N45
\spi0|cordic|core|ShiftRight1~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|ShiftRight1~11_combout\ = ( \spi0|cordic|core|ShiftRight1~3_combout\ & ( \spi0|cordic|index\(2) ) ) # ( \spi0|cordic|core|ShiftRight1~3_combout\ & ( !\spi0|cordic|index\(2) & ( \spi0|cordic|core|ShiftRight1~10_combout\ ) ) ) # ( 
-- !\spi0|cordic|core|ShiftRight1~3_combout\ & ( !\spi0|cordic|index\(2) & ( \spi0|cordic|core|ShiftRight1~10_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \spi0|cordic|core|ALT_INV_ShiftRight1~10_combout\,
	datae => \spi0|cordic|core|ALT_INV_ShiftRight1~3_combout\,
	dataf => \spi0|cordic|ALT_INV_index\(2),
	combout => \spi0|cordic|core|ShiftRight1~11_combout\);

-- Location: LABCELL_X83_Y21_N24
\spi0|cordic|core|Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|Add1~33_sumout\ = SUM(( !\spi0|cordic|sgn~combout\ $ (((!\spi0|cordic|index\(3) & ((!\spi0|cordic|core|ShiftRight1~11_combout\))) # (\spi0|cordic|index\(3) & (!\spi0|cordic|x_in_c\(15))))) ) + ( \spi0|cordic|y_in_c\(7) ) + ( 
-- \spi0|cordic|core|Add1~38\ ))
-- \spi0|cordic|core|Add1~34\ = CARRY(( !\spi0|cordic|sgn~combout\ $ (((!\spi0|cordic|index\(3) & ((!\spi0|cordic|core|ShiftRight1~11_combout\))) # (\spi0|cordic|index\(3) & (!\spi0|cordic|x_in_c\(15))))) ) + ( \spi0|cordic|y_in_c\(7) ) + ( 
-- \spi0|cordic|core|Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011011011000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_x_in_c\(15),
	datab => \spi0|cordic|ALT_INV_sgn~combout\,
	datac => \spi0|cordic|ALT_INV_index\(3),
	datad => \spi0|cordic|core|ALT_INV_ShiftRight1~11_combout\,
	dataf => \spi0|cordic|ALT_INV_y_in_c\(7),
	cin => \spi0|cordic|core|Add1~38\,
	sumout => \spi0|cordic|core|Add1~33_sumout\,
	cout => \spi0|cordic|core|Add1~34\);

-- Location: MLABCELL_X84_Y20_N36
\spi0|cordic|core|y_out[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|y_out\(7) = ( \spi0|cordic|core|Add1~33_sumout\ & ( (\spi0|cordic|core|state.EXECUTE~q\) # (\spi0|cordic|core|y_out\(7)) ) ) # ( !\spi0|cordic|core|Add1~33_sumout\ & ( (\spi0|cordic|core|y_out\(7) & !\spi0|cordic|core|state.EXECUTE~q\) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|cordic|core|ALT_INV_y_out\(7),
	datad => \spi0|cordic|core|ALT_INV_state.EXECUTE~q\,
	dataf => \spi0|cordic|core|ALT_INV_Add1~33_sumout\,
	combout => \spi0|cordic|core|y_out\(7));

-- Location: MLABCELL_X84_Y20_N42
\spi0|y_in[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|y_in\(7) = ( \spi0|y_in\(7) & ( (!\spi0|y_in[0]~0_combout\) # (\spi0|spi|data_out\(7)) ) ) # ( !\spi0|y_in\(7) & ( (\spi0|spi|data_out\(7) & \spi0|y_in[0]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|spi|ALT_INV_data_out\(7),
	datad => \spi0|ALT_INV_y_in[0]~0_combout\,
	dataf => \spi0|ALT_INV_y_in\(7),
	combout => \spi0|y_in\(7));

-- Location: MLABCELL_X84_Y20_N24
\spi0|cordic|y_in_c~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|y_in_c~8_combout\ = ( \spi0|cordic|core|y_out\(7) & ( \spi0|y_in\(7) ) ) # ( !\spi0|cordic|core|y_out\(7) & ( \spi0|y_in\(7) & ( (!\spi0|cordic|index_loop\(2) & (!\spi0|cordic|index_loop\(0) & (!\spi0|cordic|index_loop\(1) & 
-- !\spi0|cordic|index_loop\(3)))) ) ) ) # ( \spi0|cordic|core|y_out\(7) & ( !\spi0|y_in\(7) & ( (((\spi0|cordic|index_loop\(3)) # (\spi0|cordic|index_loop\(1))) # (\spi0|cordic|index_loop\(0))) # (\spi0|cordic|index_loop\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011111111111111110000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_index_loop\(2),
	datab => \spi0|cordic|ALT_INV_index_loop\(0),
	datac => \spi0|cordic|ALT_INV_index_loop\(1),
	datad => \spi0|cordic|ALT_INV_index_loop\(3),
	datae => \spi0|cordic|core|ALT_INV_y_out\(7),
	dataf => \spi0|ALT_INV_y_in\(7),
	combout => \spi0|cordic|y_in_c~8_combout\);

-- Location: MLABCELL_X84_Y20_N3
\spi0|cordic|y_in_c[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|y_in_c\(7) = ( \spi0|cordic|y_in_c~8_combout\ & ( (\spi0|cordic|y_in_c\(7)) # (\spi0|cordic|state.LOAD_DATA~q\) ) ) # ( !\spi0|cordic|y_in_c~8_combout\ & ( (!\spi0|cordic|state.LOAD_DATA~q\ & \spi0|cordic|y_in_c\(7)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_state.LOAD_DATA~q\,
	datad => \spi0|cordic|ALT_INV_y_in_c\(7),
	dataf => \spi0|cordic|ALT_INV_y_in_c~8_combout\,
	combout => \spi0|cordic|y_in_c\(7));

-- Location: LABCELL_X80_Y21_N30
\spi0|cordic|core|ShiftRight0~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|ShiftRight0~10_combout\ = ( \spi0|cordic|y_in_c\(8) & ( \spi0|cordic|index\(0) & ( (!\spi0|cordic|index\(1)) # (\spi0|cordic|y_in_c\(10)) ) ) ) # ( !\spi0|cordic|y_in_c\(8) & ( \spi0|cordic|index\(0) & ( (\spi0|cordic|y_in_c\(10) & 
-- \spi0|cordic|index\(1)) ) ) ) # ( \spi0|cordic|y_in_c\(8) & ( !\spi0|cordic|index\(0) & ( (!\spi0|cordic|index\(1) & ((\spi0|cordic|y_in_c\(7)))) # (\spi0|cordic|index\(1) & (\spi0|cordic|y_in_c\(9))) ) ) ) # ( !\spi0|cordic|y_in_c\(8) & ( 
-- !\spi0|cordic|index\(0) & ( (!\spi0|cordic|index\(1) & ((\spi0|cordic|y_in_c\(7)))) # (\spi0|cordic|index\(1) & (\spi0|cordic|y_in_c\(9))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100000000001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_y_in_c\(9),
	datab => \spi0|cordic|ALT_INV_y_in_c\(10),
	datac => \spi0|cordic|ALT_INV_y_in_c\(7),
	datad => \spi0|cordic|ALT_INV_index\(1),
	datae => \spi0|cordic|ALT_INV_y_in_c\(8),
	dataf => \spi0|cordic|ALT_INV_index\(0),
	combout => \spi0|cordic|core|ShiftRight0~10_combout\);

-- Location: LABCELL_X80_Y19_N6
\spi0|cordic|core|ShiftRight0~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|ShiftRight0~11_combout\ = ( \spi0|cordic|core|ShiftRight0~10_combout\ & ( (!\spi0|cordic|index\(2)) # (\spi0|cordic|core|ShiftRight0~3_combout\) ) ) # ( !\spi0|cordic|core|ShiftRight0~10_combout\ & ( 
-- (\spi0|cordic|core|ShiftRight0~3_combout\ & \spi0|cordic|index\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|cordic|core|ALT_INV_ShiftRight0~3_combout\,
	datad => \spi0|cordic|ALT_INV_index\(2),
	dataf => \spi0|cordic|core|ALT_INV_ShiftRight0~10_combout\,
	combout => \spi0|cordic|core|ShiftRight0~11_combout\);

-- Location: LABCELL_X81_Y19_N27
\spi0|cordic|core|Add3~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|Add3~29_sumout\ = SUM(( !\spi0|cordic|sgn~combout\ $ (((!\spi0|cordic|index\(3) & ((\spi0|cordic|core|ShiftRight0~9_combout\))) # (\spi0|cordic|index\(3) & (\spi0|cordic|y_in_c\(15))))) ) + ( \spi0|cordic|x_in_c\(8) ) + ( 
-- \spi0|cordic|core|Add3~34\ ))
-- \spi0|cordic|core|Add3~30\ = CARRY(( !\spi0|cordic|sgn~combout\ $ (((!\spi0|cordic|index\(3) & ((\spi0|cordic|core|ShiftRight0~9_combout\))) # (\spi0|cordic|index\(3) & (\spi0|cordic|y_in_c\(15))))) ) + ( \spi0|cordic|x_in_c\(8) ) + ( 
-- \spi0|cordic|core|Add3~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001110000100101101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_y_in_c\(15),
	datab => \spi0|cordic|ALT_INV_index\(3),
	datac => \spi0|cordic|ALT_INV_sgn~combout\,
	datad => \spi0|cordic|core|ALT_INV_ShiftRight0~9_combout\,
	dataf => \spi0|cordic|ALT_INV_x_in_c\(8),
	cin => \spi0|cordic|core|Add3~34\,
	sumout => \spi0|cordic|core|Add3~29_sumout\,
	cout => \spi0|cordic|core|Add3~30\);

-- Location: MLABCELL_X82_Y22_N54
\spi0|cordic|core|x_out[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|x_out\(8) = ( \spi0|cordic|core|Add3~29_sumout\ & ( (\spi0|cordic|core|x_out\(8)) # (\spi0|cordic|core|state.EXECUTE~q\) ) ) # ( !\spi0|cordic|core|Add3~29_sumout\ & ( (!\spi0|cordic|core|state.EXECUTE~q\ & \spi0|cordic|core|x_out\(8)) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|cordic|core|ALT_INV_state.EXECUTE~q\,
	datad => \spi0|cordic|core|ALT_INV_x_out\(8),
	dataf => \spi0|cordic|core|ALT_INV_Add3~29_sumout\,
	combout => \spi0|cordic|core|x_out\(8));

-- Location: FF_X82_Y22_N40
\spi0|spi|data_out[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \spi0|spi|data_to_read\(8),
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => VCC,
	ena => \spi0|spi|Equal6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|data_out[8]~DUPLICATE_q\);

-- Location: LABCELL_X83_Y22_N30
\spi0|x_in[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|x_in\(8) = ( \spi0|spi|data_out[8]~DUPLICATE_q\ & ( (\spi0|x_in\(8)) # (\spi0|x_in[0]~0_combout\) ) ) # ( !\spi0|spi|data_out[8]~DUPLICATE_q\ & ( (!\spi0|x_in[0]~0_combout\ & \spi0|x_in\(8)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|ALT_INV_x_in[0]~0_combout\,
	datad => \spi0|ALT_INV_x_in\(8),
	dataf => \spi0|spi|ALT_INV_data_out[8]~DUPLICATE_q\,
	combout => \spi0|x_in\(8));

-- Location: MLABCELL_X82_Y22_N21
\spi0|cordic|x_in_c~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|x_in_c~7_combout\ = ( \spi0|cordic|index_loop\(0) & ( \spi0|x_in\(8) & ( \spi0|cordic|core|x_out\(8) ) ) ) # ( !\spi0|cordic|index_loop\(0) & ( \spi0|x_in\(8) & ( ((!\spi0|cordic|index_loop\(3) & (!\spi0|cordic|index_loop\(1) & 
-- !\spi0|cordic|index_loop\(2)))) # (\spi0|cordic|core|x_out\(8)) ) ) ) # ( \spi0|cordic|index_loop\(0) & ( !\spi0|x_in\(8) & ( \spi0|cordic|core|x_out\(8) ) ) ) # ( !\spi0|cordic|index_loop\(0) & ( !\spi0|x_in\(8) & ( (\spi0|cordic|core|x_out\(8) & 
-- (((\spi0|cordic|index_loop\(2)) # (\spi0|cordic|index_loop\(1))) # (\spi0|cordic|index_loop\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100110011001100110011001110110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_index_loop\(3),
	datab => \spi0|cordic|core|ALT_INV_x_out\(8),
	datac => \spi0|cordic|ALT_INV_index_loop\(1),
	datad => \spi0|cordic|ALT_INV_index_loop\(2),
	datae => \spi0|cordic|ALT_INV_index_loop\(0),
	dataf => \spi0|ALT_INV_x_in\(8),
	combout => \spi0|cordic|x_in_c~7_combout\);

-- Location: MLABCELL_X82_Y22_N9
\spi0|cordic|x_in_c[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|x_in_c\(8) = ( \spi0|cordic|x_in_c~7_combout\ & ( (\spi0|cordic|state.LOAD_DATA~q\) # (\spi0|cordic|x_in_c\(8)) ) ) # ( !\spi0|cordic|x_in_c~7_combout\ & ( (\spi0|cordic|x_in_c\(8) & !\spi0|cordic|state.LOAD_DATA~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi0|cordic|ALT_INV_x_in_c\(8),
	datad => \spi0|cordic|ALT_INV_state.LOAD_DATA~q\,
	dataf => \spi0|cordic|ALT_INV_x_in_c~7_combout\,
	combout => \spi0|cordic|x_in_c\(8));

-- Location: MLABCELL_X82_Y21_N6
\spi0|cordic|core|ShiftRight1~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|ShiftRight1~8_combout\ = ( \spi0|cordic|x_in_c\(10) & ( \spi0|cordic|index\(0) & ( (!\spi0|cordic|index\(1) & ((\spi0|cordic|x_in_c\(9)))) # (\spi0|cordic|index\(1) & (\spi0|cordic|x_in_c\(11))) ) ) ) # ( !\spi0|cordic|x_in_c\(10) & ( 
-- \spi0|cordic|index\(0) & ( (!\spi0|cordic|index\(1) & ((\spi0|cordic|x_in_c\(9)))) # (\spi0|cordic|index\(1) & (\spi0|cordic|x_in_c\(11))) ) ) ) # ( \spi0|cordic|x_in_c\(10) & ( !\spi0|cordic|index\(0) & ( (\spi0|cordic|x_in_c\(8)) # 
-- (\spi0|cordic|index\(1)) ) ) ) # ( !\spi0|cordic|x_in_c\(10) & ( !\spi0|cordic|index\(0) & ( (!\spi0|cordic|index\(1) & \spi0|cordic|x_in_c\(8)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010010111110101111100010001101110110001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_index\(1),
	datab => \spi0|cordic|ALT_INV_x_in_c\(11),
	datac => \spi0|cordic|ALT_INV_x_in_c\(8),
	datad => \spi0|cordic|ALT_INV_x_in_c\(9),
	datae => \spi0|cordic|ALT_INV_x_in_c\(10),
	dataf => \spi0|cordic|ALT_INV_index\(0),
	combout => \spi0|cordic|core|ShiftRight1~8_combout\);

-- Location: MLABCELL_X82_Y21_N45
\spi0|cordic|core|ShiftRight1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|ShiftRight1~9_combout\ = ( \spi0|cordic|core|ShiftRight1~8_combout\ & ( (!\spi0|cordic|index\(2)) # (\spi0|cordic|core|ShiftRight1~2_combout\) ) ) # ( !\spi0|cordic|core|ShiftRight1~8_combout\ & ( (\spi0|cordic|index\(2) & 
-- \spi0|cordic|core|ShiftRight1~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|cordic|ALT_INV_index\(2),
	datad => \spi0|cordic|core|ALT_INV_ShiftRight1~2_combout\,
	dataf => \spi0|cordic|core|ALT_INV_ShiftRight1~8_combout\,
	combout => \spi0|cordic|core|ShiftRight1~9_combout\);

-- Location: LABCELL_X83_Y21_N27
\spi0|cordic|core|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|Add1~29_sumout\ = SUM(( !\spi0|cordic|sgn~combout\ $ (((!\spi0|cordic|index\(3) & ((!\spi0|cordic|core|ShiftRight1~9_combout\))) # (\spi0|cordic|index\(3) & (!\spi0|cordic|x_in_c\(15))))) ) + ( \spi0|cordic|y_in_c\(8) ) + ( 
-- \spi0|cordic|core|Add1~34\ ))
-- \spi0|cordic|core|Add1~30\ = CARRY(( !\spi0|cordic|sgn~combout\ $ (((!\spi0|cordic|index\(3) & ((!\spi0|cordic|core|ShiftRight1~9_combout\))) # (\spi0|cordic|index\(3) & (!\spi0|cordic|x_in_c\(15))))) ) + ( \spi0|cordic|y_in_c\(8) ) + ( 
-- \spi0|cordic|core|Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011011011000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_x_in_c\(15),
	datab => \spi0|cordic|ALT_INV_sgn~combout\,
	datac => \spi0|cordic|ALT_INV_index\(3),
	datad => \spi0|cordic|core|ALT_INV_ShiftRight1~9_combout\,
	dataf => \spi0|cordic|ALT_INV_y_in_c\(8),
	cin => \spi0|cordic|core|Add1~34\,
	sumout => \spi0|cordic|core|Add1~29_sumout\,
	cout => \spi0|cordic|core|Add1~30\);

-- Location: MLABCELL_X82_Y22_N6
\spi0|cordic|core|y_out[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|y_out\(8) = ( \spi0|cordic|core|Add1~29_sumout\ & ( (\spi0|cordic|core|y_out\(8)) # (\spi0|cordic|core|state.EXECUTE~q\) ) ) # ( !\spi0|cordic|core|Add1~29_sumout\ & ( (!\spi0|cordic|core|state.EXECUTE~q\ & \spi0|cordic|core|y_out\(8)) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|cordic|core|ALT_INV_state.EXECUTE~q\,
	datad => \spi0|cordic|core|ALT_INV_y_out\(8),
	dataf => \spi0|cordic|core|ALT_INV_Add1~29_sumout\,
	combout => \spi0|cordic|core|y_out\(8));

-- Location: MLABCELL_X82_Y22_N12
\spi0|y_in[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|y_in\(8) = ( \spi0|spi|data_out\(8) & ( (\spi0|y_in[0]~0_combout\) # (\spi0|y_in\(8)) ) ) # ( !\spi0|spi|data_out\(8) & ( (\spi0|y_in\(8) & !\spi0|y_in[0]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|ALT_INV_y_in\(8),
	datad => \spi0|ALT_INV_y_in[0]~0_combout\,
	dataf => \spi0|spi|ALT_INV_data_out\(8),
	combout => \spi0|y_in\(8));

-- Location: MLABCELL_X82_Y22_N36
\spi0|cordic|y_in_c~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|y_in_c~7_combout\ = ( \spi0|cordic|index_loop\(3) & ( \spi0|y_in\(8) & ( \spi0|cordic|core|y_out\(8) ) ) ) # ( !\spi0|cordic|index_loop\(3) & ( \spi0|y_in\(8) & ( ((!\spi0|cordic|index_loop\(2) & (!\spi0|cordic|index_loop\(0) & 
-- !\spi0|cordic|index_loop\(1)))) # (\spi0|cordic|core|y_out\(8)) ) ) ) # ( \spi0|cordic|index_loop\(3) & ( !\spi0|y_in\(8) & ( \spi0|cordic|core|y_out\(8) ) ) ) # ( !\spi0|cordic|index_loop\(3) & ( !\spi0|y_in\(8) & ( (\spi0|cordic|core|y_out\(8) & 
-- (((\spi0|cordic|index_loop\(1)) # (\spi0|cordic|index_loop\(0))) # (\spi0|cordic|index_loop\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010101010101010101010101010111010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|core|ALT_INV_y_out\(8),
	datab => \spi0|cordic|ALT_INV_index_loop\(2),
	datac => \spi0|cordic|ALT_INV_index_loop\(0),
	datad => \spi0|cordic|ALT_INV_index_loop\(1),
	datae => \spi0|cordic|ALT_INV_index_loop\(3),
	dataf => \spi0|ALT_INV_y_in\(8),
	combout => \spi0|cordic|y_in_c~7_combout\);

-- Location: MLABCELL_X82_Y22_N15
\spi0|cordic|y_in_c[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|y_in_c\(8) = ( \spi0|cordic|y_in_c~7_combout\ & ( (\spi0|cordic|state.LOAD_DATA~q\) # (\spi0|cordic|y_in_c\(8)) ) ) # ( !\spi0|cordic|y_in_c~7_combout\ & ( (\spi0|cordic|y_in_c\(8) & !\spi0|cordic|state.LOAD_DATA~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi0|cordic|ALT_INV_y_in_c\(8),
	datad => \spi0|cordic|ALT_INV_state.LOAD_DATA~q\,
	dataf => \spi0|cordic|ALT_INV_y_in_c~7_combout\,
	combout => \spi0|cordic|y_in_c\(8));

-- Location: LABCELL_X81_Y18_N42
\spi0|cordic|core|ShiftRight0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|ShiftRight0~8_combout\ = ( \spi0|cordic|y_in_c\(8) & ( \spi0|cordic|y_in_c\(10) & ( (!\spi0|cordic|index\(0)) # ((!\spi0|cordic|index\(1) & (\spi0|cordic|y_in_c\(9))) # (\spi0|cordic|index\(1) & ((\spi0|cordic|y_in_c\(11))))) ) ) ) # ( 
-- !\spi0|cordic|y_in_c\(8) & ( \spi0|cordic|y_in_c\(10) & ( (!\spi0|cordic|index\(1) & (\spi0|cordic|y_in_c\(9) & (\spi0|cordic|index\(0)))) # (\spi0|cordic|index\(1) & (((!\spi0|cordic|index\(0)) # (\spi0|cordic|y_in_c\(11))))) ) ) ) # ( 
-- \spi0|cordic|y_in_c\(8) & ( !\spi0|cordic|y_in_c\(10) & ( (!\spi0|cordic|index\(1) & (((!\spi0|cordic|index\(0))) # (\spi0|cordic|y_in_c\(9)))) # (\spi0|cordic|index\(1) & (((\spi0|cordic|index\(0) & \spi0|cordic|y_in_c\(11))))) ) ) ) # ( 
-- !\spi0|cordic|y_in_c\(8) & ( !\spi0|cordic|y_in_c\(10) & ( (\spi0|cordic|index\(0) & ((!\spi0|cordic|index\(1) & (\spi0|cordic|y_in_c\(9))) # (\spi0|cordic|index\(1) & ((\spi0|cordic|y_in_c\(11)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000111110001001100011100110100001101111111010011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_y_in_c\(9),
	datab => \spi0|cordic|ALT_INV_index\(1),
	datac => \spi0|cordic|ALT_INV_index\(0),
	datad => \spi0|cordic|ALT_INV_y_in_c\(11),
	datae => \spi0|cordic|ALT_INV_y_in_c\(8),
	dataf => \spi0|cordic|ALT_INV_y_in_c\(10),
	combout => \spi0|cordic|core|ShiftRight0~8_combout\);

-- Location: LABCELL_X81_Y18_N39
\spi0|cordic|core|ShiftRight0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|ShiftRight0~9_combout\ = ( \spi0|cordic|core|ShiftRight0~8_combout\ & ( (!\spi0|cordic|index\(2)) # (\spi0|cordic|core|ShiftRight0~2_combout\) ) ) # ( !\spi0|cordic|core|ShiftRight0~8_combout\ & ( (\spi0|cordic|index\(2) & 
-- \spi0|cordic|core|ShiftRight0~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|cordic|ALT_INV_index\(2),
	datad => \spi0|cordic|core|ALT_INV_ShiftRight0~2_combout\,
	dataf => \spi0|cordic|core|ALT_INV_ShiftRight0~8_combout\,
	combout => \spi0|cordic|core|ShiftRight0~9_combout\);

-- Location: LABCELL_X81_Y19_N30
\spi0|cordic|core|Add3~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|Add3~25_sumout\ = SUM(( !\spi0|cordic|sgn~combout\ $ (((!\spi0|cordic|index\(3) & ((\spi0|cordic|core|ShiftRight0~7_combout\))) # (\spi0|cordic|index\(3) & (\spi0|cordic|y_in_c\(15))))) ) + ( \spi0|cordic|x_in_c\(9) ) + ( 
-- \spi0|cordic|core|Add3~30\ ))
-- \spi0|cordic|core|Add3~26\ = CARRY(( !\spi0|cordic|sgn~combout\ $ (((!\spi0|cordic|index\(3) & ((\spi0|cordic|core|ShiftRight0~7_combout\))) # (\spi0|cordic|index\(3) & (\spi0|cordic|y_in_c\(15))))) ) + ( \spi0|cordic|x_in_c\(9) ) + ( 
-- \spi0|cordic|core|Add3~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001110000101001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_index\(3),
	datab => \spi0|cordic|ALT_INV_y_in_c\(15),
	datac => \spi0|cordic|ALT_INV_sgn~combout\,
	datad => \spi0|cordic|core|ALT_INV_ShiftRight0~7_combout\,
	dataf => \spi0|cordic|ALT_INV_x_in_c\(9),
	cin => \spi0|cordic|core|Add3~30\,
	sumout => \spi0|cordic|core|Add3~25_sumout\,
	cout => \spi0|cordic|core|Add3~26\);

-- Location: LABCELL_X80_Y21_N21
\spi0|cordic|core|x_out[9]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|x_out\(9) = ( \spi0|cordic|core|Add3~25_sumout\ & ( (\spi0|cordic|core|x_out\(9)) # (\spi0|cordic|core|state.EXECUTE~q\) ) ) # ( !\spi0|cordic|core|Add3~25_sumout\ & ( (!\spi0|cordic|core|state.EXECUTE~q\ & \spi0|cordic|core|x_out\(9)) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|core|ALT_INV_state.EXECUTE~q\,
	datad => \spi0|cordic|core|ALT_INV_x_out\(9),
	dataf => \spi0|cordic|core|ALT_INV_Add3~25_sumout\,
	combout => \spi0|cordic|core|x_out\(9));

-- Location: LABCELL_X80_Y21_N12
\spi0|x_in[9]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|x_in\(9) = ( \spi0|spi|data_out[9]~DUPLICATE_q\ & ( (\spi0|x_in[0]~0_combout\) # (\spi0|x_in\(9)) ) ) # ( !\spi0|spi|data_out[9]~DUPLICATE_q\ & ( (\spi0|x_in\(9) & !\spi0|x_in[0]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi0|ALT_INV_x_in\(9),
	datad => \spi0|ALT_INV_x_in[0]~0_combout\,
	dataf => \spi0|spi|ALT_INV_data_out[9]~DUPLICATE_q\,
	combout => \spi0|x_in\(9));

-- Location: LABCELL_X80_Y21_N54
\spi0|cordic|x_in_c~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|x_in_c~6_combout\ = ( \spi0|cordic|core|x_out\(9) & ( \spi0|x_in\(9) ) ) # ( !\spi0|cordic|core|x_out\(9) & ( \spi0|x_in\(9) & ( (!\spi0|cordic|index_loop\(3) & (!\spi0|cordic|index_loop\(0) & (!\spi0|cordic|index_loop\(1) & 
-- !\spi0|cordic|index_loop\(2)))) ) ) ) # ( \spi0|cordic|core|x_out\(9) & ( !\spi0|x_in\(9) & ( (((\spi0|cordic|index_loop\(2)) # (\spi0|cordic|index_loop\(1))) # (\spi0|cordic|index_loop\(0))) # (\spi0|cordic|index_loop\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011111111111111110000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_index_loop\(3),
	datab => \spi0|cordic|ALT_INV_index_loop\(0),
	datac => \spi0|cordic|ALT_INV_index_loop\(1),
	datad => \spi0|cordic|ALT_INV_index_loop\(2),
	datae => \spi0|cordic|core|ALT_INV_x_out\(9),
	dataf => \spi0|ALT_INV_x_in\(9),
	combout => \spi0|cordic|x_in_c~6_combout\);

-- Location: LABCELL_X80_Y21_N18
\spi0|cordic|x_in_c[9]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|x_in_c\(9) = ( \spi0|cordic|x_in_c\(9) & ( (!\spi0|cordic|state.LOAD_DATA~q\) # (\spi0|cordic|x_in_c~6_combout\) ) ) # ( !\spi0|cordic|x_in_c\(9) & ( (\spi0|cordic|state.LOAD_DATA~q\ & \spi0|cordic|x_in_c~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111001100111111111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi0|cordic|ALT_INV_state.LOAD_DATA~q\,
	datad => \spi0|cordic|ALT_INV_x_in_c~6_combout\,
	dataf => \spi0|cordic|ALT_INV_x_in_c\(9),
	combout => \spi0|cordic|x_in_c\(9));

-- Location: LABCELL_X83_Y18_N36
\spi0|cordic|core|ShiftRight1~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|ShiftRight1~6_combout\ = ( \spi0|cordic|x_in_c\(9) & ( \spi0|cordic|x_in_c\(10) & ( (!\spi0|cordic|index\(1)) # ((!\spi0|cordic|index\(0) & ((\spi0|cordic|x_in_c\(11)))) # (\spi0|cordic|index\(0) & (\spi0|cordic|x_in_c\(12)))) ) ) ) # ( 
-- !\spi0|cordic|x_in_c\(9) & ( \spi0|cordic|x_in_c\(10) & ( (!\spi0|cordic|index\(0) & (\spi0|cordic|index\(1) & ((\spi0|cordic|x_in_c\(11))))) # (\spi0|cordic|index\(0) & ((!\spi0|cordic|index\(1)) # ((\spi0|cordic|x_in_c\(12))))) ) ) ) # ( 
-- \spi0|cordic|x_in_c\(9) & ( !\spi0|cordic|x_in_c\(10) & ( (!\spi0|cordic|index\(0) & ((!\spi0|cordic|index\(1)) # ((\spi0|cordic|x_in_c\(11))))) # (\spi0|cordic|index\(0) & (\spi0|cordic|index\(1) & (\spi0|cordic|x_in_c\(12)))) ) ) ) # ( 
-- !\spi0|cordic|x_in_c\(9) & ( !\spi0|cordic|x_in_c\(10) & ( (\spi0|cordic|index\(1) & ((!\spi0|cordic|index\(0) & ((\spi0|cordic|x_in_c\(11)))) # (\spi0|cordic|index\(0) & (\spi0|cordic|x_in_c\(12))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011100010011010101101000101011001111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_index\(0),
	datab => \spi0|cordic|ALT_INV_index\(1),
	datac => \spi0|cordic|ALT_INV_x_in_c\(12),
	datad => \spi0|cordic|ALT_INV_x_in_c\(11),
	datae => \spi0|cordic|ALT_INV_x_in_c\(9),
	dataf => \spi0|cordic|ALT_INV_x_in_c\(10),
	combout => \spi0|cordic|core|ShiftRight1~6_combout\);

-- Location: LABCELL_X83_Y18_N51
\spi0|cordic|core|ShiftRight1~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|ShiftRight1~7_combout\ = ( \spi0|cordic|core|ShiftRight1~1_combout\ & ( (\spi0|cordic|core|ShiftRight1~6_combout\) # (\spi0|cordic|index\(2)) ) ) # ( !\spi0|cordic|core|ShiftRight1~1_combout\ & ( (!\spi0|cordic|index\(2) & 
-- \spi0|cordic|core|ShiftRight1~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|cordic|ALT_INV_index\(2),
	datad => \spi0|cordic|core|ALT_INV_ShiftRight1~6_combout\,
	dataf => \spi0|cordic|core|ALT_INV_ShiftRight1~1_combout\,
	combout => \spi0|cordic|core|ShiftRight1~7_combout\);

-- Location: LABCELL_X83_Y21_N30
\spi0|cordic|core|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|Add1~25_sumout\ = SUM(( !\spi0|cordic|sgn~combout\ $ (((!\spi0|cordic|index\(3) & ((!\spi0|cordic|core|ShiftRight1~7_combout\))) # (\spi0|cordic|index\(3) & (!\spi0|cordic|x_in_c\(15))))) ) + ( \spi0|cordic|y_in_c\(9) ) + ( 
-- \spi0|cordic|core|Add1~30\ ))
-- \spi0|cordic|core|Add1~26\ = CARRY(( !\spi0|cordic|sgn~combout\ $ (((!\spi0|cordic|index\(3) & ((!\spi0|cordic|core|ShiftRight1~7_combout\))) # (\spi0|cordic|index\(3) & (!\spi0|cordic|x_in_c\(15))))) ) + ( \spi0|cordic|y_in_c\(9) ) + ( 
-- \spi0|cordic|core|Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000001111010110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_index\(3),
	datab => \spi0|cordic|ALT_INV_x_in_c\(15),
	datac => \spi0|cordic|ALT_INV_sgn~combout\,
	datad => \spi0|cordic|core|ALT_INV_ShiftRight1~7_combout\,
	dataf => \spi0|cordic|ALT_INV_y_in_c\(9),
	cin => \spi0|cordic|core|Add1~30\,
	sumout => \spi0|cordic|core|Add1~25_sumout\,
	cout => \spi0|cordic|core|Add1~26\);

-- Location: LABCELL_X80_Y21_N0
\spi0|cordic|core|y_out[9]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|y_out\(9) = ( \spi0|cordic|core|Add1~25_sumout\ & ( (\spi0|cordic|core|y_out\(9)) # (\spi0|cordic|core|state.EXECUTE~q\) ) ) # ( !\spi0|cordic|core|Add1~25_sumout\ & ( (!\spi0|cordic|core|state.EXECUTE~q\ & \spi0|cordic|core|y_out\(9)) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|cordic|core|ALT_INV_state.EXECUTE~q\,
	datad => \spi0|cordic|core|ALT_INV_y_out\(9),
	dataf => \spi0|cordic|core|ALT_INV_Add1~25_sumout\,
	combout => \spi0|cordic|core|y_out\(9));

-- Location: LABCELL_X80_Y21_N48
\spi0|y_in[9]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|y_in\(9) = ( \spi0|y_in\(9) & ( (!\spi0|y_in[0]~0_combout\) # (\spi0|spi|data_out[9]~DUPLICATE_q\) ) ) # ( !\spi0|y_in\(9) & ( (\spi0|spi|data_out[9]~DUPLICATE_q\ & \spi0|y_in[0]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|spi|ALT_INV_data_out[9]~DUPLICATE_q\,
	datad => \spi0|ALT_INV_y_in[0]~0_combout\,
	dataf => \spi0|ALT_INV_y_in\(9),
	combout => \spi0|y_in\(9));

-- Location: LABCELL_X80_Y21_N42
\spi0|cordic|y_in_c~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|y_in_c~6_combout\ = ( \spi0|cordic|index_loop\(3) & ( \spi0|y_in\(9) & ( \spi0|cordic|core|y_out\(9) ) ) ) # ( !\spi0|cordic|index_loop\(3) & ( \spi0|y_in\(9) & ( ((!\spi0|cordic|index_loop\(1) & (!\spi0|cordic|index_loop\(0) & 
-- !\spi0|cordic|index_loop\(2)))) # (\spi0|cordic|core|y_out\(9)) ) ) ) # ( \spi0|cordic|index_loop\(3) & ( !\spi0|y_in\(9) & ( \spi0|cordic|core|y_out\(9) ) ) ) # ( !\spi0|cordic|index_loop\(3) & ( !\spi0|y_in\(9) & ( (\spi0|cordic|core|y_out\(9) & 
-- (((\spi0|cordic|index_loop\(2)) # (\spi0|cordic|index_loop\(0))) # (\spi0|cordic|index_loop\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100110011001100110011001110110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_index_loop\(1),
	datab => \spi0|cordic|core|ALT_INV_y_out\(9),
	datac => \spi0|cordic|ALT_INV_index_loop\(0),
	datad => \spi0|cordic|ALT_INV_index_loop\(2),
	datae => \spi0|cordic|ALT_INV_index_loop\(3),
	dataf => \spi0|ALT_INV_y_in\(9),
	combout => \spi0|cordic|y_in_c~6_combout\);

-- Location: LABCELL_X80_Y21_N51
\spi0|cordic|y_in_c[9]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|y_in_c\(9) = ( \spi0|cordic|y_in_c~6_combout\ & ( (\spi0|cordic|state.LOAD_DATA~q\) # (\spi0|cordic|y_in_c\(9)) ) ) # ( !\spi0|cordic|y_in_c~6_combout\ & ( (\spi0|cordic|y_in_c\(9) & !\spi0|cordic|state.LOAD_DATA~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_y_in_c\(9),
	datac => \spi0|cordic|ALT_INV_state.LOAD_DATA~q\,
	dataf => \spi0|cordic|ALT_INV_y_in_c~6_combout\,
	combout => \spi0|cordic|y_in_c\(9));

-- Location: LABCELL_X81_Y18_N18
\spi0|cordic|core|ShiftRight0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|ShiftRight0~6_combout\ = ( \spi0|cordic|y_in_c\(11) & ( \spi0|cordic|y_in_c\(10) & ( (!\spi0|cordic|index\(0) & (((\spi0|cordic|y_in_c\(9))) # (\spi0|cordic|index\(1)))) # (\spi0|cordic|index\(0) & ((!\spi0|cordic|index\(1)) # 
-- ((\spi0|cordic|y_in_c\(12))))) ) ) ) # ( !\spi0|cordic|y_in_c\(11) & ( \spi0|cordic|y_in_c\(10) & ( (!\spi0|cordic|index\(0) & (!\spi0|cordic|index\(1) & (\spi0|cordic|y_in_c\(9)))) # (\spi0|cordic|index\(0) & ((!\spi0|cordic|index\(1)) # 
-- ((\spi0|cordic|y_in_c\(12))))) ) ) ) # ( \spi0|cordic|y_in_c\(11) & ( !\spi0|cordic|y_in_c\(10) & ( (!\spi0|cordic|index\(0) & (((\spi0|cordic|y_in_c\(9))) # (\spi0|cordic|index\(1)))) # (\spi0|cordic|index\(0) & (\spi0|cordic|index\(1) & 
-- ((\spi0|cordic|y_in_c\(12))))) ) ) ) # ( !\spi0|cordic|y_in_c\(11) & ( !\spi0|cordic|y_in_c\(10) & ( (!\spi0|cordic|index\(0) & (!\spi0|cordic|index\(1) & (\spi0|cordic|y_in_c\(9)))) # (\spi0|cordic|index\(0) & (\spi0|cordic|index\(1) & 
-- ((\spi0|cordic|y_in_c\(12))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000011001001010100011101101001100010111010110111001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_index\(0),
	datab => \spi0|cordic|ALT_INV_index\(1),
	datac => \spi0|cordic|ALT_INV_y_in_c\(9),
	datad => \spi0|cordic|ALT_INV_y_in_c\(12),
	datae => \spi0|cordic|ALT_INV_y_in_c\(11),
	dataf => \spi0|cordic|ALT_INV_y_in_c\(10),
	combout => \spi0|cordic|core|ShiftRight0~6_combout\);

-- Location: LABCELL_X80_Y18_N12
\spi0|cordic|core|ShiftRight0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|ShiftRight0~7_combout\ = ( \spi0|cordic|core|ShiftRight0~6_combout\ & ( (!\spi0|cordic|index\(2)) # (\spi0|cordic|core|ShiftRight0~1_combout\) ) ) # ( !\spi0|cordic|core|ShiftRight0~6_combout\ & ( (\spi0|cordic|index\(2) & 
-- \spi0|cordic|core|ShiftRight0~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|cordic|ALT_INV_index\(2),
	datad => \spi0|cordic|core|ALT_INV_ShiftRight0~1_combout\,
	dataf => \spi0|cordic|core|ALT_INV_ShiftRight0~6_combout\,
	combout => \spi0|cordic|core|ShiftRight0~7_combout\);

-- Location: LABCELL_X81_Y19_N33
\spi0|cordic|core|Add3~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|Add3~21_sumout\ = SUM(( !\spi0|cordic|sgn~combout\ $ (((!\spi0|cordic|index\(3) & ((\spi0|cordic|core|ShiftRight0~5_combout\))) # (\spi0|cordic|index\(3) & (\spi0|cordic|y_in_c\(15))))) ) + ( \spi0|cordic|x_in_c\(10) ) + ( 
-- \spi0|cordic|core|Add3~26\ ))
-- \spi0|cordic|core|Add3~22\ = CARRY(( !\spi0|cordic|sgn~combout\ $ (((!\spi0|cordic|index\(3) & ((\spi0|cordic|core|ShiftRight0~5_combout\))) # (\spi0|cordic|index\(3) & (\spi0|cordic|y_in_c\(15))))) ) + ( \spi0|cordic|x_in_c\(10) ) + ( 
-- \spi0|cordic|core|Add3~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001110000101001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_index\(3),
	datab => \spi0|cordic|ALT_INV_y_in_c\(15),
	datac => \spi0|cordic|ALT_INV_sgn~combout\,
	datad => \spi0|cordic|core|ALT_INV_ShiftRight0~5_combout\,
	dataf => \spi0|cordic|ALT_INV_x_in_c\(10),
	cin => \spi0|cordic|core|Add3~26\,
	sumout => \spi0|cordic|core|Add3~21_sumout\,
	cout => \spi0|cordic|core|Add3~22\);

-- Location: LABCELL_X79_Y21_N27
\spi0|cordic|core|x_out[10]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|x_out\(10) = ( \spi0|cordic|core|Add3~21_sumout\ & ( (\spi0|cordic|core|x_out\(10)) # (\spi0|cordic|core|state.EXECUTE~q\) ) ) # ( !\spi0|cordic|core|Add3~21_sumout\ & ( (!\spi0|cordic|core|state.EXECUTE~q\ & 
-- \spi0|cordic|core|x_out\(10)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|core|ALT_INV_state.EXECUTE~q\,
	datad => \spi0|cordic|core|ALT_INV_x_out\(10),
	dataf => \spi0|cordic|core|ALT_INV_Add3~21_sumout\,
	combout => \spi0|cordic|core|x_out\(10));

-- Location: LABCELL_X79_Y21_N6
\spi0|x_in[10]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|x_in\(10) = ( \spi0|spi|data_out\(10) & ( (\spi0|x_in[0]~0_combout\) # (\spi0|x_in\(10)) ) ) # ( !\spi0|spi|data_out\(10) & ( (\spi0|x_in\(10) & !\spi0|x_in[0]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi0|ALT_INV_x_in\(10),
	datad => \spi0|ALT_INV_x_in[0]~0_combout\,
	dataf => \spi0|spi|ALT_INV_data_out\(10),
	combout => \spi0|x_in\(10));

-- Location: LABCELL_X79_Y21_N18
\spi0|cordic|x_in_c~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|x_in_c~5_combout\ = ( \spi0|cordic|core|x_out\(10) & ( \spi0|x_in\(10) ) ) # ( !\spi0|cordic|core|x_out\(10) & ( \spi0|x_in\(10) & ( (!\spi0|cordic|index_loop\(0) & (!\spi0|cordic|index_loop\(1) & (!\spi0|cordic|index_loop\(2) & 
-- !\spi0|cordic|index_loop\(3)))) ) ) ) # ( \spi0|cordic|core|x_out\(10) & ( !\spi0|x_in\(10) & ( (((\spi0|cordic|index_loop\(3)) # (\spi0|cordic|index_loop\(2))) # (\spi0|cordic|index_loop\(1))) # (\spi0|cordic|index_loop\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011111111111111110000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_index_loop\(0),
	datab => \spi0|cordic|ALT_INV_index_loop\(1),
	datac => \spi0|cordic|ALT_INV_index_loop\(2),
	datad => \spi0|cordic|ALT_INV_index_loop\(3),
	datae => \spi0|cordic|core|ALT_INV_x_out\(10),
	dataf => \spi0|ALT_INV_x_in\(10),
	combout => \spi0|cordic|x_in_c~5_combout\);

-- Location: LABCELL_X79_Y21_N24
\spi0|cordic|x_in_c[10]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|x_in_c\(10) = ( \spi0|cordic|x_in_c~5_combout\ & ( (\spi0|cordic|state.LOAD_DATA~q\) # (\spi0|cordic|x_in_c\(10)) ) ) # ( !\spi0|cordic|x_in_c~5_combout\ & ( (\spi0|cordic|x_in_c\(10) & !\spi0|cordic|state.LOAD_DATA~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|cordic|ALT_INV_x_in_c\(10),
	datad => \spi0|cordic|ALT_INV_state.LOAD_DATA~q\,
	dataf => \spi0|cordic|ALT_INV_x_in_c~5_combout\,
	combout => \spi0|cordic|x_in_c\(10));

-- Location: LABCELL_X83_Y18_N24
\spi0|cordic|core|ShiftRight1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|ShiftRight1~4_combout\ = ( \spi0|cordic|x_in_c\(13) & ( \spi0|cordic|x_in_c\(10) & ( (!\spi0|cordic|index\(0) & (((!\spi0|cordic|index\(1))) # (\spi0|cordic|x_in_c\(12)))) # (\spi0|cordic|index\(0) & (((\spi0|cordic|index\(1)) # 
-- (\spi0|cordic|x_in_c\(11))))) ) ) ) # ( !\spi0|cordic|x_in_c\(13) & ( \spi0|cordic|x_in_c\(10) & ( (!\spi0|cordic|index\(0) & (((!\spi0|cordic|index\(1))) # (\spi0|cordic|x_in_c\(12)))) # (\spi0|cordic|index\(0) & (((\spi0|cordic|x_in_c\(11) & 
-- !\spi0|cordic|index\(1))))) ) ) ) # ( \spi0|cordic|x_in_c\(13) & ( !\spi0|cordic|x_in_c\(10) & ( (!\spi0|cordic|index\(0) & (\spi0|cordic|x_in_c\(12) & ((\spi0|cordic|index\(1))))) # (\spi0|cordic|index\(0) & (((\spi0|cordic|index\(1)) # 
-- (\spi0|cordic|x_in_c\(11))))) ) ) ) # ( !\spi0|cordic|x_in_c\(13) & ( !\spi0|cordic|x_in_c\(10) & ( (!\spi0|cordic|index\(0) & (\spi0|cordic|x_in_c\(12) & ((\spi0|cordic|index\(1))))) # (\spi0|cordic|index\(0) & (((\spi0|cordic|x_in_c\(11) & 
-- !\spi0|cordic|index\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101010000000000110101111111110011010100001111001101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_x_in_c\(12),
	datab => \spi0|cordic|ALT_INV_x_in_c\(11),
	datac => \spi0|cordic|ALT_INV_index\(0),
	datad => \spi0|cordic|ALT_INV_index\(1),
	datae => \spi0|cordic|ALT_INV_x_in_c\(13),
	dataf => \spi0|cordic|ALT_INV_x_in_c\(10),
	combout => \spi0|cordic|core|ShiftRight1~4_combout\);

-- Location: LABCELL_X83_Y18_N9
\spi0|cordic|core|ShiftRight1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|ShiftRight1~5_combout\ = ( \spi0|cordic|core|ShiftRight1~4_combout\ & ( (!\spi0|cordic|index\(2)) # (\spi0|cordic|core|ShiftRight1~0_combout\) ) ) # ( !\spi0|cordic|core|ShiftRight1~4_combout\ & ( (\spi0|cordic|index\(2) & 
-- \spi0|cordic|core|ShiftRight1~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_index\(2),
	datac => \spi0|cordic|core|ALT_INV_ShiftRight1~0_combout\,
	dataf => \spi0|cordic|core|ALT_INV_ShiftRight1~4_combout\,
	combout => \spi0|cordic|core|ShiftRight1~5_combout\);

-- Location: LABCELL_X83_Y21_N33
\spi0|cordic|core|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|Add1~21_sumout\ = SUM(( !\spi0|cordic|sgn~combout\ $ (((!\spi0|cordic|index\(3) & ((!\spi0|cordic|core|ShiftRight1~5_combout\))) # (\spi0|cordic|index\(3) & (!\spi0|cordic|x_in_c\(15))))) ) + ( \spi0|cordic|y_in_c\(10) ) + ( 
-- \spi0|cordic|core|Add1~26\ ))
-- \spi0|cordic|core|Add1~22\ = CARRY(( !\spi0|cordic|sgn~combout\ $ (((!\spi0|cordic|index\(3) & ((!\spi0|cordic|core|ShiftRight1~5_combout\))) # (\spi0|cordic|index\(3) & (!\spi0|cordic|x_in_c\(15))))) ) + ( \spi0|cordic|y_in_c\(10) ) + ( 
-- \spi0|cordic|core|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000001111010110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_index\(3),
	datab => \spi0|cordic|ALT_INV_x_in_c\(15),
	datac => \spi0|cordic|ALT_INV_sgn~combout\,
	datad => \spi0|cordic|core|ALT_INV_ShiftRight1~5_combout\,
	dataf => \spi0|cordic|ALT_INV_y_in_c\(10),
	cin => \spi0|cordic|core|Add1~26\,
	sumout => \spi0|cordic|core|Add1~21_sumout\,
	cout => \spi0|cordic|core|Add1~22\);

-- Location: LABCELL_X79_Y21_N54
\spi0|cordic|core|y_out[10]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|y_out\(10) = ( \spi0|cordic|core|Add1~21_sumout\ & ( (\spi0|cordic|core|y_out\(10)) # (\spi0|cordic|core|state.EXECUTE~q\) ) ) # ( !\spi0|cordic|core|Add1~21_sumout\ & ( (!\spi0|cordic|core|state.EXECUTE~q\ & 
-- \spi0|cordic|core|y_out\(10)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|cordic|core|ALT_INV_state.EXECUTE~q\,
	datad => \spi0|cordic|core|ALT_INV_y_out\(10),
	dataf => \spi0|cordic|core|ALT_INV_Add1~21_sumout\,
	combout => \spi0|cordic|core|y_out\(10));

-- Location: LABCELL_X79_Y21_N12
\spi0|y_in[10]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|y_in\(10) = ( \spi0|y_in\(10) & ( (!\spi0|y_in[0]~0_combout\) # (\spi0|spi|data_out\(10)) ) ) # ( !\spi0|y_in\(10) & ( (\spi0|spi|data_out\(10) & \spi0|y_in[0]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|spi|ALT_INV_data_out\(10),
	datad => \spi0|ALT_INV_y_in[0]~0_combout\,
	dataf => \spi0|ALT_INV_y_in\(10),
	combout => \spi0|y_in\(10));

-- Location: LABCELL_X79_Y21_N30
\spi0|cordic|y_in_c~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|y_in_c~5_combout\ = ( \spi0|cordic|index_loop\(0) & ( \spi0|y_in\(10) & ( \spi0|cordic|core|y_out\(10) ) ) ) # ( !\spi0|cordic|index_loop\(0) & ( \spi0|y_in\(10) & ( ((!\spi0|cordic|index_loop\(1) & (!\spi0|cordic|index_loop\(2) & 
-- !\spi0|cordic|index_loop\(3)))) # (\spi0|cordic|core|y_out\(10)) ) ) ) # ( \spi0|cordic|index_loop\(0) & ( !\spi0|y_in\(10) & ( \spi0|cordic|core|y_out\(10) ) ) ) # ( !\spi0|cordic|index_loop\(0) & ( !\spi0|y_in\(10) & ( (\spi0|cordic|core|y_out\(10) & 
-- (((\spi0|cordic|index_loop\(3)) # (\spi0|cordic|index_loop\(2))) # (\spi0|cordic|index_loop\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100110011001100110011001110110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_index_loop\(1),
	datab => \spi0|cordic|core|ALT_INV_y_out\(10),
	datac => \spi0|cordic|ALT_INV_index_loop\(2),
	datad => \spi0|cordic|ALT_INV_index_loop\(3),
	datae => \spi0|cordic|ALT_INV_index_loop\(0),
	dataf => \spi0|ALT_INV_y_in\(10),
	combout => \spi0|cordic|y_in_c~5_combout\);

-- Location: LABCELL_X79_Y21_N15
\spi0|cordic|y_in_c[10]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|y_in_c\(10) = ( \spi0|cordic|y_in_c~5_combout\ & ( (\spi0|cordic|state.LOAD_DATA~q\) # (\spi0|cordic|y_in_c\(10)) ) ) # ( !\spi0|cordic|y_in_c~5_combout\ & ( (\spi0|cordic|y_in_c\(10) & !\spi0|cordic|state.LOAD_DATA~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|cordic|ALT_INV_y_in_c\(10),
	datad => \spi0|cordic|ALT_INV_state.LOAD_DATA~q\,
	dataf => \spi0|cordic|ALT_INV_y_in_c~5_combout\,
	combout => \spi0|cordic|y_in_c\(10));

-- Location: LABCELL_X80_Y18_N0
\spi0|cordic|core|ShiftRight0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|ShiftRight0~4_combout\ = ( \spi0|cordic|y_in_c\(11) & ( \spi0|cordic|y_in_c\(10) & ( (!\spi0|cordic|index\(1)) # ((!\spi0|cordic|index\(0) & (\spi0|cordic|y_in_c\(12))) # (\spi0|cordic|index\(0) & ((\spi0|cordic|y_in_c\(13))))) ) ) ) # ( 
-- !\spi0|cordic|y_in_c\(11) & ( \spi0|cordic|y_in_c\(10) & ( (!\spi0|cordic|index\(1) & (((!\spi0|cordic|index\(0))))) # (\spi0|cordic|index\(1) & ((!\spi0|cordic|index\(0) & (\spi0|cordic|y_in_c\(12))) # (\spi0|cordic|index\(0) & 
-- ((\spi0|cordic|y_in_c\(13)))))) ) ) ) # ( \spi0|cordic|y_in_c\(11) & ( !\spi0|cordic|y_in_c\(10) & ( (!\spi0|cordic|index\(1) & (((\spi0|cordic|index\(0))))) # (\spi0|cordic|index\(1) & ((!\spi0|cordic|index\(0) & (\spi0|cordic|y_in_c\(12))) # 
-- (\spi0|cordic|index\(0) & ((\spi0|cordic|y_in_c\(13)))))) ) ) ) # ( !\spi0|cordic|y_in_c\(11) & ( !\spi0|cordic|y_in_c\(10) & ( (\spi0|cordic|index\(1) & ((!\spi0|cordic|index\(0) & (\spi0|cordic|y_in_c\(12))) # (\spi0|cordic|index\(0) & 
-- ((\spi0|cordic|y_in_c\(13)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000101000100011010111110111011000001011011101110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_index\(1),
	datab => \spi0|cordic|ALT_INV_y_in_c\(12),
	datac => \spi0|cordic|ALT_INV_y_in_c\(13),
	datad => \spi0|cordic|ALT_INV_index\(0),
	datae => \spi0|cordic|ALT_INV_y_in_c\(11),
	dataf => \spi0|cordic|ALT_INV_y_in_c\(10),
	combout => \spi0|cordic|core|ShiftRight0~4_combout\);

-- Location: LABCELL_X79_Y18_N24
\spi0|cordic|core|ShiftRight0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|ShiftRight0~5_combout\ = ( \spi0|cordic|core|ShiftRight0~4_combout\ & ( \spi0|cordic|core|ShiftRight0~0_combout\ ) ) # ( !\spi0|cordic|core|ShiftRight0~4_combout\ & ( \spi0|cordic|core|ShiftRight0~0_combout\ & ( \spi0|cordic|index\(2) ) 
-- ) ) # ( \spi0|cordic|core|ShiftRight0~4_combout\ & ( !\spi0|cordic|core|ShiftRight0~0_combout\ & ( !\spi0|cordic|index\(2) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \spi0|cordic|ALT_INV_index\(2),
	datae => \spi0|cordic|core|ALT_INV_ShiftRight0~4_combout\,
	dataf => \spi0|cordic|core|ALT_INV_ShiftRight0~0_combout\,
	combout => \spi0|cordic|core|ShiftRight0~5_combout\);

-- Location: LABCELL_X81_Y19_N36
\spi0|cordic|core|Add3~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|Add3~17_sumout\ = SUM(( !\spi0|cordic|sgn~combout\ $ (((!\spi0|cordic|core|Mux1~0_combout\ & (\spi0|cordic|y_in_c\(15))) # (\spi0|cordic|core|Mux1~0_combout\ & ((\spi0|cordic|core|ShiftRight0~3_combout\))))) ) + ( 
-- \spi0|cordic|x_in_c\(11) ) + ( \spi0|cordic|core|Add3~22\ ))
-- \spi0|cordic|core|Add3~18\ = CARRY(( !\spi0|cordic|sgn~combout\ $ (((!\spi0|cordic|core|Mux1~0_combout\ & (\spi0|cordic|y_in_c\(15))) # (\spi0|cordic|core|Mux1~0_combout\ & ((\spi0|cordic|core|ShiftRight0~3_combout\))))) ) + ( \spi0|cordic|x_in_c\(11) ) + 
-- ( \spi0|cordic|core|Add3~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001101001010000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|core|ALT_INV_Mux1~0_combout\,
	datab => \spi0|cordic|ALT_INV_y_in_c\(15),
	datac => \spi0|cordic|ALT_INV_sgn~combout\,
	datad => \spi0|cordic|core|ALT_INV_ShiftRight0~3_combout\,
	dataf => \spi0|cordic|ALT_INV_x_in_c\(11),
	cin => \spi0|cordic|core|Add3~22\,
	sumout => \spi0|cordic|core|Add3~17_sumout\,
	cout => \spi0|cordic|core|Add3~18\);

-- Location: LABCELL_X80_Y19_N0
\spi0|cordic|core|x_out[11]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|x_out\(11) = ( \spi0|cordic|core|state.EXECUTE~q\ & ( \spi0|cordic|core|Add3~17_sumout\ ) ) # ( !\spi0|cordic|core|state.EXECUTE~q\ & ( \spi0|cordic|core|Add3~17_sumout\ & ( \spi0|cordic|core|x_out\(11) ) ) ) # ( 
-- !\spi0|cordic|core|state.EXECUTE~q\ & ( !\spi0|cordic|core|Add3~17_sumout\ & ( \spi0|cordic|core|x_out\(11) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|cordic|core|ALT_INV_x_out\(11),
	datae => \spi0|cordic|core|ALT_INV_state.EXECUTE~q\,
	dataf => \spi0|cordic|core|ALT_INV_Add3~17_sumout\,
	combout => \spi0|cordic|core|x_out\(11));

-- Location: MLABCELL_X82_Y21_N33
\spi0|x_in[11]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|x_in\(11) = ( \spi0|spi|data_out[11]~DUPLICATE_q\ & ( (\spi0|x_in[0]~0_combout\) # (\spi0|x_in\(11)) ) ) # ( !\spi0|spi|data_out[11]~DUPLICATE_q\ & ( (\spi0|x_in\(11) & !\spi0|x_in[0]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|ALT_INV_x_in\(11),
	datac => \spi0|ALT_INV_x_in[0]~0_combout\,
	dataf => \spi0|spi|ALT_INV_data_out[11]~DUPLICATE_q\,
	combout => \spi0|x_in\(11));

-- Location: MLABCELL_X82_Y21_N12
\spi0|cordic|x_in_c~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|x_in_c~4_combout\ = ( \spi0|cordic|core|x_out\(11) & ( \spi0|x_in\(11) ) ) # ( !\spi0|cordic|core|x_out\(11) & ( \spi0|x_in\(11) & ( (!\spi0|cordic|index_loop\(3) & (!\spi0|cordic|index_loop\(0) & (!\spi0|cordic|index_loop\(1) & 
-- !\spi0|cordic|index_loop\(2)))) ) ) ) # ( \spi0|cordic|core|x_out\(11) & ( !\spi0|x_in\(11) & ( (((\spi0|cordic|index_loop\(2)) # (\spi0|cordic|index_loop\(1))) # (\spi0|cordic|index_loop\(0))) # (\spi0|cordic|index_loop\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011111111111111110000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_index_loop\(3),
	datab => \spi0|cordic|ALT_INV_index_loop\(0),
	datac => \spi0|cordic|ALT_INV_index_loop\(1),
	datad => \spi0|cordic|ALT_INV_index_loop\(2),
	datae => \spi0|cordic|core|ALT_INV_x_out\(11),
	dataf => \spi0|ALT_INV_x_in\(11),
	combout => \spi0|cordic|x_in_c~4_combout\);

-- Location: MLABCELL_X82_Y21_N30
\spi0|cordic|x_in_c[11]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|x_in_c\(11) = ( \spi0|cordic|x_in_c~4_combout\ & ( (\spi0|cordic|state.LOAD_DATA~q\) # (\spi0|cordic|x_in_c\(11)) ) ) # ( !\spi0|cordic|x_in_c~4_combout\ & ( (\spi0|cordic|x_in_c\(11) & !\spi0|cordic|state.LOAD_DATA~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi0|cordic|ALT_INV_x_in_c\(11),
	datad => \spi0|cordic|ALT_INV_state.LOAD_DATA~q\,
	dataf => \spi0|cordic|ALT_INV_x_in_c~4_combout\,
	combout => \spi0|cordic|x_in_c\(11));

-- Location: LABCELL_X83_Y22_N36
\spi0|cordic|core|ShiftRight1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|ShiftRight1~3_combout\ = ( \spi0|cordic|index\(0) & ( \spi0|cordic|x_in_c\(12) & ( (!\spi0|cordic|index\(1)) # (\spi0|cordic|x_in_c\(14)) ) ) ) # ( !\spi0|cordic|index\(0) & ( \spi0|cordic|x_in_c\(12) & ( (!\spi0|cordic|index\(1) & 
-- ((\spi0|cordic|x_in_c\(11)))) # (\spi0|cordic|index\(1) & (\spi0|cordic|x_in_c\(13))) ) ) ) # ( \spi0|cordic|index\(0) & ( !\spi0|cordic|x_in_c\(12) & ( (\spi0|cordic|x_in_c\(14) & \spi0|cordic|index\(1)) ) ) ) # ( !\spi0|cordic|index\(0) & ( 
-- !\spi0|cordic|x_in_c\(12) & ( (!\spi0|cordic|index\(1) & ((\spi0|cordic|x_in_c\(11)))) # (\spi0|cordic|index\(1) & (\spi0|cordic|x_in_c\(13))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000001010000010100000011111100111111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_x_in_c\(14),
	datab => \spi0|cordic|ALT_INV_x_in_c\(13),
	datac => \spi0|cordic|ALT_INV_index\(1),
	datad => \spi0|cordic|ALT_INV_x_in_c\(11),
	datae => \spi0|cordic|ALT_INV_index\(0),
	dataf => \spi0|cordic|ALT_INV_x_in_c\(12),
	combout => \spi0|cordic|core|ShiftRight1~3_combout\);

-- Location: LABCELL_X83_Y21_N36
\spi0|cordic|core|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|Add1~17_sumout\ = SUM(( \spi0|cordic|y_in_c\(11) ) + ( !\spi0|cordic|sgn~combout\ $ (((!\spi0|cordic|core|Mux1~0_combout\ & (!\spi0|cordic|x_in_c\(15))) # (\spi0|cordic|core|Mux1~0_combout\ & 
-- ((!\spi0|cordic|core|ShiftRight1~3_combout\))))) ) + ( \spi0|cordic|core|Add1~22\ ))
-- \spi0|cordic|core|Add1~18\ = CARRY(( \spi0|cordic|y_in_c\(11) ) + ( !\spi0|cordic|sgn~combout\ $ (((!\spi0|cordic|core|Mux1~0_combout\ & (!\spi0|cordic|x_in_c\(15))) # (\spi0|cordic|core|Mux1~0_combout\ & ((!\spi0|cordic|core|ShiftRight1~3_combout\))))) ) 
-- + ( \spi0|cordic|core|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100111001001001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_x_in_c\(15),
	datab => \spi0|cordic|ALT_INV_sgn~combout\,
	datac => \spi0|cordic|core|ALT_INV_Mux1~0_combout\,
	datad => \spi0|cordic|ALT_INV_y_in_c\(11),
	dataf => \spi0|cordic|core|ALT_INV_ShiftRight1~3_combout\,
	cin => \spi0|cordic|core|Add1~22\,
	sumout => \spi0|cordic|core|Add1~17_sumout\,
	cout => \spi0|cordic|core|Add1~18\);

-- Location: LABCELL_X80_Y19_N36
\spi0|cordic|core|y_out[11]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|y_out\(11) = ( \spi0|cordic|core|Add1~17_sumout\ & ( (\spi0|cordic|core|state.EXECUTE~q\) # (\spi0|cordic|core|y_out\(11)) ) ) # ( !\spi0|cordic|core|Add1~17_sumout\ & ( (\spi0|cordic|core|y_out\(11) & 
-- !\spi0|cordic|core|state.EXECUTE~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|cordic|core|ALT_INV_y_out\(11),
	datad => \spi0|cordic|core|ALT_INV_state.EXECUTE~q\,
	dataf => \spi0|cordic|core|ALT_INV_Add1~17_sumout\,
	combout => \spi0|cordic|core|y_out\(11));

-- Location: LABCELL_X80_Y19_N42
\spi0|y_in[11]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|y_in\(11) = ( \spi0|spi|data_out\(11) & ( (\spi0|y_in[0]~0_combout\) # (\spi0|y_in\(11)) ) ) # ( !\spi0|spi|data_out\(11) & ( (\spi0|y_in\(11) & !\spi0|y_in[0]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi0|ALT_INV_y_in\(11),
	datad => \spi0|ALT_INV_y_in[0]~0_combout\,
	dataf => \spi0|spi|ALT_INV_data_out\(11),
	combout => \spi0|y_in\(11));

-- Location: LABCELL_X80_Y19_N12
\spi0|cordic|y_in_c~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|y_in_c~4_combout\ = ( \spi0|cordic|core|y_out\(11) & ( \spi0|y_in\(11) ) ) # ( !\spi0|cordic|core|y_out\(11) & ( \spi0|y_in\(11) & ( (!\spi0|cordic|index_loop\(3) & (!\spi0|cordic|index_loop\(2) & (!\spi0|cordic|index_loop\(1) & 
-- !\spi0|cordic|index_loop\(0)))) ) ) ) # ( \spi0|cordic|core|y_out\(11) & ( !\spi0|y_in\(11) & ( (((\spi0|cordic|index_loop\(0)) # (\spi0|cordic|index_loop\(1))) # (\spi0|cordic|index_loop\(2))) # (\spi0|cordic|index_loop\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011111111111111110000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_index_loop\(3),
	datab => \spi0|cordic|ALT_INV_index_loop\(2),
	datac => \spi0|cordic|ALT_INV_index_loop\(1),
	datad => \spi0|cordic|ALT_INV_index_loop\(0),
	datae => \spi0|cordic|core|ALT_INV_y_out\(11),
	dataf => \spi0|ALT_INV_y_in\(11),
	combout => \spi0|cordic|y_in_c~4_combout\);

-- Location: LABCELL_X80_Y19_N39
\spi0|cordic|y_in_c[11]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|y_in_c\(11) = ( \spi0|cordic|y_in_c~4_combout\ & ( (\spi0|cordic|state.LOAD_DATA~q\) # (\spi0|cordic|y_in_c\(11)) ) ) # ( !\spi0|cordic|y_in_c~4_combout\ & ( (\spi0|cordic|y_in_c\(11) & !\spi0|cordic|state.LOAD_DATA~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi0|cordic|ALT_INV_y_in_c\(11),
	datac => \spi0|cordic|ALT_INV_state.LOAD_DATA~q\,
	dataf => \spi0|cordic|ALT_INV_y_in_c~4_combout\,
	combout => \spi0|cordic|y_in_c\(11));

-- Location: LABCELL_X83_Y21_N39
\spi0|cordic|core|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|Add1~13_sumout\ = SUM(( !\spi0|cordic|sgn~combout\ $ (((!\spi0|cordic|core|Mux1~0_combout\ & (!\spi0|cordic|x_in_c\(15))) # (\spi0|cordic|core|Mux1~0_combout\ & ((!\spi0|cordic|core|ShiftRight1~2_combout\))))) ) + ( 
-- \spi0|cordic|y_in_c\(12) ) + ( \spi0|cordic|core|Add1~18\ ))
-- \spi0|cordic|core|Add1~14\ = CARRY(( !\spi0|cordic|sgn~combout\ $ (((!\spi0|cordic|core|Mux1~0_combout\ & (!\spi0|cordic|x_in_c\(15))) # (\spi0|cordic|core|Mux1~0_combout\ & ((!\spi0|cordic|core|ShiftRight1~2_combout\))))) ) + ( \spi0|cordic|y_in_c\(12) ) 
-- + ( \spi0|cordic|core|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000110001101101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_x_in_c\(15),
	datab => \spi0|cordic|ALT_INV_sgn~combout\,
	datac => \spi0|cordic|core|ALT_INV_Mux1~0_combout\,
	datad => \spi0|cordic|core|ALT_INV_ShiftRight1~2_combout\,
	dataf => \spi0|cordic|ALT_INV_y_in_c\(12),
	cin => \spi0|cordic|core|Add1~18\,
	sumout => \spi0|cordic|core|Add1~13_sumout\,
	cout => \spi0|cordic|core|Add1~14\);

-- Location: LABCELL_X80_Y22_N27
\spi0|cordic|core|y_out[12]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|y_out\(12) = ( \spi0|cordic|core|Add1~13_sumout\ & ( (\spi0|cordic|core|state.EXECUTE~q\) # (\spi0|cordic|core|y_out\(12)) ) ) # ( !\spi0|cordic|core|Add1~13_sumout\ & ( (\spi0|cordic|core|y_out\(12) & 
-- !\spi0|cordic|core|state.EXECUTE~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|core|ALT_INV_y_out\(12),
	datad => \spi0|cordic|core|ALT_INV_state.EXECUTE~q\,
	dataf => \spi0|cordic|core|ALT_INV_Add1~13_sumout\,
	combout => \spi0|cordic|core|y_out\(12));

-- Location: LABCELL_X80_Y22_N15
\spi0|y_in[12]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|y_in\(12) = ( \spi0|y_in\(12) & ( (!\spi0|y_in[0]~0_combout\) # (\spi0|spi|data_out[12]~DUPLICATE_q\) ) ) # ( !\spi0|y_in\(12) & ( (\spi0|spi|data_out[12]~DUPLICATE_q\ & \spi0|y_in[0]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|spi|ALT_INV_data_out[12]~DUPLICATE_q\,
	datad => \spi0|ALT_INV_y_in[0]~0_combout\,
	dataf => \spi0|ALT_INV_y_in\(12),
	combout => \spi0|y_in\(12));

-- Location: LABCELL_X80_Y22_N33
\spi0|cordic|y_in_c~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|y_in_c~3_combout\ = ( \spi0|cordic|index_loop\(0) & ( \spi0|y_in\(12) & ( \spi0|cordic|core|y_out\(12) ) ) ) # ( !\spi0|cordic|index_loop\(0) & ( \spi0|y_in\(12) & ( ((!\spi0|cordic|index_loop\(2) & (!\spi0|cordic|index_loop\(1) & 
-- !\spi0|cordic|index_loop\(3)))) # (\spi0|cordic|core|y_out\(12)) ) ) ) # ( \spi0|cordic|index_loop\(0) & ( !\spi0|y_in\(12) & ( \spi0|cordic|core|y_out\(12) ) ) ) # ( !\spi0|cordic|index_loop\(0) & ( !\spi0|y_in\(12) & ( (\spi0|cordic|core|y_out\(12) & 
-- (((\spi0|cordic|index_loop\(3)) # (\spi0|cordic|index_loop\(1))) # (\spi0|cordic|index_loop\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010101010101010101010101010111010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|core|ALT_INV_y_out\(12),
	datab => \spi0|cordic|ALT_INV_index_loop\(2),
	datac => \spi0|cordic|ALT_INV_index_loop\(1),
	datad => \spi0|cordic|ALT_INV_index_loop\(3),
	datae => \spi0|cordic|ALT_INV_index_loop\(0),
	dataf => \spi0|ALT_INV_y_in\(12),
	combout => \spi0|cordic|y_in_c~3_combout\);

-- Location: LABCELL_X81_Y18_N36
\spi0|cordic|y_in_c[12]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|y_in_c\(12) = ( \spi0|cordic|y_in_c~3_combout\ & ( (\spi0|cordic|y_in_c\(12)) # (\spi0|cordic|state.LOAD_DATA~q\) ) ) # ( !\spi0|cordic|y_in_c~3_combout\ & ( (!\spi0|cordic|state.LOAD_DATA~q\ & \spi0|cordic|y_in_c\(12)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi0|cordic|ALT_INV_state.LOAD_DATA~q\,
	datad => \spi0|cordic|ALT_INV_y_in_c\(12),
	dataf => \spi0|cordic|ALT_INV_y_in_c~3_combout\,
	combout => \spi0|cordic|y_in_c\(12));

-- Location: LABCELL_X81_Y18_N54
\spi0|cordic|core|ShiftRight0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|ShiftRight0~2_combout\ = ( \spi0|cordic|y_in_c\(14) & ( \spi0|cordic|y_in_c\(15) & ( ((!\spi0|cordic|index\(0) & ((\spi0|cordic|y_in_c\(12)))) # (\spi0|cordic|index\(0) & (\spi0|cordic|y_in_c\(13)))) # (\spi0|cordic|index\(1)) ) ) ) # ( 
-- !\spi0|cordic|y_in_c\(14) & ( \spi0|cordic|y_in_c\(15) & ( (!\spi0|cordic|index\(0) & (!\spi0|cordic|index\(1) & ((\spi0|cordic|y_in_c\(12))))) # (\spi0|cordic|index\(0) & (((\spi0|cordic|y_in_c\(13))) # (\spi0|cordic|index\(1)))) ) ) ) # ( 
-- \spi0|cordic|y_in_c\(14) & ( !\spi0|cordic|y_in_c\(15) & ( (!\spi0|cordic|index\(0) & (((\spi0|cordic|y_in_c\(12))) # (\spi0|cordic|index\(1)))) # (\spi0|cordic|index\(0) & (!\spi0|cordic|index\(1) & (\spi0|cordic|y_in_c\(13)))) ) ) ) # ( 
-- !\spi0|cordic|y_in_c\(14) & ( !\spi0|cordic|y_in_c\(15) & ( (!\spi0|cordic|index\(1) & ((!\spi0|cordic|index\(0) & ((\spi0|cordic|y_in_c\(12)))) # (\spi0|cordic|index\(0) & (\spi0|cordic|y_in_c\(13))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100001001101010111000010101100111010011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_index\(0),
	datab => \spi0|cordic|ALT_INV_index\(1),
	datac => \spi0|cordic|ALT_INV_y_in_c\(13),
	datad => \spi0|cordic|ALT_INV_y_in_c\(12),
	datae => \spi0|cordic|ALT_INV_y_in_c\(14),
	dataf => \spi0|cordic|ALT_INV_y_in_c\(15),
	combout => \spi0|cordic|core|ShiftRight0~2_combout\);

-- Location: LABCELL_X81_Y19_N39
\spi0|cordic|core|Add3~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|Add3~13_sumout\ = SUM(( \spi0|cordic|x_in_c\(12) ) + ( !\spi0|cordic|sgn~combout\ $ (((!\spi0|cordic|core|Mux1~0_combout\ & (\spi0|cordic|y_in_c\(15))) # (\spi0|cordic|core|Mux1~0_combout\ & 
-- ((\spi0|cordic|core|ShiftRight0~2_combout\))))) ) + ( \spi0|cordic|core|Add3~18\ ))
-- \spi0|cordic|core|Add3~14\ = CARRY(( \spi0|cordic|x_in_c\(12) ) + ( !\spi0|cordic|sgn~combout\ $ (((!\spi0|cordic|core|Mux1~0_combout\ & (\spi0|cordic|y_in_c\(15))) # (\spi0|cordic|core|Mux1~0_combout\ & ((\spi0|cordic|core|ShiftRight0~2_combout\))))) ) + 
-- ( \spi0|cordic|core|Add3~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001011010111100000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|core|ALT_INV_Mux1~0_combout\,
	datab => \spi0|cordic|ALT_INV_y_in_c\(15),
	datac => \spi0|cordic|ALT_INV_sgn~combout\,
	datad => \spi0|cordic|ALT_INV_x_in_c\(12),
	dataf => \spi0|cordic|core|ALT_INV_ShiftRight0~2_combout\,
	cin => \spi0|cordic|core|Add3~18\,
	sumout => \spi0|cordic|core|Add3~13_sumout\,
	cout => \spi0|cordic|core|Add3~14\);

-- Location: LABCELL_X80_Y22_N3
\spi0|cordic|core|x_out[12]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|x_out\(12) = ( \spi0|cordic|core|Add3~13_sumout\ & ( (\spi0|cordic|core|x_out\(12)) # (\spi0|cordic|core|state.EXECUTE~q\) ) ) # ( !\spi0|cordic|core|Add3~13_sumout\ & ( (!\spi0|cordic|core|state.EXECUTE~q\ & 
-- \spi0|cordic|core|x_out\(12)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|cordic|core|ALT_INV_state.EXECUTE~q\,
	datad => \spi0|cordic|core|ALT_INV_x_out\(12),
	dataf => \spi0|cordic|core|ALT_INV_Add3~13_sumout\,
	combout => \spi0|cordic|core|x_out\(12));

-- Location: LABCELL_X81_Y22_N12
\spi0|x_in[12]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|x_in\(12) = ( \spi0|spi|data_out\(12) & ( (\spi0|x_in[0]~0_combout\) # (\spi0|x_in\(12)) ) ) # ( !\spi0|spi|data_out\(12) & ( (\spi0|x_in\(12) & !\spi0|x_in[0]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi0|ALT_INV_x_in\(12),
	datac => \spi0|ALT_INV_x_in[0]~0_combout\,
	dataf => \spi0|spi|ALT_INV_data_out\(12),
	combout => \spi0|x_in\(12));

-- Location: MLABCELL_X84_Y22_N15
\spi0|cordic|x_in_c~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|x_in_c~3_combout\ = ( \spi0|cordic|core|x_out\(12) & ( \spi0|x_in\(12) ) ) # ( !\spi0|cordic|core|x_out\(12) & ( \spi0|x_in\(12) & ( (!\spi0|cordic|index_loop\(3) & (!\spi0|cordic|index_loop\(1) & (!\spi0|cordic|index_loop\(2) & 
-- !\spi0|cordic|index_loop\(0)))) ) ) ) # ( \spi0|cordic|core|x_out\(12) & ( !\spi0|x_in\(12) & ( (((\spi0|cordic|index_loop\(0)) # (\spi0|cordic|index_loop\(2))) # (\spi0|cordic|index_loop\(1))) # (\spi0|cordic|index_loop\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011111111111111110000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_index_loop\(3),
	datab => \spi0|cordic|ALT_INV_index_loop\(1),
	datac => \spi0|cordic|ALT_INV_index_loop\(2),
	datad => \spi0|cordic|ALT_INV_index_loop\(0),
	datae => \spi0|cordic|core|ALT_INV_x_out\(12),
	dataf => \spi0|ALT_INV_x_in\(12),
	combout => \spi0|cordic|x_in_c~3_combout\);

-- Location: LABCELL_X83_Y18_N48
\spi0|cordic|x_in_c[12]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|x_in_c\(12) = ( \spi0|cordic|x_in_c~3_combout\ & ( (\spi0|cordic|x_in_c\(12)) # (\spi0|cordic|state.LOAD_DATA~q\) ) ) # ( !\spi0|cordic|x_in_c~3_combout\ & ( (!\spi0|cordic|state.LOAD_DATA~q\ & \spi0|cordic|x_in_c\(12)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi0|cordic|ALT_INV_state.LOAD_DATA~q\,
	datac => \spi0|cordic|ALT_INV_x_in_c\(12),
	dataf => \spi0|cordic|ALT_INV_x_in_c~3_combout\,
	combout => \spi0|cordic|x_in_c\(12));

-- Location: LABCELL_X81_Y18_N12
\spi0|cordic|core|ShiftRight1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|ShiftRight1~2_combout\ = ( \spi0|cordic|x_in_c\(15) & ( \spi0|cordic|x_in_c\(13) & ( ((!\spi0|cordic|index\(1) & (\spi0|cordic|x_in_c\(12))) # (\spi0|cordic|index\(1) & ((\spi0|cordic|x_in_c\(14))))) # (\spi0|cordic|index\(0)) ) ) ) # ( 
-- !\spi0|cordic|x_in_c\(15) & ( \spi0|cordic|x_in_c\(13) & ( (!\spi0|cordic|index\(0) & ((!\spi0|cordic|index\(1) & (\spi0|cordic|x_in_c\(12))) # (\spi0|cordic|index\(1) & ((\spi0|cordic|x_in_c\(14)))))) # (\spi0|cordic|index\(0) & 
-- (!\spi0|cordic|index\(1))) ) ) ) # ( \spi0|cordic|x_in_c\(15) & ( !\spi0|cordic|x_in_c\(13) & ( (!\spi0|cordic|index\(0) & ((!\spi0|cordic|index\(1) & (\spi0|cordic|x_in_c\(12))) # (\spi0|cordic|index\(1) & ((\spi0|cordic|x_in_c\(14)))))) # 
-- (\spi0|cordic|index\(0) & (\spi0|cordic|index\(1))) ) ) ) # ( !\spi0|cordic|x_in_c\(15) & ( !\spi0|cordic|x_in_c\(13) & ( (!\spi0|cordic|index\(0) & ((!\spi0|cordic|index\(1) & (\spi0|cordic|x_in_c\(12))) # (\spi0|cordic|index\(1) & 
-- ((\spi0|cordic|x_in_c\(14)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000110010011101101001100011011100101110101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_index\(0),
	datab => \spi0|cordic|ALT_INV_index\(1),
	datac => \spi0|cordic|ALT_INV_x_in_c\(12),
	datad => \spi0|cordic|ALT_INV_x_in_c\(14),
	datae => \spi0|cordic|ALT_INV_x_in_c\(15),
	dataf => \spi0|cordic|ALT_INV_x_in_c\(13),
	combout => \spi0|cordic|core|ShiftRight1~2_combout\);

-- Location: LABCELL_X83_Y21_N42
\spi0|cordic|core|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|Add1~9_sumout\ = SUM(( !\spi0|cordic|sgn~combout\ $ (((!\spi0|cordic|core|Mux1~0_combout\ & (!\spi0|cordic|x_in_c\(15))) # (\spi0|cordic|core|Mux1~0_combout\ & ((!\spi0|cordic|core|ShiftRight1~1_combout\))))) ) + ( 
-- \spi0|cordic|y_in_c\(13) ) + ( \spi0|cordic|core|Add1~14\ ))
-- \spi0|cordic|core|Add1~10\ = CARRY(( !\spi0|cordic|sgn~combout\ $ (((!\spi0|cordic|core|Mux1~0_combout\ & (!\spi0|cordic|x_in_c\(15))) # (\spi0|cordic|core|Mux1~0_combout\ & ((!\spi0|cordic|core|ShiftRight1~1_combout\))))) ) + ( \spi0|cordic|y_in_c\(13) ) 
-- + ( \spi0|cordic|core|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000110001101101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_x_in_c\(15),
	datab => \spi0|cordic|ALT_INV_sgn~combout\,
	datac => \spi0|cordic|core|ALT_INV_Mux1~0_combout\,
	datad => \spi0|cordic|core|ALT_INV_ShiftRight1~1_combout\,
	dataf => \spi0|cordic|ALT_INV_y_in_c\(13),
	cin => \spi0|cordic|core|Add1~14\,
	sumout => \spi0|cordic|core|Add1~9_sumout\,
	cout => \spi0|cordic|core|Add1~10\);

-- Location: LABCELL_X81_Y22_N3
\spi0|cordic|core|y_out[13]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|y_out\(13) = ( \spi0|cordic|core|Add1~9_sumout\ & ( (\spi0|cordic|core|y_out\(13)) # (\spi0|cordic|core|state.EXECUTE~q\) ) ) # ( !\spi0|cordic|core|Add1~9_sumout\ & ( (!\spi0|cordic|core|state.EXECUTE~q\ & \spi0|cordic|core|y_out\(13)) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|core|ALT_INV_state.EXECUTE~q\,
	datad => \spi0|cordic|core|ALT_INV_y_out\(13),
	dataf => \spi0|cordic|core|ALT_INV_Add1~9_sumout\,
	combout => \spi0|cordic|core|y_out\(13));

-- Location: LABCELL_X81_Y22_N51
\spi0|y_in[13]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|y_in\(13) = ( \spi0|y_in[0]~0_combout\ & ( \spi0|spi|data_out[13]~DUPLICATE_q\ ) ) # ( !\spi0|y_in[0]~0_combout\ & ( \spi0|y_in\(13) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi0|ALT_INV_y_in\(13),
	datac => \spi0|spi|ALT_INV_data_out[13]~DUPLICATE_q\,
	dataf => \spi0|ALT_INV_y_in[0]~0_combout\,
	combout => \spi0|y_in\(13));

-- Location: LABCELL_X81_Y22_N27
\spi0|cordic|y_in_c~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|y_in_c~2_combout\ = ( \spi0|cordic|index_loop\(0) & ( \spi0|y_in\(13) & ( \spi0|cordic|core|y_out\(13) ) ) ) # ( !\spi0|cordic|index_loop\(0) & ( \spi0|y_in\(13) & ( ((!\spi0|cordic|index_loop\(2) & (!\spi0|cordic|index_loop\(3) & 
-- !\spi0|cordic|index_loop\(1)))) # (\spi0|cordic|core|y_out\(13)) ) ) ) # ( \spi0|cordic|index_loop\(0) & ( !\spi0|y_in\(13) & ( \spi0|cordic|core|y_out\(13) ) ) ) # ( !\spi0|cordic|index_loop\(0) & ( !\spi0|y_in\(13) & ( (\spi0|cordic|core|y_out\(13) & 
-- (((\spi0|cordic|index_loop\(1)) # (\spi0|cordic|index_loop\(3))) # (\spi0|cordic|index_loop\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010101010101010101010101010111010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|core|ALT_INV_y_out\(13),
	datab => \spi0|cordic|ALT_INV_index_loop\(2),
	datac => \spi0|cordic|ALT_INV_index_loop\(3),
	datad => \spi0|cordic|ALT_INV_index_loop\(1),
	datae => \spi0|cordic|ALT_INV_index_loop\(0),
	dataf => \spi0|ALT_INV_y_in\(13),
	combout => \spi0|cordic|y_in_c~2_combout\);

-- Location: LABCELL_X81_Y22_N48
\spi0|cordic|y_in_c[13]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|y_in_c\(13) = ( \spi0|cordic|y_in_c~2_combout\ & ( (\spi0|cordic|state.LOAD_DATA~q\) # (\spi0|cordic|y_in_c\(13)) ) ) # ( !\spi0|cordic|y_in_c~2_combout\ & ( (\spi0|cordic|y_in_c\(13) & !\spi0|cordic|state.LOAD_DATA~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_y_in_c\(13),
	datad => \spi0|cordic|ALT_INV_state.LOAD_DATA~q\,
	dataf => \spi0|cordic|ALT_INV_y_in_c~2_combout\,
	combout => \spi0|cordic|y_in_c\(13));

-- Location: LABCELL_X80_Y18_N36
\spi0|cordic|core|ShiftRight0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|ShiftRight0~1_combout\ = ( \spi0|cordic|y_in_c\(15) & ( ((!\spi0|cordic|index\(0) & (\spi0|cordic|y_in_c\(13))) # (\spi0|cordic|index\(0) & ((\spi0|cordic|y_in_c\(14))))) # (\spi0|cordic|index\(1)) ) ) # ( !\spi0|cordic|y_in_c\(15) & ( 
-- (!\spi0|cordic|index\(1) & ((!\spi0|cordic|index\(0) & (\spi0|cordic|y_in_c\(13))) # (\spi0|cordic|index\(0) & ((\spi0|cordic|y_in_c\(14)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000010000010101001011101011111110101110101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_index\(1),
	datab => \spi0|cordic|ALT_INV_index\(0),
	datac => \spi0|cordic|ALT_INV_y_in_c\(13),
	datad => \spi0|cordic|ALT_INV_y_in_c\(14),
	dataf => \spi0|cordic|ALT_INV_y_in_c\(15),
	combout => \spi0|cordic|core|ShiftRight0~1_combout\);

-- Location: LABCELL_X81_Y19_N42
\spi0|cordic|core|Add3~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|Add3~9_sumout\ = SUM(( !\spi0|cordic|sgn~combout\ $ (((!\spi0|cordic|core|Mux1~0_combout\ & (\spi0|cordic|y_in_c\(15))) # (\spi0|cordic|core|Mux1~0_combout\ & ((\spi0|cordic|core|ShiftRight0~1_combout\))))) ) + ( \spi0|cordic|x_in_c\(13) 
-- ) + ( \spi0|cordic|core|Add3~14\ ))
-- \spi0|cordic|core|Add3~10\ = CARRY(( !\spi0|cordic|sgn~combout\ $ (((!\spi0|cordic|core|Mux1~0_combout\ & (\spi0|cordic|y_in_c\(15))) # (\spi0|cordic|core|Mux1~0_combout\ & ((\spi0|cordic|core|ShiftRight0~1_combout\))))) ) + ( \spi0|cordic|x_in_c\(13) ) + 
-- ( \spi0|cordic|core|Add3~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001001110010010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_y_in_c\(15),
	datab => \spi0|cordic|ALT_INV_sgn~combout\,
	datac => \spi0|cordic|core|ALT_INV_Mux1~0_combout\,
	datad => \spi0|cordic|core|ALT_INV_ShiftRight0~1_combout\,
	dataf => \spi0|cordic|ALT_INV_x_in_c\(13),
	cin => \spi0|cordic|core|Add3~14\,
	sumout => \spi0|cordic|core|Add3~9_sumout\,
	cout => \spi0|cordic|core|Add3~10\);

-- Location: LABCELL_X81_Y21_N42
\spi0|cordic|core|x_out[13]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|x_out\(13) = ( \spi0|cordic|core|Add3~9_sumout\ & ( (\spi0|cordic|core|state.EXECUTE~q\) # (\spi0|cordic|core|x_out\(13)) ) ) # ( !\spi0|cordic|core|Add3~9_sumout\ & ( (\spi0|cordic|core|x_out\(13) & !\spi0|cordic|core|state.EXECUTE~q\) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi0|cordic|core|ALT_INV_x_out\(13),
	datac => \spi0|cordic|core|ALT_INV_state.EXECUTE~q\,
	dataf => \spi0|cordic|core|ALT_INV_Add3~9_sumout\,
	combout => \spi0|cordic|core|x_out\(13));

-- Location: LABCELL_X80_Y22_N21
\spi0|x_in[13]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|x_in\(13) = ( \spi0|spi|data_out[13]~DUPLICATE_q\ & ( (\spi0|x_in\(13)) # (\spi0|x_in[0]~0_combout\) ) ) # ( !\spi0|spi|data_out[13]~DUPLICATE_q\ & ( (!\spi0|x_in[0]~0_combout\ & \spi0|x_in\(13)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|ALT_INV_x_in[0]~0_combout\,
	datad => \spi0|ALT_INV_x_in\(13),
	dataf => \spi0|spi|ALT_INV_data_out[13]~DUPLICATE_q\,
	combout => \spi0|x_in\(13));

-- Location: LABCELL_X80_Y22_N51
\spi0|cordic|x_in_c~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|x_in_c~2_combout\ = ( \spi0|cordic|core|x_out\(13) & ( \spi0|x_in\(13) ) ) # ( !\spi0|cordic|core|x_out\(13) & ( \spi0|x_in\(13) & ( (!\spi0|cordic|index_loop\(0) & (!\spi0|cordic|index_loop\(3) & (!\spi0|cordic|index_loop\(1) & 
-- !\spi0|cordic|index_loop\(2)))) ) ) ) # ( \spi0|cordic|core|x_out\(13) & ( !\spi0|x_in\(13) & ( (((\spi0|cordic|index_loop\(2)) # (\spi0|cordic|index_loop\(1))) # (\spi0|cordic|index_loop\(3))) # (\spi0|cordic|index_loop\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011111111111111110000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_index_loop\(0),
	datab => \spi0|cordic|ALT_INV_index_loop\(3),
	datac => \spi0|cordic|ALT_INV_index_loop\(1),
	datad => \spi0|cordic|ALT_INV_index_loop\(2),
	datae => \spi0|cordic|core|ALT_INV_x_out\(13),
	dataf => \spi0|ALT_INV_x_in\(13),
	combout => \spi0|cordic|x_in_c~2_combout\);

-- Location: LABCELL_X80_Y22_N42
\spi0|cordic|x_in_c[13]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|x_in_c\(13) = ( \spi0|cordic|state.LOAD_DATA~q\ & ( \spi0|cordic|x_in_c~2_combout\ ) ) # ( !\spi0|cordic|state.LOAD_DATA~q\ & ( \spi0|cordic|x_in_c~2_combout\ & ( \spi0|cordic|x_in_c\(13) ) ) ) # ( !\spi0|cordic|state.LOAD_DATA~q\ & ( 
-- !\spi0|cordic|x_in_c~2_combout\ & ( \spi0|cordic|x_in_c\(13) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000000000000000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \spi0|cordic|ALT_INV_x_in_c\(13),
	datae => \spi0|cordic|ALT_INV_state.LOAD_DATA~q\,
	dataf => \spi0|cordic|ALT_INV_x_in_c~2_combout\,
	combout => \spi0|cordic|x_in_c\(13));

-- Location: LABCELL_X83_Y22_N54
\spi0|cordic|core|ShiftRight1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|ShiftRight1~1_combout\ = ( \spi0|cordic|index\(1) & ( \spi0|cordic|x_in_c\(15) ) ) # ( !\spi0|cordic|index\(1) & ( \spi0|cordic|x_in_c\(15) & ( (!\spi0|cordic|index\(0) & (\spi0|cordic|x_in_c\(13))) # (\spi0|cordic|index\(0) & 
-- ((\spi0|cordic|x_in_c\(14)))) ) ) ) # ( !\spi0|cordic|index\(1) & ( !\spi0|cordic|x_in_c\(15) & ( (!\spi0|cordic|index\(0) & (\spi0|cordic|x_in_c\(13))) # (\spi0|cordic|index\(0) & ((\spi0|cordic|x_in_c\(14)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111000000000000000000100111001001111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_index\(0),
	datab => \spi0|cordic|ALT_INV_x_in_c\(13),
	datac => \spi0|cordic|ALT_INV_x_in_c\(14),
	datae => \spi0|cordic|ALT_INV_index\(1),
	dataf => \spi0|cordic|ALT_INV_x_in_c\(15),
	combout => \spi0|cordic|core|ShiftRight1~1_combout\);

-- Location: LABCELL_X83_Y21_N45
\spi0|cordic|core|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|Add1~5_sumout\ = SUM(( !\spi0|cordic|sgn~combout\ $ (((!\spi0|cordic|core|Mux1~0_combout\ & (!\spi0|cordic|x_in_c\(15))) # (\spi0|cordic|core|Mux1~0_combout\ & ((!\spi0|cordic|core|ShiftRight1~0_combout\))))) ) + ( 
-- \spi0|cordic|y_in_c\(14) ) + ( \spi0|cordic|core|Add1~10\ ))
-- \spi0|cordic|core|Add1~6\ = CARRY(( !\spi0|cordic|sgn~combout\ $ (((!\spi0|cordic|core|Mux1~0_combout\ & (!\spi0|cordic|x_in_c\(15))) # (\spi0|cordic|core|Mux1~0_combout\ & ((!\spi0|cordic|core|ShiftRight1~0_combout\))))) ) + ( \spi0|cordic|y_in_c\(14) ) 
-- + ( \spi0|cordic|core|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000110001101101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_x_in_c\(15),
	datab => \spi0|cordic|ALT_INV_sgn~combout\,
	datac => \spi0|cordic|core|ALT_INV_Mux1~0_combout\,
	datad => \spi0|cordic|core|ALT_INV_ShiftRight1~0_combout\,
	dataf => \spi0|cordic|ALT_INV_y_in_c\(14),
	cin => \spi0|cordic|core|Add1~10\,
	sumout => \spi0|cordic|core|Add1~5_sumout\,
	cout => \spi0|cordic|core|Add1~6\);

-- Location: LABCELL_X85_Y21_N15
\spi0|cordic|core|y_out[14]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|y_out\(14) = ( \spi0|cordic|core|Add1~5_sumout\ & ( (\spi0|cordic|core|y_out\(14)) # (\spi0|cordic|core|state.EXECUTE~q\) ) ) # ( !\spi0|cordic|core|Add1~5_sumout\ & ( (!\spi0|cordic|core|state.EXECUTE~q\ & \spi0|cordic|core|y_out\(14)) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi0|cordic|core|ALT_INV_state.EXECUTE~q\,
	datac => \spi0|cordic|core|ALT_INV_y_out\(14),
	dataf => \spi0|cordic|core|ALT_INV_Add1~5_sumout\,
	combout => \spi0|cordic|core|y_out\(14));

-- Location: LABCELL_X81_Y22_N15
\spi0|y_in[14]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|y_in\(14) = ( \spi0|y_in[0]~0_combout\ & ( \spi0|spi|data_out\(14) ) ) # ( !\spi0|y_in[0]~0_combout\ & ( \spi0|y_in\(14) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|spi|ALT_INV_data_out\(14),
	datad => \spi0|ALT_INV_y_in\(14),
	dataf => \spi0|ALT_INV_y_in[0]~0_combout\,
	combout => \spi0|y_in\(14));

-- Location: MLABCELL_X82_Y21_N15
\spi0|cordic|y_in_c~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|y_in_c~1_combout\ = ( \spi0|cordic|core|y_out\(14) & ( \spi0|y_in\(14) ) ) # ( !\spi0|cordic|core|y_out\(14) & ( \spi0|y_in\(14) & ( (!\spi0|cordic|index_loop\(3) & (!\spi0|cordic|index_loop\(0) & (!\spi0|cordic|index_loop\(2) & 
-- !\spi0|cordic|index_loop\(1)))) ) ) ) # ( \spi0|cordic|core|y_out\(14) & ( !\spi0|y_in\(14) & ( (((\spi0|cordic|index_loop\(1)) # (\spi0|cordic|index_loop\(2))) # (\spi0|cordic|index_loop\(0))) # (\spi0|cordic|index_loop\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011111111111111110000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_index_loop\(3),
	datab => \spi0|cordic|ALT_INV_index_loop\(0),
	datac => \spi0|cordic|ALT_INV_index_loop\(2),
	datad => \spi0|cordic|ALT_INV_index_loop\(1),
	datae => \spi0|cordic|core|ALT_INV_y_out\(14),
	dataf => \spi0|ALT_INV_y_in\(14),
	combout => \spi0|cordic|y_in_c~1_combout\);

-- Location: LABCELL_X83_Y18_N6
\spi0|cordic|y_in_c[14]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|y_in_c\(14) = ( \spi0|cordic|y_in_c~1_combout\ & ( (\spi0|cordic|state.LOAD_DATA~q\) # (\spi0|cordic|y_in_c\(14)) ) ) # ( !\spi0|cordic|y_in_c~1_combout\ & ( (\spi0|cordic|y_in_c\(14) & !\spi0|cordic|state.LOAD_DATA~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi0|cordic|ALT_INV_y_in_c\(14),
	datac => \spi0|cordic|ALT_INV_state.LOAD_DATA~q\,
	dataf => \spi0|cordic|ALT_INV_y_in_c~1_combout\,
	combout => \spi0|cordic|y_in_c\(14));

-- Location: LABCELL_X80_Y18_N51
\spi0|cordic|core|ShiftRight0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|ShiftRight0~0_combout\ = ( \spi0|cordic|y_in_c\(15) & ( ((\spi0|cordic|y_in_c\(14)) # (\spi0|cordic|index\(0))) # (\spi0|cordic|index\(1)) ) ) # ( !\spi0|cordic|y_in_c\(15) & ( (!\spi0|cordic|index\(1) & (!\spi0|cordic|index\(0) & 
-- \spi0|cordic|y_in_c\(14))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000001011111111111110101111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_index\(1),
	datac => \spi0|cordic|ALT_INV_index\(0),
	datad => \spi0|cordic|ALT_INV_y_in_c\(14),
	dataf => \spi0|cordic|ALT_INV_y_in_c\(15),
	combout => \spi0|cordic|core|ShiftRight0~0_combout\);

-- Location: LABCELL_X81_Y19_N45
\spi0|cordic|core|Add3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|Add3~5_sumout\ = SUM(( \spi0|cordic|x_in_c\(14) ) + ( !\spi0|cordic|sgn~combout\ $ (((!\spi0|cordic|core|Mux1~0_combout\ & (\spi0|cordic|y_in_c\(15))) # (\spi0|cordic|core|Mux1~0_combout\ & ((\spi0|cordic|core|ShiftRight0~0_combout\))))) 
-- ) + ( \spi0|cordic|core|Add3~10\ ))
-- \spi0|cordic|core|Add3~6\ = CARRY(( \spi0|cordic|x_in_c\(14) ) + ( !\spi0|cordic|sgn~combout\ $ (((!\spi0|cordic|core|Mux1~0_combout\ & (\spi0|cordic|y_in_c\(15))) # (\spi0|cordic|core|Mux1~0_combout\ & ((\spi0|cordic|core|ShiftRight0~0_combout\))))) ) + 
-- ( \spi0|cordic|core|Add3~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011000110110110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_y_in_c\(15),
	datab => \spi0|cordic|ALT_INV_sgn~combout\,
	datac => \spi0|cordic|core|ALT_INV_Mux1~0_combout\,
	datad => \spi0|cordic|ALT_INV_x_in_c\(14),
	dataf => \spi0|cordic|core|ALT_INV_ShiftRight0~0_combout\,
	cin => \spi0|cordic|core|Add3~10\,
	sumout => \spi0|cordic|core|Add3~5_sumout\,
	cout => \spi0|cordic|core|Add3~6\);

-- Location: LABCELL_X83_Y19_N42
\spi0|cordic|core|x_out[14]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|x_out\(14) = ( \spi0|cordic|core|Add3~5_sumout\ & ( (\spi0|cordic|core|state.EXECUTE~q\) # (\spi0|cordic|core|x_out\(14)) ) ) # ( !\spi0|cordic|core|Add3~5_sumout\ & ( (\spi0|cordic|core|x_out\(14) & !\spi0|cordic|core|state.EXECUTE~q\) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi0|cordic|core|ALT_INV_x_out\(14),
	datac => \spi0|cordic|core|ALT_INV_state.EXECUTE~q\,
	dataf => \spi0|cordic|core|ALT_INV_Add3~5_sumout\,
	combout => \spi0|cordic|core|x_out\(14));

-- Location: FF_X82_Y22_N19
\spi0|spi|data_out[14]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \spi0|spi|data_to_read\(14),
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => VCC,
	ena => \spi0|spi|Equal6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|data_out[14]~DUPLICATE_q\);

-- Location: LABCELL_X83_Y20_N0
\spi0|x_in[14]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|x_in\(14) = ( \spi0|spi|data_out[14]~DUPLICATE_q\ & ( (\spi0|x_in\(14)) # (\spi0|x_in[0]~0_combout\) ) ) # ( !\spi0|spi|data_out[14]~DUPLICATE_q\ & ( (!\spi0|x_in[0]~0_combout\ & \spi0|x_in\(14)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|ALT_INV_x_in[0]~0_combout\,
	datad => \spi0|ALT_INV_x_in\(14),
	dataf => \spi0|spi|ALT_INV_data_out[14]~DUPLICATE_q\,
	combout => \spi0|x_in\(14));

-- Location: LABCELL_X83_Y19_N33
\spi0|cordic|x_in_c~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|x_in_c~1_combout\ = ( \spi0|cordic|core|x_out\(14) & ( \spi0|x_in\(14) ) ) # ( !\spi0|cordic|core|x_out\(14) & ( \spi0|x_in\(14) & ( (!\spi0|cordic|index_loop\(3) & (!\spi0|cordic|index_loop\(0) & (!\spi0|cordic|index_loop\(2) & 
-- !\spi0|cordic|index_loop\(1)))) ) ) ) # ( \spi0|cordic|core|x_out\(14) & ( !\spi0|x_in\(14) & ( (((\spi0|cordic|index_loop\(1)) # (\spi0|cordic|index_loop\(2))) # (\spi0|cordic|index_loop\(0))) # (\spi0|cordic|index_loop\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011111111111111110000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_index_loop\(3),
	datab => \spi0|cordic|ALT_INV_index_loop\(0),
	datac => \spi0|cordic|ALT_INV_index_loop\(2),
	datad => \spi0|cordic|ALT_INV_index_loop\(1),
	datae => \spi0|cordic|core|ALT_INV_x_out\(14),
	dataf => \spi0|ALT_INV_x_in\(14),
	combout => \spi0|cordic|x_in_c~1_combout\);

-- Location: LABCELL_X83_Y19_N57
\spi0|cordic|x_in_c[14]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|x_in_c\(14) = ( \spi0|cordic|x_in_c~1_combout\ & ( (\spi0|cordic|x_in_c\(14)) # (\spi0|cordic|state.LOAD_DATA~q\) ) ) # ( !\spi0|cordic|x_in_c~1_combout\ & ( (!\spi0|cordic|state.LOAD_DATA~q\ & \spi0|cordic|x_in_c\(14)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|cordic|ALT_INV_state.LOAD_DATA~q\,
	datad => \spi0|cordic|ALT_INV_x_in_c\(14),
	dataf => \spi0|cordic|ALT_INV_x_in_c~1_combout\,
	combout => \spi0|cordic|x_in_c\(14));

-- Location: LABCELL_X81_Y19_N48
\spi0|cordic|core|Add3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|Add3~1_sumout\ = SUM(( !\spi0|cordic|y_in_c\(15) $ (\spi0|cordic|sgn~combout\) ) + ( \spi0|cordic|x_in_c\(15) ) + ( \spi0|cordic|core|Add3~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000001100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_x_in_c\(15),
	datab => \spi0|cordic|ALT_INV_y_in_c\(15),
	datac => \spi0|cordic|ALT_INV_sgn~combout\,
	cin => \spi0|cordic|core|Add3~6\,
	sumout => \spi0|cordic|core|Add3~1_sumout\);

-- Location: MLABCELL_X82_Y21_N54
\spi0|cordic|core|x_out[15]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|x_out\(15) = ( \spi0|cordic|core|Add3~1_sumout\ & ( (\spi0|cordic|core|x_out\(15)) # (\spi0|cordic|core|state.EXECUTE~q\) ) ) # ( !\spi0|cordic|core|Add3~1_sumout\ & ( (!\spi0|cordic|core|state.EXECUTE~q\ & \spi0|cordic|core|x_out\(15)) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|core|ALT_INV_state.EXECUTE~q\,
	datac => \spi0|cordic|core|ALT_INV_x_out\(15),
	dataf => \spi0|cordic|core|ALT_INV_Add3~1_sumout\,
	combout => \spi0|cordic|core|x_out\(15));

-- Location: MLABCELL_X82_Y21_N24
\spi0|x_in[15]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|x_in\(15) = ( \spi0|spi|data_out\(15) & ( (\spi0|x_in\(15)) # (\spi0|x_in[0]~0_combout\) ) ) # ( !\spi0|spi|data_out\(15) & ( (!\spi0|x_in[0]~0_combout\ & \spi0|x_in\(15)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|ALT_INV_x_in[0]~0_combout\,
	datac => \spi0|ALT_INV_x_in\(15),
	dataf => \spi0|spi|ALT_INV_data_out\(15),
	combout => \spi0|x_in\(15));

-- Location: MLABCELL_X82_Y21_N39
\spi0|cordic|x_in_c~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|x_in_c~0_combout\ = ( \spi0|cordic|core|x_out\(15) & ( \spi0|x_in\(15) ) ) # ( !\spi0|cordic|core|x_out\(15) & ( \spi0|x_in\(15) & ( (!\spi0|cordic|index_loop\(1) & (!\spi0|cordic|index_loop\(2) & (!\spi0|cordic|index_loop\(0) & 
-- !\spi0|cordic|index_loop\(3)))) ) ) ) # ( \spi0|cordic|core|x_out\(15) & ( !\spi0|x_in\(15) & ( (((\spi0|cordic|index_loop\(3)) # (\spi0|cordic|index_loop\(0))) # (\spi0|cordic|index_loop\(2))) # (\spi0|cordic|index_loop\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011111111111111110000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_index_loop\(1),
	datab => \spi0|cordic|ALT_INV_index_loop\(2),
	datac => \spi0|cordic|ALT_INV_index_loop\(0),
	datad => \spi0|cordic|ALT_INV_index_loop\(3),
	datae => \spi0|cordic|core|ALT_INV_x_out\(15),
	dataf => \spi0|ALT_INV_x_in\(15),
	combout => \spi0|cordic|x_in_c~0_combout\);

-- Location: MLABCELL_X82_Y21_N27
\spi0|cordic|x_in_c[15]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|x_in_c\(15) = ( \spi0|cordic|x_in_c~0_combout\ & ( (\spi0|cordic|x_in_c\(15)) # (\spi0|cordic|state.LOAD_DATA~q\) ) ) # ( !\spi0|cordic|x_in_c~0_combout\ & ( (!\spi0|cordic|state.LOAD_DATA~q\ & \spi0|cordic|x_in_c\(15)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|cordic|ALT_INV_state.LOAD_DATA~q\,
	datad => \spi0|cordic|ALT_INV_x_in_c\(15),
	dataf => \spi0|cordic|ALT_INV_x_in_c~0_combout\,
	combout => \spi0|cordic|x_in_c\(15));

-- Location: LABCELL_X83_Y21_N48
\spi0|cordic|core|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|Add1~1_sumout\ = SUM(( \spi0|cordic|y_in_c\(15) ) + ( !\spi0|cordic|x_in_c\(15) $ (!\spi0|cordic|sgn~combout\) ) + ( \spi0|cordic|core|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101001011010010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_x_in_c\(15),
	datac => \spi0|cordic|ALT_INV_sgn~combout\,
	datad => \spi0|cordic|ALT_INV_y_in_c\(15),
	cin => \spi0|cordic|core|Add1~6\,
	sumout => \spi0|cordic|core|Add1~1_sumout\);

-- Location: LABCELL_X83_Y19_N54
\spi0|cordic|core|y_out[15]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|core|y_out\(15) = ( \spi0|cordic|core|Add1~1_sumout\ & ( (\spi0|cordic|core|y_out\(15)) # (\spi0|cordic|core|state.EXECUTE~q\) ) ) # ( !\spi0|cordic|core|Add1~1_sumout\ & ( (!\spi0|cordic|core|state.EXECUTE~q\ & \spi0|cordic|core|y_out\(15)) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|cordic|core|ALT_INV_state.EXECUTE~q\,
	datad => \spi0|cordic|core|ALT_INV_y_out\(15),
	dataf => \spi0|cordic|core|ALT_INV_Add1~1_sumout\,
	combout => \spi0|cordic|core|y_out\(15));

-- Location: LABCELL_X83_Y19_N6
\spi0|cordic|y_output[15]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|y_output\(15) = ( \spi0|cordic|core|y_out\(15) & ( (\spi0|cordic|state.DONE~q\) # (\spi0|cordic|y_output\(15)) ) ) # ( !\spi0|cordic|core|y_out\(15) & ( (\spi0|cordic|y_output\(15) & !\spi0|cordic|state.DONE~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi0|cordic|ALT_INV_y_output\(15),
	datad => \spi0|cordic|ALT_INV_state.DONE~q\,
	dataf => \spi0|cordic|core|ALT_INV_y_out\(15),
	combout => \spi0|cordic|y_output\(15));

-- Location: MLABCELL_X82_Y21_N3
\spi0|cordic|z_output[15]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|z_output\(15) = ( \spi0|cordic|state.DONE~q\ & ( \spi0|cordic|core|z_out\(15) ) ) # ( !\spi0|cordic|state.DONE~q\ & ( \spi0|cordic|z_output\(15) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|cordic|core|ALT_INV_z_out\(15),
	datad => \spi0|cordic|ALT_INV_z_output\(15),
	dataf => \spi0|cordic|ALT_INV_state.DONE~q\,
	combout => \spi0|cordic|z_output\(15));

-- Location: LABCELL_X83_Y19_N9
\spi0|Selector24~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|Selector24~0_combout\ = ( !\spi0|state.WRITE_Z~q\ & ( !\spi0|state.WRITE_Y~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \spi0|ALT_INV_state.WRITE_Y~q\,
	dataf => \spi0|ALT_INV_state.WRITE_Z~q\,
	combout => \spi0|Selector24~0_combout\);

-- Location: LABCELL_X83_Y19_N45
\spi0|WideOr1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|WideOr1~0_combout\ = ( !\spi0|state.WRITE_Z~q\ & ( !\spi0|state.WRITE_X~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \spi0|ALT_INV_state.WRITE_X~q\,
	dataf => \spi0|ALT_INV_state.WRITE_Z~q\,
	combout => \spi0|WideOr1~0_combout\);

-- Location: MLABCELL_X82_Y21_N57
\spi0|cordic|x_output[15]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|x_output\(15) = ( \spi0|cordic|state.DONE~q\ & ( \spi0|cordic|core|x_out\(15) ) ) # ( !\spi0|cordic|state.DONE~q\ & ( \spi0|cordic|x_output\(15) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|cordic|core|ALT_INV_x_out\(15),
	datad => \spi0|cordic|ALT_INV_x_output\(15),
	dataf => \spi0|cordic|ALT_INV_state.DONE~q\,
	combout => \spi0|cordic|x_output\(15));

-- Location: LABCELL_X83_Y19_N24
\spi0|Selector32~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|Selector32~0_combout\ = ( \spi0|cordic|x_output\(15) & ( \spi0|state.WRITE_PATH~q\ & ( ((!\spi0|WideOr1~0_combout\ & ((\spi0|cordic|z_output\(15)))) # (\spi0|WideOr1~0_combout\ & (\spi0|cordic|y_output\(15)))) # (\spi0|Selector24~0_combout\) ) ) ) # 
-- ( !\spi0|cordic|x_output\(15) & ( \spi0|state.WRITE_PATH~q\ & ( (!\spi0|Selector24~0_combout\ & ((!\spi0|WideOr1~0_combout\ & ((\spi0|cordic|z_output\(15)))) # (\spi0|WideOr1~0_combout\ & (\spi0|cordic|y_output\(15))))) # (\spi0|Selector24~0_combout\ & 
-- (((\spi0|WideOr1~0_combout\)))) ) ) ) # ( \spi0|cordic|x_output\(15) & ( !\spi0|state.WRITE_PATH~q\ & ( (!\spi0|Selector24~0_combout\ & ((!\spi0|WideOr1~0_combout\ & ((\spi0|cordic|z_output\(15)))) # (\spi0|WideOr1~0_combout\ & 
-- (\spi0|cordic|y_output\(15))))) # (\spi0|Selector24~0_combout\ & (((!\spi0|WideOr1~0_combout\)))) ) ) ) # ( !\spi0|cordic|x_output\(15) & ( !\spi0|state.WRITE_PATH~q\ & ( (!\spi0|Selector24~0_combout\ & ((!\spi0|WideOr1~0_combout\ & 
-- ((\spi0|cordic|z_output\(15)))) # (\spi0|WideOr1~0_combout\ & (\spi0|cordic|y_output\(15))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000001010000001111110101000000110000010111110011111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_y_output\(15),
	datab => \spi0|cordic|ALT_INV_z_output\(15),
	datac => \spi0|ALT_INV_Selector24~0_combout\,
	datad => \spi0|ALT_INV_WideOr1~0_combout\,
	datae => \spi0|cordic|ALT_INV_x_output\(15),
	dataf => \spi0|ALT_INV_state.WRITE_PATH~q\,
	combout => \spi0|Selector32~0_combout\);

-- Location: LABCELL_X83_Y19_N3
\spi0|WideOr1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|WideOr1~1_combout\ = ( \spi0|state.WRITE_X~q\ & ( \spi0|state.WRITE_PATH~q\ ) ) # ( !\spi0|state.WRITE_X~q\ & ( \spi0|state.WRITE_PATH~q\ ) ) # ( \spi0|state.WRITE_X~q\ & ( !\spi0|state.WRITE_PATH~q\ ) ) # ( !\spi0|state.WRITE_X~q\ & ( 
-- !\spi0|state.WRITE_PATH~q\ & ( (((!\spi0|state.RESET_S~q\) # (\spi0|state.WAIT_PATH_START~q\)) # (\spi0|state.WRITE_Z~q\)) # (\spi0|state.WRITE_Y~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111011111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|ALT_INV_state.WRITE_Y~q\,
	datab => \spi0|ALT_INV_state.WRITE_Z~q\,
	datac => \spi0|ALT_INV_state.RESET_S~q\,
	datad => \spi0|ALT_INV_state.WAIT_PATH_START~q\,
	datae => \spi0|ALT_INV_state.WRITE_X~q\,
	dataf => \spi0|ALT_INV_state.WRITE_PATH~q\,
	combout => \spi0|WideOr1~1_combout\);

-- Location: LABCELL_X83_Y19_N48
\spi0|dataIn[15]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|dataIn\(15) = ( \spi0|dataIn\(15) & ( (!\spi0|WideOr1~1_combout\) # (\spi0|Selector32~0_combout\) ) ) # ( !\spi0|dataIn\(15) & ( (\spi0|Selector32~0_combout\ & \spi0|WideOr1~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi0|ALT_INV_Selector32~0_combout\,
	datac => \spi0|ALT_INV_WideOr1~1_combout\,
	dataf => \spi0|ALT_INV_dataIn\(15),
	combout => \spi0|dataIn\(15));

-- Location: LABCELL_X85_Y21_N48
\spi0|cordic|y_output[14]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|y_output\(14) = ( \spi0|cordic|state.DONE~q\ & ( \spi0|cordic|core|y_out\(14) ) ) # ( !\spi0|cordic|state.DONE~q\ & ( \spi0|cordic|core|y_out\(14) & ( \spi0|cordic|y_output\(14) ) ) ) # ( !\spi0|cordic|state.DONE~q\ & ( 
-- !\spi0|cordic|core|y_out\(14) & ( \spi0|cordic|y_output\(14) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|cordic|ALT_INV_y_output\(14),
	datae => \spi0|cordic|ALT_INV_state.DONE~q\,
	dataf => \spi0|cordic|core|ALT_INV_y_out\(14),
	combout => \spi0|cordic|y_output\(14));

-- Location: MLABCELL_X82_Y22_N48
\spi0|cordic|z_output[14]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|z_output\(14) = ( \spi0|cordic|core|z_out\(14) & ( (\spi0|cordic|state.DONE~q\) # (\spi0|cordic|z_output\(14)) ) ) # ( !\spi0|cordic|core|z_out\(14) & ( (\spi0|cordic|z_output\(14) & !\spi0|cordic|state.DONE~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|cordic|ALT_INV_z_output\(14),
	datad => \spi0|cordic|ALT_INV_state.DONE~q\,
	dataf => \spi0|cordic|core|ALT_INV_z_out\(14),
	combout => \spi0|cordic|z_output\(14));

-- Location: LABCELL_X83_Y19_N12
\spi0|cordic|x_output[14]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|x_output\(14) = ( \spi0|cordic|core|x_out\(14) & ( (\spi0|cordic|state.DONE~q\) # (\spi0|cordic|x_output\(14)) ) ) # ( !\spi0|cordic|core|x_out\(14) & ( (\spi0|cordic|x_output\(14) & !\spi0|cordic|state.DONE~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi0|cordic|ALT_INV_x_output\(14),
	datac => \spi0|cordic|ALT_INV_state.DONE~q\,
	dataf => \spi0|cordic|core|ALT_INV_x_out\(14),
	combout => \spi0|cordic|x_output\(14));

-- Location: LABCELL_X83_Y19_N36
\spi0|Selector31~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|Selector31~0_combout\ = ( \spi0|state.WRITE_X~q\ & ( \spi0|cordic|x_output\(14) & ( ((!\spi0|state.WRITE_Y~q\ & !\spi0|state.WRITE_Z~q\)) # (\spi0|cordic|z_output\(14)) ) ) ) # ( !\spi0|state.WRITE_X~q\ & ( \spi0|cordic|x_output\(14) & ( 
-- (!\spi0|state.WRITE_Z~q\ & (\spi0|cordic|y_output\(14) & ((\spi0|state.WRITE_Y~q\)))) # (\spi0|state.WRITE_Z~q\ & (((\spi0|cordic|z_output\(14))))) ) ) ) # ( \spi0|state.WRITE_X~q\ & ( !\spi0|cordic|x_output\(14) & ( (\spi0|cordic|z_output\(14) & 
-- ((\spi0|state.WRITE_Z~q\) # (\spi0|state.WRITE_Y~q\))) ) ) ) # ( !\spi0|state.WRITE_X~q\ & ( !\spi0|cordic|x_output\(14) & ( (!\spi0|state.WRITE_Z~q\ & (\spi0|cordic|y_output\(14) & ((\spi0|state.WRITE_Y~q\)))) # (\spi0|state.WRITE_Z~q\ & 
-- (((\spi0|cordic|z_output\(14))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110011000000110011001100000101001100111111001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_y_output\(14),
	datab => \spi0|cordic|ALT_INV_z_output\(14),
	datac => \spi0|ALT_INV_state.WRITE_Y~q\,
	datad => \spi0|ALT_INV_state.WRITE_Z~q\,
	datae => \spi0|ALT_INV_state.WRITE_X~q\,
	dataf => \spi0|cordic|ALT_INV_x_output\(14),
	combout => \spi0|Selector31~0_combout\);

-- Location: LABCELL_X83_Y19_N18
\spi0|dataIn[14]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|dataIn\(14) = ( \spi0|dataIn\(14) & ( (!\spi0|WideOr1~1_combout\) # (\spi0|Selector31~0_combout\) ) ) # ( !\spi0|dataIn\(14) & ( (\spi0|WideOr1~1_combout\ & \spi0|Selector31~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|ALT_INV_WideOr1~1_combout\,
	datac => \spi0|ALT_INV_Selector31~0_combout\,
	dataf => \spi0|ALT_INV_dataIn\(14),
	combout => \spi0|dataIn\(14));

-- Location: LABCELL_X81_Y21_N45
\spi0|cordic|z_output[13]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|z_output\(13) = ( \spi0|cordic|core|z_out\(13) & ( (\spi0|cordic|z_output\(13)) # (\spi0|cordic|state.DONE~q\) ) ) # ( !\spi0|cordic|core|z_out\(13) & ( (!\spi0|cordic|state.DONE~q\ & \spi0|cordic|z_output\(13)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|cordic|ALT_INV_state.DONE~q\,
	datad => \spi0|cordic|ALT_INV_z_output\(13),
	dataf => \spi0|cordic|core|ALT_INV_z_out\(13),
	combout => \spi0|cordic|z_output\(13));

-- Location: LABCELL_X81_Y21_N54
\spi0|cordic|y_output[13]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|y_output\(13) = ( \spi0|cordic|core|y_out\(13) & ( (\spi0|cordic|y_output\(13)) # (\spi0|cordic|state.DONE~q\) ) ) # ( !\spi0|cordic|core|y_out\(13) & ( (!\spi0|cordic|state.DONE~q\ & \spi0|cordic|y_output\(13)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi0|cordic|ALT_INV_state.DONE~q\,
	datad => \spi0|cordic|ALT_INV_y_output\(13),
	dataf => \spi0|cordic|core|ALT_INV_y_out\(13),
	combout => \spi0|cordic|y_output\(13));

-- Location: LABCELL_X81_Y21_N57
\spi0|cordic|x_output[13]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|x_output\(13) = ( \spi0|cordic|core|x_out\(13) & ( (\spi0|cordic|x_output\(13)) # (\spi0|cordic|state.DONE~q\) ) ) # ( !\spi0|cordic|core|x_out\(13) & ( (!\spi0|cordic|state.DONE~q\ & \spi0|cordic|x_output\(13)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|cordic|ALT_INV_state.DONE~q\,
	datad => \spi0|cordic|ALT_INV_x_output\(13),
	dataf => \spi0|cordic|core|ALT_INV_x_out\(13),
	combout => \spi0|cordic|x_output\(13));

-- Location: LABCELL_X81_Y21_N48
\spi0|Selector30~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|Selector30~0_combout\ = ( \spi0|Selector24~0_combout\ & ( \spi0|cordic|x_output\(13) & ( (!\spi0|WideOr1~0_combout\) # (\spi0|state.WRITE_PATH~q\) ) ) ) # ( !\spi0|Selector24~0_combout\ & ( \spi0|cordic|x_output\(13) & ( (!\spi0|WideOr1~0_combout\ & 
-- (\spi0|cordic|z_output\(13))) # (\spi0|WideOr1~0_combout\ & ((\spi0|cordic|y_output\(13)))) ) ) ) # ( \spi0|Selector24~0_combout\ & ( !\spi0|cordic|x_output\(13) & ( (\spi0|state.WRITE_PATH~q\ & \spi0|WideOr1~0_combout\) ) ) ) # ( 
-- !\spi0|Selector24~0_combout\ & ( !\spi0|cordic|x_output\(13) & ( (!\spi0|WideOr1~0_combout\ & (\spi0|cordic|z_output\(13))) # (\spi0|WideOr1~0_combout\ & ((\spi0|cordic|y_output\(13)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011000000000000111101010101001100111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_z_output\(13),
	datab => \spi0|cordic|ALT_INV_y_output\(13),
	datac => \spi0|ALT_INV_state.WRITE_PATH~q\,
	datad => \spi0|ALT_INV_WideOr1~0_combout\,
	datae => \spi0|ALT_INV_Selector24~0_combout\,
	dataf => \spi0|cordic|ALT_INV_x_output\(13),
	combout => \spi0|Selector30~0_combout\);

-- Location: LABCELL_X81_Y21_N39
\spi0|dataIn[13]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|dataIn\(13) = ( \spi0|dataIn\(13) & ( (!\spi0|WideOr1~1_combout\) # (\spi0|Selector30~0_combout\) ) ) # ( !\spi0|dataIn\(13) & ( (\spi0|Selector30~0_combout\ & \spi0|WideOr1~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|ALT_INV_Selector30~0_combout\,
	datac => \spi0|ALT_INV_WideOr1~1_combout\,
	dataf => \spi0|ALT_INV_dataIn\(13),
	combout => \spi0|dataIn\(13));

-- Location: LABCELL_X80_Y22_N24
\spi0|cordic|y_output[12]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|y_output\(12) = ( \spi0|cordic|y_output\(12) & ( (!\spi0|cordic|state.DONE~q\) # (\spi0|cordic|core|y_out\(12)) ) ) # ( !\spi0|cordic|y_output\(12) & ( (\spi0|cordic|core|y_out\(12) & \spi0|cordic|state.DONE~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi0|cordic|core|ALT_INV_y_out\(12),
	datac => \spi0|cordic|ALT_INV_state.DONE~q\,
	dataf => \spi0|cordic|ALT_INV_y_output\(12),
	combout => \spi0|cordic|y_output\(12));

-- Location: LABCELL_X80_Y22_N12
\spi0|cordic|z_output[12]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|z_output\(12) = ( \spi0|cordic|core|z_out\(12) & ( (\spi0|cordic|state.DONE~q\) # (\spi0|cordic|z_output\(12)) ) ) # ( !\spi0|cordic|core|z_out\(12) & ( (\spi0|cordic|z_output\(12) & !\spi0|cordic|state.DONE~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi0|cordic|ALT_INV_z_output\(12),
	datac => \spi0|cordic|ALT_INV_state.DONE~q\,
	dataf => \spi0|cordic|core|ALT_INV_z_out\(12),
	combout => \spi0|cordic|z_output\(12));

-- Location: LABCELL_X80_Y22_N18
\spi0|cordic|x_output[12]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|x_output\(12) = ( \spi0|cordic|core|x_out\(12) & ( (\spi0|cordic|state.DONE~q\) # (\spi0|cordic|x_output\(12)) ) ) # ( !\spi0|cordic|core|x_out\(12) & ( (\spi0|cordic|x_output\(12) & !\spi0|cordic|state.DONE~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|cordic|ALT_INV_x_output\(12),
	datad => \spi0|cordic|ALT_INV_state.DONE~q\,
	dataf => \spi0|cordic|core|ALT_INV_x_out\(12),
	combout => \spi0|cordic|x_output\(12));

-- Location: LABCELL_X80_Y22_N54
\spi0|Selector29~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|Selector29~0_combout\ = ( \spi0|state.WRITE_X~q\ & ( \spi0|cordic|x_output\(12) & ( ((!\spi0|state.WRITE_Z~q\ & !\spi0|state.WRITE_Y~q\)) # (\spi0|cordic|z_output\(12)) ) ) ) # ( !\spi0|state.WRITE_X~q\ & ( \spi0|cordic|x_output\(12) & ( 
-- (!\spi0|state.WRITE_Z~q\ & (\spi0|cordic|y_output\(12) & ((\spi0|state.WRITE_Y~q\)))) # (\spi0|state.WRITE_Z~q\ & (((\spi0|cordic|z_output\(12))))) ) ) ) # ( \spi0|state.WRITE_X~q\ & ( !\spi0|cordic|x_output\(12) & ( (\spi0|cordic|z_output\(12) & 
-- ((\spi0|state.WRITE_Y~q\) # (\spi0|state.WRITE_Z~q\))) ) ) ) # ( !\spi0|state.WRITE_X~q\ & ( !\spi0|cordic|x_output\(12) & ( (!\spi0|state.WRITE_Z~q\ & (\spi0|cordic|y_output\(12) & ((\spi0|state.WRITE_Y~q\)))) # (\spi0|state.WRITE_Z~q\ & 
-- (((\spi0|cordic|z_output\(12))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101010011000000110011001100000011010100111111001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_y_output\(12),
	datab => \spi0|cordic|ALT_INV_z_output\(12),
	datac => \spi0|ALT_INV_state.WRITE_Z~q\,
	datad => \spi0|ALT_INV_state.WRITE_Y~q\,
	datae => \spi0|ALT_INV_state.WRITE_X~q\,
	dataf => \spi0|cordic|ALT_INV_x_output\(12),
	combout => \spi0|Selector29~0_combout\);

-- Location: LABCELL_X80_Y22_N36
\spi0|dataIn[12]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|dataIn\(12) = ( \spi0|WideOr1~1_combout\ & ( \spi0|Selector29~0_combout\ ) ) # ( !\spi0|WideOr1~1_combout\ & ( \spi0|dataIn\(12) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi0|ALT_INV_Selector29~0_combout\,
	datac => \spi0|ALT_INV_dataIn\(12),
	dataf => \spi0|ALT_INV_WideOr1~1_combout\,
	combout => \spi0|dataIn\(12));

-- Location: LABCELL_X80_Y19_N9
\spi0|cordic|y_output[11]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|y_output\(11) = ( \spi0|cordic|core|y_out\(11) & ( (\spi0|cordic|state.DONE~q\) # (\spi0|cordic|y_output\(11)) ) ) # ( !\spi0|cordic|core|y_out\(11) & ( (\spi0|cordic|y_output\(11) & !\spi0|cordic|state.DONE~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi0|cordic|ALT_INV_y_output\(11),
	datac => \spi0|cordic|ALT_INV_state.DONE~q\,
	dataf => \spi0|cordic|core|ALT_INV_y_out\(11),
	combout => \spi0|cordic|y_output\(11));

-- Location: LABCELL_X79_Y20_N51
\spi0|cordic|z_output[11]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|z_output\(11) = ( \spi0|cordic|state.DONE~q\ & ( \spi0|cordic|core|z_out\(11) ) ) # ( !\spi0|cordic|state.DONE~q\ & ( \spi0|cordic|core|z_out\(11) & ( \spi0|cordic|z_output\(11) ) ) ) # ( !\spi0|cordic|state.DONE~q\ & ( 
-- !\spi0|cordic|core|z_out\(11) & ( \spi0|cordic|z_output\(11) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000000000000000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \spi0|cordic|ALT_INV_z_output\(11),
	datae => \spi0|cordic|ALT_INV_state.DONE~q\,
	dataf => \spi0|cordic|core|ALT_INV_z_out\(11),
	combout => \spi0|cordic|z_output\(11));

-- Location: LABCELL_X80_Y19_N33
\spi0|cordic|x_output[11]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|x_output\(11) = ( \spi0|cordic|core|x_out\(11) & ( (\spi0|cordic|x_output\(11)) # (\spi0|cordic|state.DONE~q\) ) ) # ( !\spi0|cordic|core|x_out\(11) & ( (!\spi0|cordic|state.DONE~q\ & \spi0|cordic|x_output\(11)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|cordic|ALT_INV_state.DONE~q\,
	datad => \spi0|cordic|ALT_INV_x_output\(11),
	dataf => \spi0|cordic|core|ALT_INV_x_out\(11),
	combout => \spi0|cordic|x_output\(11));

-- Location: LABCELL_X80_Y19_N18
\spi0|Selector28~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|Selector28~0_combout\ = ( \spi0|Selector24~0_combout\ & ( \spi0|cordic|x_output\(11) & ( (!\spi0|WideOr1~0_combout\) # (\spi0|state.WRITE_PATH~q\) ) ) ) # ( !\spi0|Selector24~0_combout\ & ( \spi0|cordic|x_output\(11) & ( (!\spi0|WideOr1~0_combout\ & 
-- ((\spi0|cordic|z_output\(11)))) # (\spi0|WideOr1~0_combout\ & (\spi0|cordic|y_output\(11))) ) ) ) # ( \spi0|Selector24~0_combout\ & ( !\spi0|cordic|x_output\(11) & ( (\spi0|WideOr1~0_combout\ & \spi0|state.WRITE_PATH~q\) ) ) ) # ( 
-- !\spi0|Selector24~0_combout\ & ( !\spi0|cordic|x_output\(11) & ( (!\spi0|WideOr1~0_combout\ & ((\spi0|cordic|z_output\(11)))) # (\spi0|WideOr1~0_combout\ & (\spi0|cordic|y_output\(11))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101000000000000111100110101001101011111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_y_output\(11),
	datab => \spi0|cordic|ALT_INV_z_output\(11),
	datac => \spi0|ALT_INV_WideOr1~0_combout\,
	datad => \spi0|ALT_INV_state.WRITE_PATH~q\,
	datae => \spi0|ALT_INV_Selector24~0_combout\,
	dataf => \spi0|cordic|ALT_INV_x_output\(11),
	combout => \spi0|Selector28~0_combout\);

-- Location: LABCELL_X80_Y19_N30
\spi0|dataIn[11]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|dataIn\(11) = ( \spi0|dataIn\(11) & ( (!\spi0|WideOr1~1_combout\) # (\spi0|Selector28~0_combout\) ) ) # ( !\spi0|dataIn\(11) & ( (\spi0|Selector28~0_combout\ & \spi0|WideOr1~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000111011101110111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|ALT_INV_Selector28~0_combout\,
	datab => \spi0|ALT_INV_WideOr1~1_combout\,
	dataf => \spi0|ALT_INV_dataIn\(11),
	combout => \spi0|dataIn\(11));

-- Location: LABCELL_X79_Y21_N9
\spi0|cordic|x_output[10]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|x_output\(10) = ( \spi0|cordic|core|x_out\(10) & ( (\spi0|cordic|x_output\(10)) # (\spi0|cordic|state.DONE~q\) ) ) # ( !\spi0|cordic|core|x_out\(10) & ( (!\spi0|cordic|state.DONE~q\ & \spi0|cordic|x_output\(10)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_state.DONE~q\,
	datad => \spi0|cordic|ALT_INV_x_output\(10),
	dataf => \spi0|cordic|core|ALT_INV_x_out\(10),
	combout => \spi0|cordic|x_output\(10));

-- Location: LABCELL_X79_Y21_N57
\spi0|cordic|y_output[10]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|y_output\(10) = ( \spi0|cordic|core|y_out\(10) & ( (\spi0|cordic|state.DONE~q\) # (\spi0|cordic|y_output\(10)) ) ) # ( !\spi0|cordic|core|y_out\(10) & ( (\spi0|cordic|y_output\(10) & !\spi0|cordic|state.DONE~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|cordic|ALT_INV_y_output\(10),
	datad => \spi0|cordic|ALT_INV_state.DONE~q\,
	dataf => \spi0|cordic|core|ALT_INV_y_out\(10),
	combout => \spi0|cordic|y_output\(10));

-- Location: LABCELL_X79_Y21_N48
\spi0|cordic|z_output[10]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|z_output\(10) = ( \spi0|cordic|core|z_out\(10) & ( (\spi0|cordic|state.DONE~q\) # (\spi0|cordic|z_output\(10)) ) ) # ( !\spi0|cordic|core|z_out\(10) & ( (\spi0|cordic|z_output\(10) & !\spi0|cordic|state.DONE~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi0|cordic|ALT_INV_z_output\(10),
	datac => \spi0|cordic|ALT_INV_state.DONE~q\,
	dataf => \spi0|cordic|core|ALT_INV_z_out\(10),
	combout => \spi0|cordic|z_output\(10));

-- Location: LABCELL_X79_Y21_N36
\spi0|Selector27~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|Selector27~0_combout\ = ( \spi0|state.WRITE_X~q\ & ( \spi0|cordic|z_output\(10) & ( ((\spi0|state.WRITE_Y~q\) # (\spi0|state.WRITE_Z~q\)) # (\spi0|cordic|x_output\(10)) ) ) ) # ( !\spi0|state.WRITE_X~q\ & ( \spi0|cordic|z_output\(10) & ( 
-- ((\spi0|cordic|y_output\(10) & \spi0|state.WRITE_Y~q\)) # (\spi0|state.WRITE_Z~q\) ) ) ) # ( \spi0|state.WRITE_X~q\ & ( !\spi0|cordic|z_output\(10) & ( (\spi0|cordic|x_output\(10) & (!\spi0|state.WRITE_Z~q\ & !\spi0|state.WRITE_Y~q\)) ) ) ) # ( 
-- !\spi0|state.WRITE_X~q\ & ( !\spi0|cordic|z_output\(10) & ( (\spi0|cordic|y_output\(10) & (!\spi0|state.WRITE_Z~q\ & \spi0|state.WRITE_Y~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000010100000000000000001111001111110101111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_x_output\(10),
	datab => \spi0|cordic|ALT_INV_y_output\(10),
	datac => \spi0|ALT_INV_state.WRITE_Z~q\,
	datad => \spi0|ALT_INV_state.WRITE_Y~q\,
	datae => \spi0|ALT_INV_state.WRITE_X~q\,
	dataf => \spi0|cordic|ALT_INV_z_output\(10),
	combout => \spi0|Selector27~0_combout\);

-- Location: LABCELL_X79_Y21_N0
\spi0|dataIn[10]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|dataIn\(10) = ( \spi0|WideOr1~1_combout\ & ( \spi0|Selector27~0_combout\ ) ) # ( !\spi0|WideOr1~1_combout\ & ( \spi0|dataIn\(10) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|ALT_INV_dataIn\(10),
	datac => \spi0|ALT_INV_Selector27~0_combout\,
	dataf => \spi0|ALT_INV_WideOr1~1_combout\,
	combout => \spi0|dataIn\(10));

-- Location: LABCELL_X80_Y21_N39
\spi0|cordic|z_output[9]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|z_output\(9) = ( \spi0|cordic|core|z_out\(9) & ( (\spi0|cordic|state.DONE~q\) # (\spi0|cordic|z_output\(9)) ) ) # ( !\spi0|cordic|core|z_out\(9) & ( (\spi0|cordic|z_output\(9) & !\spi0|cordic|state.DONE~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|cordic|ALT_INV_z_output\(9),
	datad => \spi0|cordic|ALT_INV_state.DONE~q\,
	dataf => \spi0|cordic|core|ALT_INV_z_out\(9),
	combout => \spi0|cordic|z_output\(9));

-- Location: LABCELL_X80_Y21_N15
\spi0|cordic|x_output[9]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|x_output\(9) = ( \spi0|cordic|core|x_out\(9) & ( (\spi0|cordic|state.DONE~q\) # (\spi0|cordic|x_output\(9)) ) ) # ( !\spi0|cordic|core|x_out\(9) & ( (\spi0|cordic|x_output\(9) & !\spi0|cordic|state.DONE~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|cordic|ALT_INV_x_output\(9),
	datad => \spi0|cordic|ALT_INV_state.DONE~q\,
	dataf => \spi0|cordic|core|ALT_INV_x_out\(9),
	combout => \spi0|cordic|x_output\(9));

-- Location: LABCELL_X80_Y21_N3
\spi0|cordic|y_output[9]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|y_output\(9) = ( \spi0|cordic|core|y_out\(9) & ( (\spi0|cordic|state.DONE~q\) # (\spi0|cordic|y_output\(9)) ) ) # ( !\spi0|cordic|core|y_out\(9) & ( (\spi0|cordic|y_output\(9) & !\spi0|cordic|state.DONE~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_y_output\(9),
	datad => \spi0|cordic|ALT_INV_state.DONE~q\,
	dataf => \spi0|cordic|core|ALT_INV_y_out\(9),
	combout => \spi0|cordic|y_output\(9));

-- Location: LABCELL_X80_Y21_N6
\spi0|Selector26~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|Selector26~0_combout\ = ( \spi0|Selector24~0_combout\ & ( \spi0|cordic|y_output\(9) & ( (!\spi0|WideOr1~0_combout\ & (\spi0|cordic|x_output\(9))) # (\spi0|WideOr1~0_combout\ & ((\spi0|state.WRITE_PATH~q\))) ) ) ) # ( !\spi0|Selector24~0_combout\ & ( 
-- \spi0|cordic|y_output\(9) & ( (\spi0|WideOr1~0_combout\) # (\spi0|cordic|z_output\(9)) ) ) ) # ( \spi0|Selector24~0_combout\ & ( !\spi0|cordic|y_output\(9) & ( (!\spi0|WideOr1~0_combout\ & (\spi0|cordic|x_output\(9))) # (\spi0|WideOr1~0_combout\ & 
-- ((\spi0|state.WRITE_PATH~q\))) ) ) ) # ( !\spi0|Selector24~0_combout\ & ( !\spi0|cordic|y_output\(9) & ( (\spi0|cordic|z_output\(9) & !\spi0|WideOr1~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000001100110000111101010101111111110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_z_output\(9),
	datab => \spi0|cordic|ALT_INV_x_output\(9),
	datac => \spi0|ALT_INV_state.WRITE_PATH~q\,
	datad => \spi0|ALT_INV_WideOr1~0_combout\,
	datae => \spi0|ALT_INV_Selector24~0_combout\,
	dataf => \spi0|cordic|ALT_INV_y_output\(9),
	combout => \spi0|Selector26~0_combout\);

-- Location: LABCELL_X79_Y21_N45
\spi0|dataIn[9]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|dataIn\(9) = ( \spi0|WideOr1~1_combout\ & ( \spi0|Selector26~0_combout\ ) ) # ( !\spi0|WideOr1~1_combout\ & ( \spi0|dataIn\(9) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi0|ALT_INV_Selector26~0_combout\,
	datac => \spi0|ALT_INV_dataIn\(9),
	dataf => \spi0|ALT_INV_WideOr1~1_combout\,
	combout => \spi0|dataIn\(9));

-- Location: MLABCELL_X82_Y22_N57
\spi0|cordic|x_output[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|x_output\(8) = ( \spi0|cordic|core|x_out\(8) & ( (\spi0|cordic|state.DONE~q\) # (\spi0|cordic|x_output\(8)) ) ) # ( !\spi0|cordic|core|x_out\(8) & ( (\spi0|cordic|x_output\(8) & !\spi0|cordic|state.DONE~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|cordic|ALT_INV_x_output\(8),
	datad => \spi0|cordic|ALT_INV_state.DONE~q\,
	dataf => \spi0|cordic|core|ALT_INV_x_out\(8),
	combout => \spi0|cordic|x_output\(8));

-- Location: LABCELL_X81_Y21_N15
\spi0|cordic|z_output[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|z_output\(8) = ( \spi0|cordic|core|z_out\(8) & ( (\spi0|cordic|state.DONE~q\) # (\spi0|cordic|z_output\(8)) ) ) # ( !\spi0|cordic|core|z_out\(8) & ( (\spi0|cordic|z_output\(8) & !\spi0|cordic|state.DONE~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|cordic|ALT_INV_z_output\(8),
	datad => \spi0|cordic|ALT_INV_state.DONE~q\,
	dataf => \spi0|cordic|core|ALT_INV_z_out\(8),
	combout => \spi0|cordic|z_output\(8));

-- Location: MLABCELL_X82_Y22_N3
\spi0|cordic|y_output[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|y_output\(8) = ( \spi0|cordic|core|y_out\(8) & ( (\spi0|cordic|state.DONE~q\) # (\spi0|cordic|y_output\(8)) ) ) # ( !\spi0|cordic|core|y_out\(8) & ( (\spi0|cordic|y_output\(8) & !\spi0|cordic|state.DONE~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_y_output\(8),
	datad => \spi0|cordic|ALT_INV_state.DONE~q\,
	dataf => \spi0|cordic|core|ALT_INV_y_out\(8),
	combout => \spi0|cordic|y_output\(8));

-- Location: LABCELL_X81_Y21_N30
\spi0|Selector25~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|Selector25~0_combout\ = ( \spi0|state.WRITE_Y~q\ & ( \spi0|cordic|y_output\(8) & ( ((!\spi0|state.WRITE_X~q\ & !\spi0|state.WRITE_Z~q\)) # (\spi0|cordic|z_output\(8)) ) ) ) # ( !\spi0|state.WRITE_Y~q\ & ( \spi0|cordic|y_output\(8) & ( 
-- (!\spi0|state.WRITE_Z~q\ & (\spi0|state.WRITE_X~q\ & (\spi0|cordic|x_output\(8)))) # (\spi0|state.WRITE_Z~q\ & (((\spi0|cordic|z_output\(8))))) ) ) ) # ( \spi0|state.WRITE_Y~q\ & ( !\spi0|cordic|y_output\(8) & ( (\spi0|cordic|z_output\(8) & 
-- ((\spi0|state.WRITE_Z~q\) # (\spi0|state.WRITE_X~q\))) ) ) ) # ( !\spi0|state.WRITE_Y~q\ & ( !\spi0|cordic|y_output\(8) & ( (!\spi0|state.WRITE_Z~q\ & (\spi0|state.WRITE_X~q\ & (\spi0|cordic|x_output\(8)))) # (\spi0|state.WRITE_Z~q\ & 
-- (((\spi0|cordic|z_output\(8))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011111000000000101111100010000000111111010000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|ALT_INV_state.WRITE_X~q\,
	datab => \spi0|cordic|ALT_INV_x_output\(8),
	datac => \spi0|ALT_INV_state.WRITE_Z~q\,
	datad => \spi0|cordic|ALT_INV_z_output\(8),
	datae => \spi0|ALT_INV_state.WRITE_Y~q\,
	dataf => \spi0|cordic|ALT_INV_y_output\(8),
	combout => \spi0|Selector25~0_combout\);

-- Location: LABCELL_X81_Y21_N12
\spi0|dataIn[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|dataIn\(8) = ( \spi0|dataIn\(8) & ( (!\spi0|WideOr1~1_combout\) # (\spi0|Selector25~0_combout\) ) ) # ( !\spi0|dataIn\(8) & ( (\spi0|WideOr1~1_combout\ & \spi0|Selector25~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|ALT_INV_WideOr1~1_combout\,
	datac => \spi0|ALT_INV_Selector25~0_combout\,
	dataf => \spi0|ALT_INV_dataIn\(8),
	combout => \spi0|dataIn\(8));

-- Location: MLABCELL_X84_Y20_N21
\spi0|cordic|y_output[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|y_output\(7) = ( \spi0|cordic|core|y_out\(7) & ( (\spi0|cordic|y_output\(7)) # (\spi0|cordic|state.DONE~q\) ) ) # ( !\spi0|cordic|core|y_out\(7) & ( (!\spi0|cordic|state.DONE~q\ & \spi0|cordic|y_output\(7)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi0|cordic|ALT_INV_state.DONE~q\,
	datad => \spi0|cordic|ALT_INV_y_output\(7),
	dataf => \spi0|cordic|core|ALT_INV_y_out\(7),
	combout => \spi0|cordic|y_output\(7));

-- Location: MLABCELL_X84_Y20_N48
\spi0|cordic|x_output[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|x_output\(7) = ( \spi0|cordic|core|x_out\(7) & ( (\spi0|cordic|x_output\(7)) # (\spi0|cordic|state.DONE~q\) ) ) # ( !\spi0|cordic|core|x_out\(7) & ( (!\spi0|cordic|state.DONE~q\ & \spi0|cordic|x_output\(7)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_state.DONE~q\,
	datac => \spi0|cordic|ALT_INV_x_output\(7),
	dataf => \spi0|cordic|core|ALT_INV_x_out\(7),
	combout => \spi0|cordic|x_output\(7));

-- Location: MLABCELL_X84_Y20_N6
\spi0|cordic|z_output[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|z_output\(7) = ( \spi0|cordic|core|z_out\(7) & ( (\spi0|cordic|state.DONE~q\) # (\spi0|cordic|z_output\(7)) ) ) # ( !\spi0|cordic|core|z_out\(7) & ( (\spi0|cordic|z_output\(7) & !\spi0|cordic|state.DONE~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi0|cordic|ALT_INV_z_output\(7),
	datac => \spi0|cordic|ALT_INV_state.DONE~q\,
	dataf => \spi0|cordic|core|ALT_INV_z_out\(7),
	combout => \spi0|cordic|z_output\(7));

-- Location: MLABCELL_X84_Y20_N54
\spi0|Selector24~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|Selector24~1_combout\ = ( \spi0|state.WRITE_PATH~q\ & ( \spi0|cordic|z_output\(7) & ( (!\spi0|WideOr1~0_combout\ & (((!\spi0|Selector24~0_combout\) # (\spi0|cordic|x_output\(7))))) # (\spi0|WideOr1~0_combout\ & (((\spi0|Selector24~0_combout\)) # 
-- (\spi0|cordic|y_output\(7)))) ) ) ) # ( !\spi0|state.WRITE_PATH~q\ & ( \spi0|cordic|z_output\(7) & ( (!\spi0|WideOr1~0_combout\ & (((!\spi0|Selector24~0_combout\) # (\spi0|cordic|x_output\(7))))) # (\spi0|WideOr1~0_combout\ & (\spi0|cordic|y_output\(7) & 
-- ((!\spi0|Selector24~0_combout\)))) ) ) ) # ( \spi0|state.WRITE_PATH~q\ & ( !\spi0|cordic|z_output\(7) & ( (!\spi0|WideOr1~0_combout\ & (((\spi0|cordic|x_output\(7) & \spi0|Selector24~0_combout\)))) # (\spi0|WideOr1~0_combout\ & 
-- (((\spi0|Selector24~0_combout\)) # (\spi0|cordic|y_output\(7)))) ) ) ) # ( !\spi0|state.WRITE_PATH~q\ & ( !\spi0|cordic|z_output\(7) & ( (!\spi0|WideOr1~0_combout\ & (((\spi0|cordic|x_output\(7) & \spi0|Selector24~0_combout\)))) # 
-- (\spi0|WideOr1~0_combout\ & (\spi0|cordic|y_output\(7) & ((!\spi0|Selector24~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110000000001010011111111110101001100001111010100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_y_output\(7),
	datab => \spi0|cordic|ALT_INV_x_output\(7),
	datac => \spi0|ALT_INV_WideOr1~0_combout\,
	datad => \spi0|ALT_INV_Selector24~0_combout\,
	datae => \spi0|ALT_INV_state.WRITE_PATH~q\,
	dataf => \spi0|cordic|ALT_INV_z_output\(7),
	combout => \spi0|Selector24~1_combout\);

-- Location: MLABCELL_X84_Y20_N30
\spi0|dataIn[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|dataIn\(7) = ( \spi0|dataIn\(7) & ( (!\spi0|WideOr1~1_combout\) # (\spi0|Selector24~1_combout\) ) ) # ( !\spi0|dataIn\(7) & ( (\spi0|Selector24~1_combout\ & \spi0|WideOr1~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi0|ALT_INV_Selector24~1_combout\,
	datac => \spi0|ALT_INV_WideOr1~1_combout\,
	dataf => \spi0|ALT_INV_dataIn\(7),
	combout => \spi0|dataIn\(7));

-- Location: MLABCELL_X82_Y18_N51
\spi0|cordic|z_output[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|z_output\(6) = ( \spi0|cordic|core|z_out\(6) & ( (\spi0|cordic|state.DONE~q\) # (\spi0|cordic|z_output\(6)) ) ) # ( !\spi0|cordic|core|z_out\(6) & ( (\spi0|cordic|z_output\(6) & !\spi0|cordic|state.DONE~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_z_output\(6),
	datad => \spi0|cordic|ALT_INV_state.DONE~q\,
	dataf => \spi0|cordic|core|ALT_INV_z_out\(6),
	combout => \spi0|cordic|z_output\(6));

-- Location: MLABCELL_X82_Y18_N27
\spi0|cordic|x_output[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|x_output\(6) = ( \spi0|cordic|core|x_out\(6) & ( (\spi0|cordic|state.DONE~q\) # (\spi0|cordic|x_output\(6)) ) ) # ( !\spi0|cordic|core|x_out\(6) & ( (\spi0|cordic|x_output\(6) & !\spi0|cordic|state.DONE~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_x_output\(6),
	datad => \spi0|cordic|ALT_INV_state.DONE~q\,
	dataf => \spi0|cordic|core|ALT_INV_x_out\(6),
	combout => \spi0|cordic|x_output\(6));

-- Location: MLABCELL_X82_Y18_N9
\spi0|cordic|y_output[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|y_output\(6) = ( \spi0|cordic|state.DONE~q\ & ( \spi0|cordic|core|y_out\(6) ) ) # ( !\spi0|cordic|state.DONE~q\ & ( \spi0|cordic|core|y_out\(6) & ( \spi0|cordic|y_output\(6) ) ) ) # ( !\spi0|cordic|state.DONE~q\ & ( 
-- !\spi0|cordic|core|y_out\(6) & ( \spi0|cordic|y_output\(6) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|cordic|ALT_INV_y_output\(6),
	datae => \spi0|cordic|ALT_INV_state.DONE~q\,
	dataf => \spi0|cordic|core|ALT_INV_y_out\(6),
	combout => \spi0|cordic|y_output\(6));

-- Location: LABCELL_X83_Y18_N54
\spi0|Selector23~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|Selector23~0_combout\ = ( \spi0|state.WRITE_X~q\ & ( \spi0|state.WRITE_Y~q\ & ( \spi0|cordic|z_output\(6) ) ) ) # ( !\spi0|state.WRITE_X~q\ & ( \spi0|state.WRITE_Y~q\ & ( (!\spi0|state.WRITE_Z~q\ & ((\spi0|cordic|y_output\(6)))) # 
-- (\spi0|state.WRITE_Z~q\ & (\spi0|cordic|z_output\(6))) ) ) ) # ( \spi0|state.WRITE_X~q\ & ( !\spi0|state.WRITE_Y~q\ & ( (!\spi0|state.WRITE_Z~q\ & ((\spi0|cordic|x_output\(6)))) # (\spi0|state.WRITE_Z~q\ & (\spi0|cordic|z_output\(6))) ) ) ) # ( 
-- !\spi0|state.WRITE_X~q\ & ( !\spi0|state.WRITE_Y~q\ & ( (\spi0|cordic|z_output\(6) & \spi0|state.WRITE_Z~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101001100110101010100001111010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_z_output\(6),
	datab => \spi0|cordic|ALT_INV_x_output\(6),
	datac => \spi0|cordic|ALT_INV_y_output\(6),
	datad => \spi0|ALT_INV_state.WRITE_Z~q\,
	datae => \spi0|ALT_INV_state.WRITE_X~q\,
	dataf => \spi0|ALT_INV_state.WRITE_Y~q\,
	combout => \spi0|Selector23~0_combout\);

-- Location: MLABCELL_X84_Y19_N45
\spi0|dataIn[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|dataIn\(6) = ( \spi0|Selector23~0_combout\ & ( (\spi0|dataIn\(6)) # (\spi0|WideOr1~1_combout\) ) ) # ( !\spi0|Selector23~0_combout\ & ( (!\spi0|WideOr1~1_combout\ & \spi0|dataIn\(6)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|ALT_INV_WideOr1~1_combout\,
	datac => \spi0|ALT_INV_dataIn\(6),
	dataf => \spi0|ALT_INV_Selector23~0_combout\,
	combout => \spi0|dataIn\(6));

-- Location: MLABCELL_X84_Y18_N18
\spi0|cordic|x_output[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|x_output\(5) = ( \spi0|cordic|core|x_out\(5) & ( (\spi0|cordic|state.DONE~q\) # (\spi0|cordic|x_output\(5)) ) ) # ( !\spi0|cordic|core|x_out\(5) & ( (\spi0|cordic|x_output\(5) & !\spi0|cordic|state.DONE~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi0|cordic|ALT_INV_x_output\(5),
	datac => \spi0|cordic|ALT_INV_state.DONE~q\,
	dataf => \spi0|cordic|core|ALT_INV_x_out\(5),
	combout => \spi0|cordic|x_output\(5));

-- Location: MLABCELL_X84_Y18_N51
\spi0|cordic|y_output[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|y_output\(5) = (!\spi0|cordic|state.DONE~q\ & (\spi0|cordic|y_output\(5))) # (\spi0|cordic|state.DONE~q\ & ((\spi0|cordic|core|y_out\(5))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101010011001101010101001100110101010100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_y_output\(5),
	datab => \spi0|cordic|core|ALT_INV_y_out\(5),
	datad => \spi0|cordic|ALT_INV_state.DONE~q\,
	combout => \spi0|cordic|y_output\(5));

-- Location: MLABCELL_X84_Y18_N9
\spi0|cordic|z_output[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|z_output\(5) = ( \spi0|cordic|z_output\(5) & ( (!\spi0|cordic|state.DONE~q\) # (\spi0|cordic|core|z_out\(5)) ) ) # ( !\spi0|cordic|z_output\(5) & ( (\spi0|cordic|core|z_out\(5) & \spi0|cordic|state.DONE~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi0|cordic|core|ALT_INV_z_out\(5),
	datad => \spi0|cordic|ALT_INV_state.DONE~q\,
	dataf => \spi0|cordic|ALT_INV_z_output\(5),
	combout => \spi0|cordic|z_output\(5));

-- Location: MLABCELL_X84_Y18_N54
\spi0|Selector22~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|Selector22~0_combout\ = ( \spi0|cordic|z_output\(5) & ( \spi0|WideOr1~0_combout\ & ( (!\spi0|Selector24~0_combout\ & (\spi0|cordic|y_output\(5))) # (\spi0|Selector24~0_combout\ & ((\spi0|state.WRITE_PATH~q\))) ) ) ) # ( !\spi0|cordic|z_output\(5) & 
-- ( \spi0|WideOr1~0_combout\ & ( (!\spi0|Selector24~0_combout\ & (\spi0|cordic|y_output\(5))) # (\spi0|Selector24~0_combout\ & ((\spi0|state.WRITE_PATH~q\))) ) ) ) # ( \spi0|cordic|z_output\(5) & ( !\spi0|WideOr1~0_combout\ & ( 
-- (!\spi0|Selector24~0_combout\) # (\spi0|cordic|x_output\(5)) ) ) ) # ( !\spi0|cordic|z_output\(5) & ( !\spi0|WideOr1~0_combout\ & ( (\spi0|cordic|x_output\(5) & \spi0|Selector24~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101111101011111010100110000001111110011000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_x_output\(5),
	datab => \spi0|cordic|ALT_INV_y_output\(5),
	datac => \spi0|ALT_INV_Selector24~0_combout\,
	datad => \spi0|ALT_INV_state.WRITE_PATH~q\,
	datae => \spi0|cordic|ALT_INV_z_output\(5),
	dataf => \spi0|ALT_INV_WideOr1~0_combout\,
	combout => \spi0|Selector22~0_combout\);

-- Location: MLABCELL_X84_Y18_N36
\spi0|dataIn[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|dataIn\(5) = ( \spi0|WideOr1~1_combout\ & ( \spi0|Selector22~0_combout\ ) ) # ( !\spi0|WideOr1~1_combout\ & ( \spi0|dataIn\(5) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|ALT_INV_Selector22~0_combout\,
	datac => \spi0|ALT_INV_dataIn\(5),
	dataf => \spi0|ALT_INV_WideOr1~1_combout\,
	combout => \spi0|dataIn\(5));

-- Location: LABCELL_X83_Y20_N12
\spi0|cordic|x_output[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|x_output\(4) = ( \spi0|cordic|core|x_out\(4) & ( (\spi0|cordic|x_output\(4)) # (\spi0|cordic|state.DONE~q\) ) ) # ( !\spi0|cordic|core|x_out\(4) & ( (!\spi0|cordic|state.DONE~q\ & \spi0|cordic|x_output\(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|cordic|ALT_INV_state.DONE~q\,
	datad => \spi0|cordic|ALT_INV_x_output\(4),
	dataf => \spi0|cordic|core|ALT_INV_x_out\(4),
	combout => \spi0|cordic|x_output\(4));

-- Location: LABCELL_X83_Y20_N42
\spi0|cordic|z_output[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|z_output\(4) = ( \spi0|cordic|core|z_out\(4) & ( (\spi0|cordic|state.DONE~q\) # (\spi0|cordic|z_output\(4)) ) ) # ( !\spi0|cordic|core|z_out\(4) & ( (\spi0|cordic|z_output\(4) & !\spi0|cordic|state.DONE~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi0|cordic|ALT_INV_z_output\(4),
	datac => \spi0|cordic|ALT_INV_state.DONE~q\,
	dataf => \spi0|cordic|core|ALT_INV_z_out\(4),
	combout => \spi0|cordic|z_output\(4));

-- Location: LABCELL_X80_Y20_N42
\spi0|cordic|y_output[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|y_output\(4) = ( \spi0|cordic|core|y_out\(4) & ( (\spi0|cordic|state.DONE~q\) # (\spi0|cordic|y_output\(4)) ) ) # ( !\spi0|cordic|core|y_out\(4) & ( (\spi0|cordic|y_output\(4) & !\spi0|cordic|state.DONE~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi0|cordic|ALT_INV_y_output\(4),
	datac => \spi0|cordic|ALT_INV_state.DONE~q\,
	dataf => \spi0|cordic|core|ALT_INV_y_out\(4),
	combout => \spi0|cordic|y_output\(4));

-- Location: LABCELL_X83_Y20_N6
\spi0|Selector21~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|Selector21~0_combout\ = ( \spi0|state.WRITE_X~q\ & ( \spi0|cordic|y_output\(4) & ( (!\spi0|state.WRITE_Y~q\ & ((!\spi0|state.WRITE_Z~q\ & (\spi0|cordic|x_output\(4))) # (\spi0|state.WRITE_Z~q\ & ((\spi0|cordic|z_output\(4)))))) # 
-- (\spi0|state.WRITE_Y~q\ & (((\spi0|cordic|z_output\(4))))) ) ) ) # ( !\spi0|state.WRITE_X~q\ & ( \spi0|cordic|y_output\(4) & ( (!\spi0|state.WRITE_Z~q\ & ((\spi0|state.WRITE_Y~q\))) # (\spi0|state.WRITE_Z~q\ & (\spi0|cordic|z_output\(4))) ) ) ) # ( 
-- \spi0|state.WRITE_X~q\ & ( !\spi0|cordic|y_output\(4) & ( (!\spi0|state.WRITE_Y~q\ & ((!\spi0|state.WRITE_Z~q\ & (\spi0|cordic|x_output\(4))) # (\spi0|state.WRITE_Z~q\ & ((\spi0|cordic|z_output\(4)))))) # (\spi0|state.WRITE_Y~q\ & 
-- (((\spi0|cordic|z_output\(4))))) ) ) ) # ( !\spi0|state.WRITE_X~q\ & ( !\spi0|cordic|y_output\(4) & ( (\spi0|cordic|z_output\(4) & \spi0|state.WRITE_Z~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011010100110011001100001111001100110101001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_x_output\(4),
	datab => \spi0|cordic|ALT_INV_z_output\(4),
	datac => \spi0|ALT_INV_state.WRITE_Y~q\,
	datad => \spi0|ALT_INV_state.WRITE_Z~q\,
	datae => \spi0|ALT_INV_state.WRITE_X~q\,
	dataf => \spi0|cordic|ALT_INV_y_output\(4),
	combout => \spi0|Selector21~0_combout\);

-- Location: LABCELL_X83_Y20_N48
\spi0|dataIn[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|dataIn\(4) = ( \spi0|dataIn\(4) & ( (!\spi0|WideOr1~1_combout\) # (\spi0|Selector21~0_combout\) ) ) # ( !\spi0|dataIn\(4) & ( (\spi0|Selector21~0_combout\ & \spi0|WideOr1~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi0|ALT_INV_Selector21~0_combout\,
	datac => \spi0|ALT_INV_WideOr1~1_combout\,
	dataf => \spi0|ALT_INV_dataIn\(4),
	combout => \spi0|dataIn\(4));

-- Location: MLABCELL_X84_Y19_N12
\spi0|cordic|z_output[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|z_output\(3) = ( \spi0|cordic|core|z_out\(3) & ( (\spi0|cordic|state.DONE~q\) # (\spi0|cordic|z_output\(3)) ) ) # ( !\spi0|cordic|core|z_out\(3) & ( (\spi0|cordic|z_output\(3) & !\spi0|cordic|state.DONE~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi0|cordic|ALT_INV_z_output\(3),
	datad => \spi0|cordic|ALT_INV_state.DONE~q\,
	dataf => \spi0|cordic|core|ALT_INV_z_out\(3),
	combout => \spi0|cordic|z_output\(3));

-- Location: MLABCELL_X84_Y19_N33
\spi0|cordic|y_output[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|y_output\(3) = ( \spi0|cordic|core|y_out\(3) & ( (\spi0|cordic|state.DONE~q\) # (\spi0|cordic|y_output\(3)) ) ) # ( !\spi0|cordic|core|y_out\(3) & ( (\spi0|cordic|y_output\(3) & !\spi0|cordic|state.DONE~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_y_output\(3),
	datac => \spi0|cordic|ALT_INV_state.DONE~q\,
	dataf => \spi0|cordic|core|ALT_INV_y_out\(3),
	combout => \spi0|cordic|y_output\(3));

-- Location: MLABCELL_X84_Y19_N18
\spi0|cordic|x_output[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|x_output\(3) = ( \spi0|cordic|core|x_out\(3) & ( (\spi0|cordic|state.DONE~q\) # (\spi0|cordic|x_output\(3)) ) ) # ( !\spi0|cordic|core|x_out\(3) & ( (\spi0|cordic|x_output\(3) & !\spi0|cordic|state.DONE~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|cordic|ALT_INV_x_output\(3),
	datad => \spi0|cordic|ALT_INV_state.DONE~q\,
	dataf => \spi0|cordic|core|ALT_INV_x_out\(3),
	combout => \spi0|cordic|x_output\(3));

-- Location: MLABCELL_X84_Y19_N54
\spi0|Selector20~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|Selector20~0_combout\ = ( \spi0|state.WRITE_PATH~q\ & ( \spi0|cordic|x_output\(3) & ( ((!\spi0|WideOr1~0_combout\ & (\spi0|cordic|z_output\(3))) # (\spi0|WideOr1~0_combout\ & ((\spi0|cordic|y_output\(3))))) # (\spi0|Selector24~0_combout\) ) ) ) # ( 
-- !\spi0|state.WRITE_PATH~q\ & ( \spi0|cordic|x_output\(3) & ( (!\spi0|WideOr1~0_combout\ & (((\spi0|Selector24~0_combout\)) # (\spi0|cordic|z_output\(3)))) # (\spi0|WideOr1~0_combout\ & (((\spi0|cordic|y_output\(3) & !\spi0|Selector24~0_combout\)))) ) ) ) 
-- # ( \spi0|state.WRITE_PATH~q\ & ( !\spi0|cordic|x_output\(3) & ( (!\spi0|WideOr1~0_combout\ & (\spi0|cordic|z_output\(3) & ((!\spi0|Selector24~0_combout\)))) # (\spi0|WideOr1~0_combout\ & (((\spi0|Selector24~0_combout\) # (\spi0|cordic|y_output\(3))))) ) 
-- ) ) # ( !\spi0|state.WRITE_PATH~q\ & ( !\spi0|cordic|x_output\(3) & ( (!\spi0|Selector24~0_combout\ & ((!\spi0|WideOr1~0_combout\ & (\spi0|cordic|z_output\(3))) # (\spi0|WideOr1~0_combout\ & ((\spi0|cordic|y_output\(3)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001100000000010100110000111101010011111100000101001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_z_output\(3),
	datab => \spi0|cordic|ALT_INV_y_output\(3),
	datac => \spi0|ALT_INV_WideOr1~0_combout\,
	datad => \spi0|ALT_INV_Selector24~0_combout\,
	datae => \spi0|ALT_INV_state.WRITE_PATH~q\,
	dataf => \spi0|cordic|ALT_INV_x_output\(3),
	combout => \spi0|Selector20~0_combout\);

-- Location: MLABCELL_X84_Y19_N24
\spi0|dataIn[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|dataIn\(3) = ( \spi0|dataIn\(3) & ( (!\spi0|WideOr1~1_combout\) # (\spi0|Selector20~0_combout\) ) ) # ( !\spi0|dataIn\(3) & ( (\spi0|Selector20~0_combout\ & \spi0|WideOr1~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi0|ALT_INV_Selector20~0_combout\,
	datac => \spi0|ALT_INV_WideOr1~1_combout\,
	dataf => \spi0|ALT_INV_dataIn\(3),
	combout => \spi0|dataIn\(3));

-- Location: MLABCELL_X84_Y21_N30
\spi0|cordic|x_output[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|x_output\(2) = ( \spi0|cordic|core|x_out\(2) & ( (\spi0|cordic|state.DONE~q\) # (\spi0|cordic|x_output\(2)) ) ) # ( !\spi0|cordic|core|x_out\(2) & ( (\spi0|cordic|x_output\(2) & !\spi0|cordic|state.DONE~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|cordic|ALT_INV_x_output\(2),
	datad => \spi0|cordic|ALT_INV_state.DONE~q\,
	dataf => \spi0|cordic|core|ALT_INV_x_out\(2),
	combout => \spi0|cordic|x_output\(2));

-- Location: LABCELL_X80_Y20_N3
\spi0|cordic|z_output[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|z_output\(2) = ( \spi0|cordic|state.DONE~q\ & ( \spi0|cordic|core|z_out\(2) ) ) # ( !\spi0|cordic|state.DONE~q\ & ( \spi0|cordic|z_output\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111001100110011001100000000111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi0|cordic|core|ALT_INV_z_out\(2),
	datad => \spi0|cordic|ALT_INV_z_output\(2),
	datae => \spi0|cordic|ALT_INV_state.DONE~q\,
	combout => \spi0|cordic|z_output\(2));

-- Location: LABCELL_X85_Y21_N30
\spi0|cordic|y_output[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|y_output\(2) = ( \spi0|cordic|state.DONE~q\ & ( \spi0|cordic|core|y_out\(2) ) ) # ( !\spi0|cordic|state.DONE~q\ & ( \spi0|cordic|core|y_out\(2) & ( \spi0|cordic|y_output\(2) ) ) ) # ( !\spi0|cordic|state.DONE~q\ & ( 
-- !\spi0|cordic|core|y_out\(2) & ( \spi0|cordic|y_output\(2) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000000000000000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \spi0|cordic|ALT_INV_y_output\(2),
	datae => \spi0|cordic|ALT_INV_state.DONE~q\,
	dataf => \spi0|cordic|core|ALT_INV_y_out\(2),
	combout => \spi0|cordic|y_output\(2));

-- Location: MLABCELL_X84_Y19_N39
\spi0|Selector19~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|Selector19~0_combout\ = ( \spi0|state.WRITE_Y~q\ & ( \spi0|cordic|y_output\(2) & ( ((!\spi0|state.WRITE_X~q\ & !\spi0|state.WRITE_Z~q\)) # (\spi0|cordic|z_output\(2)) ) ) ) # ( !\spi0|state.WRITE_Y~q\ & ( \spi0|cordic|y_output\(2) & ( 
-- (!\spi0|state.WRITE_Z~q\ & (\spi0|cordic|x_output\(2) & ((\spi0|state.WRITE_X~q\)))) # (\spi0|state.WRITE_Z~q\ & (((\spi0|cordic|z_output\(2))))) ) ) ) # ( \spi0|state.WRITE_Y~q\ & ( !\spi0|cordic|y_output\(2) & ( (\spi0|cordic|z_output\(2) & 
-- ((\spi0|state.WRITE_Z~q\) # (\spi0|state.WRITE_X~q\))) ) ) ) # ( !\spi0|state.WRITE_Y~q\ & ( !\spi0|cordic|y_output\(2) & ( (!\spi0|state.WRITE_Z~q\ & (\spi0|cordic|x_output\(2) & ((\spi0|state.WRITE_X~q\)))) # (\spi0|state.WRITE_Z~q\ & 
-- (((\spi0|cordic|z_output\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110011000000110011001100000101001100111111001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_x_output\(2),
	datab => \spi0|cordic|ALT_INV_z_output\(2),
	datac => \spi0|ALT_INV_state.WRITE_X~q\,
	datad => \spi0|ALT_INV_state.WRITE_Z~q\,
	datae => \spi0|ALT_INV_state.WRITE_Y~q\,
	dataf => \spi0|cordic|ALT_INV_y_output\(2),
	combout => \spi0|Selector19~0_combout\);

-- Location: MLABCELL_X84_Y19_N30
\spi0|dataIn[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|dataIn\(2) = ( \spi0|dataIn\(2) & ( (!\spi0|WideOr1~1_combout\) # (\spi0|Selector19~0_combout\) ) ) # ( !\spi0|dataIn\(2) & ( (\spi0|Selector19~0_combout\ & \spi0|WideOr1~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi0|ALT_INV_Selector19~0_combout\,
	datac => \spi0|ALT_INV_WideOr1~1_combout\,
	dataf => \spi0|ALT_INV_dataIn\(2),
	combout => \spi0|dataIn\(2));

-- Location: LABCELL_X85_Y20_N30
\spi0|cordic|z_output[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|z_output\(1) = ( \spi0|cordic|core|z_out\(1) & ( (\spi0|cordic|state.DONE~q\) # (\spi0|cordic|z_output\(1)) ) ) # ( !\spi0|cordic|core|z_out\(1) & ( (\spi0|cordic|z_output\(1) & !\spi0|cordic|state.DONE~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi0|cordic|ALT_INV_z_output\(1),
	datad => \spi0|cordic|ALT_INV_state.DONE~q\,
	dataf => \spi0|cordic|core|ALT_INV_z_out\(1),
	combout => \spi0|cordic|z_output\(1));

-- Location: MLABCELL_X87_Y20_N33
\spi0|cordic|y_output[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|y_output\(1) = ( \spi0|cordic|state.DONE~q\ & ( \spi0|cordic|core|y_out\(1) ) ) # ( !\spi0|cordic|state.DONE~q\ & ( \spi0|cordic|core|y_out\(1) & ( \spi0|cordic|y_output\(1) ) ) ) # ( !\spi0|cordic|state.DONE~q\ & ( 
-- !\spi0|cordic|core|y_out\(1) & ( \spi0|cordic|y_output\(1) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000000000000000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \spi0|cordic|ALT_INV_y_output\(1),
	datae => \spi0|cordic|ALT_INV_state.DONE~q\,
	dataf => \spi0|cordic|core|ALT_INV_y_out\(1),
	combout => \spi0|cordic|y_output\(1));

-- Location: LABCELL_X85_Y20_N33
\spi0|cordic|x_output[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|x_output\(1) = ( \spi0|cordic|core|x_out\(1) & ( (\spi0|cordic|x_output\(1)) # (\spi0|cordic|state.DONE~q\) ) ) # ( !\spi0|cordic|core|x_out\(1) & ( (!\spi0|cordic|state.DONE~q\ & \spi0|cordic|x_output\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_state.DONE~q\,
	datac => \spi0|cordic|ALT_INV_x_output\(1),
	dataf => \spi0|cordic|core|ALT_INV_x_out\(1),
	combout => \spi0|cordic|x_output\(1));

-- Location: LABCELL_X85_Y20_N18
\spi0|Selector17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|Selector17~0_combout\ = ( \spi0|WideOr1~0_combout\ & ( \spi0|cordic|x_output\(1) & ( (!\spi0|Selector24~0_combout\ & (\spi0|cordic|y_output\(1))) # (\spi0|Selector24~0_combout\ & ((\spi0|state.WRITE_PATH~q\))) ) ) ) # ( !\spi0|WideOr1~0_combout\ & ( 
-- \spi0|cordic|x_output\(1) & ( (\spi0|Selector24~0_combout\) # (\spi0|cordic|z_output\(1)) ) ) ) # ( \spi0|WideOr1~0_combout\ & ( !\spi0|cordic|x_output\(1) & ( (!\spi0|Selector24~0_combout\ & (\spi0|cordic|y_output\(1))) # (\spi0|Selector24~0_combout\ & 
-- ((\spi0|state.WRITE_PATH~q\))) ) ) ) # ( !\spi0|WideOr1~0_combout\ & ( !\spi0|cordic|x_output\(1) & ( (\spi0|cordic|z_output\(1) & !\spi0|Selector24~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000001100000011111101011111010111110011000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_z_output\(1),
	datab => \spi0|cordic|ALT_INV_y_output\(1),
	datac => \spi0|ALT_INV_Selector24~0_combout\,
	datad => \spi0|ALT_INV_state.WRITE_PATH~q\,
	datae => \spi0|ALT_INV_WideOr1~0_combout\,
	dataf => \spi0|cordic|ALT_INV_x_output\(1),
	combout => \spi0|Selector17~0_combout\);

-- Location: MLABCELL_X84_Y20_N45
\spi0|dataIn[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|dataIn\(1) = ( \spi0|WideOr1~1_combout\ & ( \spi0|Selector17~0_combout\ ) ) # ( !\spi0|WideOr1~1_combout\ & ( \spi0|dataIn\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi0|ALT_INV_Selector17~0_combout\,
	datac => \spi0|ALT_INV_dataIn\(1),
	dataf => \spi0|ALT_INV_WideOr1~1_combout\,
	combout => \spi0|dataIn\(1));

-- Location: MLABCELL_X84_Y19_N15
\spi0|spi|SPI_FW~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|spi|SPI_FW~0_combout\ = ( \spi0|spi|sck_synchronizer\(1) & ( (!\spi0|spi|sck_synchronizer\(7) & (!\spi0|spi|sck_synchronizer\(6) & \spi0|spi|sck_synchronizer\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000101000000000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi|ALT_INV_sck_synchronizer\(7),
	datac => \spi0|spi|ALT_INV_sck_synchronizer\(6),
	datad => \spi0|spi|ALT_INV_sck_synchronizer\(0),
	dataf => \spi0|spi|ALT_INV_sck_synchronizer\(1),
	combout => \spi0|spi|SPI_FW~0_combout\);

-- Location: FF_X84_Y21_N37
\spi0|spi|MISO_counter[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|spi|MISO_counter[0]~2_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|MISO_counter[0]~DUPLICATE_q\);

-- Location: FF_X84_Y21_N11
\spi0|spi|MISO_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|spi|MISO_counter[2]~4_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|MISO_counter\(2));

-- Location: MLABCELL_X84_Y21_N9
\spi0|spi|MISO_counter[2]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|spi|MISO_counter[2]~4_combout\ = ( \spi0|spi|MISO_counter\(1) & ( !\spi0|spi|MISO_counter\(2) $ (((!\spi0|spi|SPI_FW~0_combout\) # ((!\spi0|spi|MISO_counter[0]~DUPLICATE_q\) # (\spi0|spi|rise_flag~DUPLICATE_q\)))) ) ) # ( !\spi0|spi|MISO_counter\(1) 
-- & ( \spi0|spi|MISO_counter\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100010000111011110001000011101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi|ALT_INV_SPI_FW~0_combout\,
	datab => \spi0|spi|ALT_INV_MISO_counter[0]~DUPLICATE_q\,
	datac => \spi0|spi|ALT_INV_rise_flag~DUPLICATE_q\,
	datad => \spi0|spi|ALT_INV_MISO_counter\(2),
	dataf => \spi0|spi|ALT_INV_MISO_counter\(1),
	combout => \spi0|spi|MISO_counter[2]~4_combout\);

-- Location: FF_X84_Y21_N10
\spi0|spi|MISO_counter[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|spi|MISO_counter[2]~4_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|MISO_counter[2]~DUPLICATE_q\);

-- Location: FF_X84_Y21_N55
\spi0|spi|MISO_counter[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|spi|MISO_counter[1]~3_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|MISO_counter[1]~DUPLICATE_q\);

-- Location: LABCELL_X85_Y21_N45
\spi0|spi|Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|spi|Add0~0_combout\ = ( \spi0|spi|MISO_counter[1]~DUPLICATE_q\ & ( \spi0|spi|MISO_counter[2]~DUPLICATE_q\ & ( (!\spi0|spi|rise_flag~DUPLICATE_q\ & \spi0|spi|MISO_counter[0]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|spi|ALT_INV_rise_flag~DUPLICATE_q\,
	datad => \spi0|spi|ALT_INV_MISO_counter[0]~DUPLICATE_q\,
	datae => \spi0|spi|ALT_INV_MISO_counter[1]~DUPLICATE_q\,
	dataf => \spi0|spi|ALT_INV_MISO_counter[2]~DUPLICATE_q\,
	combout => \spi0|spi|Add0~0_combout\);

-- Location: MLABCELL_X84_Y21_N6
\spi0|spi|MISO_counter[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|spi|MISO_counter[3]~1_combout\ = ( !\spi0|spi|Equal5~0_combout\ & ( !\spi0|spi|MISO_counter\(3) $ (((!\spi0|spi|SPI_FW~0_combout\) # (!\spi0|spi|Add0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111111010000001011111101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi|ALT_INV_SPI_FW~0_combout\,
	datac => \spi0|spi|ALT_INV_Add0~0_combout\,
	datad => \spi0|spi|ALT_INV_MISO_counter\(3),
	dataf => \spi0|spi|ALT_INV_Equal5~0_combout\,
	combout => \spi0|spi|MISO_counter[3]~1_combout\);

-- Location: FF_X84_Y21_N8
\spi0|spi|MISO_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|spi|MISO_counter[3]~1_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|MISO_counter\(3));

-- Location: MLABCELL_X84_Y21_N18
\spi0|spi|MISO_counter[4]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|spi|MISO_counter[4]~0_combout\ = ( !\spi0|spi|Equal5~0_combout\ & ( !\spi0|spi|MISO_counter\(4) $ (((!\spi0|spi|Add0~0_combout\) # ((!\spi0|spi|MISO_counter\(3)) # (!\spi0|spi|SPI_FW~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111111110000000011111111000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi|ALT_INV_Add0~0_combout\,
	datab => \spi0|spi|ALT_INV_MISO_counter\(3),
	datac => \spi0|spi|ALT_INV_SPI_FW~0_combout\,
	datad => \spi0|spi|ALT_INV_MISO_counter\(4),
	dataf => \spi0|spi|ALT_INV_Equal5~0_combout\,
	combout => \spi0|spi|MISO_counter[4]~0_combout\);

-- Location: FF_X84_Y21_N20
\spi0|spi|MISO_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|spi|MISO_counter[4]~0_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|MISO_counter\(4));

-- Location: MLABCELL_X84_Y21_N39
\spi0|spi|Equal5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|spi|Equal5~0_combout\ = ( \spi0|spi|MISO_counter\(4) & ( (!\spi0|spi|MISO_counter[2]~DUPLICATE_q\ & (!\spi0|spi|MISO_counter[0]~DUPLICATE_q\ & (!\spi0|spi|MISO_counter\(3) & !\spi0|spi|MISO_counter[1]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi|ALT_INV_MISO_counter[2]~DUPLICATE_q\,
	datab => \spi0|spi|ALT_INV_MISO_counter[0]~DUPLICATE_q\,
	datac => \spi0|spi|ALT_INV_MISO_counter\(3),
	datad => \spi0|spi|ALT_INV_MISO_counter[1]~DUPLICATE_q\,
	dataf => \spi0|spi|ALT_INV_MISO_counter\(4),
	combout => \spi0|spi|Equal5~0_combout\);

-- Location: MLABCELL_X84_Y21_N36
\spi0|spi|MISO_counter[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|spi|MISO_counter[0]~2_combout\ = ( !\spi0|spi|Equal5~0_combout\ & ( !\spi0|spi|MISO_counter[0]~DUPLICATE_q\ $ (((!\spi0|spi|SPI_FW~0_combout\) # (\spi0|spi|rise_flag~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000110011001111000011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi0|spi|ALT_INV_MISO_counter[0]~DUPLICATE_q\,
	datac => \spi0|spi|ALT_INV_SPI_FW~0_combout\,
	datad => \spi0|spi|ALT_INV_rise_flag~DUPLICATE_q\,
	dataf => \spi0|spi|ALT_INV_Equal5~0_combout\,
	combout => \spi0|spi|MISO_counter[0]~2_combout\);

-- Location: FF_X84_Y21_N38
\spi0|spi|MISO_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|spi|MISO_counter[0]~2_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|MISO_counter\(0));

-- Location: MLABCELL_X84_Y21_N54
\spi0|spi|MISO_counter[1]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|spi|MISO_counter[1]~3_combout\ = ( \spi0|spi|MISO_counter\(0) & ( !\spi0|spi|MISO_counter\(1) $ (((!\spi0|spi|SPI_FW~0_combout\) # (\spi0|spi|rise_flag~q\))) ) ) # ( !\spi0|spi|MISO_counter\(0) & ( \spi0|spi|MISO_counter\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010000101011110101000010101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi|ALT_INV_SPI_FW~0_combout\,
	datac => \spi0|spi|ALT_INV_rise_flag~q\,
	datad => \spi0|spi|ALT_INV_MISO_counter\(1),
	dataf => \spi0|spi|ALT_INV_MISO_counter\(0),
	combout => \spi0|spi|MISO_counter[1]~3_combout\);

-- Location: FF_X84_Y21_N56
\spi0|spi|MISO_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|spi|MISO_counter[1]~3_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|MISO_counter\(1));

-- Location: MLABCELL_X84_Y21_N12
\spi0|spi|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|spi|Equal0~0_combout\ = ( !\spi0|spi|MISO_counter\(3) & ( (!\spi0|spi|MISO_counter\(1) & (!\spi0|spi|MISO_counter\(2) & (!\spi0|spi|MISO_counter\(4) & !\spi0|spi|MISO_counter\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi|ALT_INV_MISO_counter\(1),
	datab => \spi0|spi|ALT_INV_MISO_counter\(2),
	datac => \spi0|spi|ALT_INV_MISO_counter\(4),
	datad => \spi0|spi|ALT_INV_MISO_counter\(0),
	dataf => \spi0|spi|ALT_INV_MISO_counter\(3),
	combout => \spi0|spi|Equal0~0_combout\);

-- Location: MLABCELL_X84_Y22_N45
\spi0|cordic|z_output[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|z_output\(0) = ( \spi0|cordic|core|z_out\(0) & ( (\spi0|cordic|state.DONE~q\) # (\spi0|cordic|z_output\(0)) ) ) # ( !\spi0|cordic|core|z_out\(0) & ( (\spi0|cordic|z_output\(0) & !\spi0|cordic|state.DONE~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|cordic|ALT_INV_z_output\(0),
	datad => \spi0|cordic|ALT_INV_state.DONE~q\,
	dataf => \spi0|cordic|core|ALT_INV_z_out\(0),
	combout => \spi0|cordic|z_output\(0));

-- Location: MLABCELL_X84_Y22_N51
\spi0|cordic|x_output[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|x_output\(0) = ( \spi0|cordic|core|x_out\(0) & ( (\spi0|cordic|state.DONE~q\) # (\spi0|cordic|x_output\(0)) ) ) # ( !\spi0|cordic|core|x_out\(0) & ( (\spi0|cordic|x_output\(0) & !\spi0|cordic|state.DONE~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_x_output\(0),
	datad => \spi0|cordic|ALT_INV_state.DONE~q\,
	dataf => \spi0|cordic|core|ALT_INV_x_out\(0),
	combout => \spi0|cordic|x_output\(0));

-- Location: MLABCELL_X84_Y22_N33
\spi0|cordic|y_output[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|cordic|y_output\(0) = ( \spi0|cordic|y_output\(0) & ( (!\spi0|cordic|state.DONE~q\) # (\spi0|cordic|core|y_out\(0)) ) ) # ( !\spi0|cordic|y_output\(0) & ( (\spi0|cordic|core|y_out\(0) & \spi0|cordic|state.DONE~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi0|cordic|core|ALT_INV_y_out\(0),
	datad => \spi0|cordic|ALT_INV_state.DONE~q\,
	dataf => \spi0|cordic|ALT_INV_y_output\(0),
	combout => \spi0|cordic|y_output\(0));

-- Location: MLABCELL_X84_Y22_N18
\spi0|Selector15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|Selector15~0_combout\ = ( \spi0|state.WRITE_X~q\ & ( \spi0|state.WRITE_Z~q\ & ( \spi0|cordic|z_output\(0) ) ) ) # ( !\spi0|state.WRITE_X~q\ & ( \spi0|state.WRITE_Z~q\ & ( \spi0|cordic|z_output\(0) ) ) ) # ( \spi0|state.WRITE_X~q\ & ( 
-- !\spi0|state.WRITE_Z~q\ & ( (!\spi0|state.WRITE_Y~q\ & ((\spi0|cordic|x_output\(0)))) # (\spi0|state.WRITE_Y~q\ & (\spi0|cordic|z_output\(0))) ) ) ) # ( !\spi0|state.WRITE_X~q\ & ( !\spi0|state.WRITE_Z~q\ & ( (\spi0|cordic|y_output\(0) & 
-- \spi0|state.WRITE_Y~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111001100110101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|cordic|ALT_INV_z_output\(0),
	datab => \spi0|cordic|ALT_INV_x_output\(0),
	datac => \spi0|cordic|ALT_INV_y_output\(0),
	datad => \spi0|ALT_INV_state.WRITE_Y~q\,
	datae => \spi0|ALT_INV_state.WRITE_X~q\,
	dataf => \spi0|ALT_INV_state.WRITE_Z~q\,
	combout => \spi0|Selector15~0_combout\);

-- Location: MLABCELL_X84_Y22_N30
\spi0|dataIn[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|dataIn\(0) = ( \spi0|dataIn\(0) & ( (!\spi0|WideOr1~1_combout\) # (\spi0|Selector15~0_combout\) ) ) # ( !\spi0|dataIn\(0) & ( (\spi0|Selector15~0_combout\ & \spi0|WideOr1~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|ALT_INV_Selector15~0_combout\,
	datad => \spi0|ALT_INV_WideOr1~1_combout\,
	dataf => \spi0|ALT_INV_dataIn\(0),
	combout => \spi0|dataIn\(0));

-- Location: MLABCELL_X84_Y21_N33
\spi0|spi|data_to_sent~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|spi|data_to_sent~2_combout\ = ( \spi0|dataIn\(0) & ( (!\spi0|spi|data_to_sent~0_combout\ & ((\spi0|spi|Equal0~0_combout\) # (\spi0|spi|data_to_sent\(0)))) ) ) # ( !\spi0|dataIn\(0) & ( (!\spi0|spi|data_to_sent~0_combout\ & 
-- (\spi0|spi|data_to_sent\(0) & !\spi0|spi|Equal0~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000000101010001010100010101000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi|ALT_INV_data_to_sent~0_combout\,
	datab => \spi0|spi|ALT_INV_data_to_sent\(0),
	datac => \spi0|spi|ALT_INV_Equal0~0_combout\,
	dataf => \spi0|ALT_INV_dataIn\(0),
	combout => \spi0|spi|data_to_sent~2_combout\);

-- Location: FF_X84_Y21_N17
\spi0|spi|data_to_sent[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \spi0|spi|data_to_sent~2_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|data_to_sent\(0));

-- Location: LABCELL_X83_Y19_N51
\spi0|spi|data_to_sent[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|spi|data_to_sent[1]~1_combout\ = ( \spi0|spi|Equal0~0_combout\ ) # ( !\spi0|spi|Equal0~0_combout\ & ( \spi0|spi|data_to_sent~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \spi0|spi|ALT_INV_data_to_sent~0_combout\,
	dataf => \spi0|spi|ALT_INV_Equal0~0_combout\,
	combout => \spi0|spi|data_to_sent[1]~1_combout\);

-- Location: FF_X84_Y20_N46
\spi0|spi|data_to_sent[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|dataIn\(1),
	asdata => \spi0|spi|data_to_sent\(0),
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => \spi0|spi|data_to_sent~0_combout\,
	ena => \spi0|spi|data_to_sent[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|data_to_sent\(1));

-- Location: FF_X84_Y19_N31
\spi0|spi|data_to_sent[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|dataIn\(2),
	asdata => \spi0|spi|data_to_sent\(1),
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => \spi0|spi|data_to_sent~0_combout\,
	ena => \spi0|spi|data_to_sent[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|data_to_sent\(2));

-- Location: FF_X84_Y19_N25
\spi0|spi|data_to_sent[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|dataIn\(3),
	asdata => \spi0|spi|data_to_sent\(2),
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => \spi0|spi|data_to_sent~0_combout\,
	ena => \spi0|spi|data_to_sent[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|data_to_sent\(3));

-- Location: FF_X83_Y20_N50
\spi0|spi|data_to_sent[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|dataIn\(4),
	asdata => \spi0|spi|data_to_sent\(3),
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => \spi0|spi|data_to_sent~0_combout\,
	ena => \spi0|spi|data_to_sent[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|data_to_sent\(4));

-- Location: FF_X84_Y18_N37
\spi0|spi|data_to_sent[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|dataIn\(5),
	asdata => \spi0|spi|data_to_sent\(4),
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => \spi0|spi|data_to_sent~0_combout\,
	ena => \spi0|spi|data_to_sent[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|data_to_sent\(5));

-- Location: FF_X84_Y19_N46
\spi0|spi|data_to_sent[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|dataIn\(6),
	asdata => \spi0|spi|data_to_sent\(5),
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => \spi0|spi|data_to_sent~0_combout\,
	ena => \spi0|spi|data_to_sent[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|data_to_sent\(6));

-- Location: FF_X84_Y20_N31
\spi0|spi|data_to_sent[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|dataIn\(7),
	asdata => \spi0|spi|data_to_sent\(6),
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => \spi0|spi|data_to_sent~0_combout\,
	ena => \spi0|spi|data_to_sent[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|data_to_sent\(7));

-- Location: FF_X81_Y21_N13
\spi0|spi|data_to_sent[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|dataIn\(8),
	asdata => \spi0|spi|data_to_sent\(7),
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => \spi0|spi|data_to_sent~0_combout\,
	ena => \spi0|spi|data_to_sent[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|data_to_sent\(8));

-- Location: FF_X79_Y21_N46
\spi0|spi|data_to_sent[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|dataIn\(9),
	asdata => \spi0|spi|data_to_sent\(8),
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => \spi0|spi|data_to_sent~0_combout\,
	ena => \spi0|spi|data_to_sent[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|data_to_sent\(9));

-- Location: FF_X79_Y21_N1
\spi0|spi|data_to_sent[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|dataIn\(10),
	asdata => \spi0|spi|data_to_sent\(9),
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => \spi0|spi|data_to_sent~0_combout\,
	ena => \spi0|spi|data_to_sent[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|data_to_sent\(10));

-- Location: FF_X80_Y19_N32
\spi0|spi|data_to_sent[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|dataIn\(11),
	asdata => \spi0|spi|data_to_sent\(10),
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => \spi0|spi|data_to_sent~0_combout\,
	ena => \spi0|spi|data_to_sent[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|data_to_sent\(11));

-- Location: FF_X80_Y22_N37
\spi0|spi|data_to_sent[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|dataIn\(12),
	asdata => \spi0|spi|data_to_sent\(11),
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => \spi0|spi|data_to_sent~0_combout\,
	ena => \spi0|spi|data_to_sent[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|data_to_sent\(12));

-- Location: FF_X81_Y21_N41
\spi0|spi|data_to_sent[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|dataIn\(13),
	asdata => \spi0|spi|data_to_sent\(12),
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => \spi0|spi|data_to_sent~0_combout\,
	ena => \spi0|spi|data_to_sent[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|data_to_sent\(13));

-- Location: FF_X83_Y19_N20
\spi0|spi|data_to_sent[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|dataIn\(14),
	asdata => \spi0|spi|data_to_sent\(13),
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => \spi0|spi|data_to_sent~0_combout\,
	ena => \spi0|spi|data_to_sent[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|data_to_sent\(14));

-- Location: FF_X83_Y19_N50
\spi0|spi|data_to_sent[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|dataIn\(15),
	asdata => \spi0|spi|data_to_sent\(14),
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => \spi0|spi|data_to_sent~0_combout\,
	ena => \spi0|spi|data_to_sent[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|data_to_sent\(15));

-- Location: LABCELL_X79_Y19_N51
\spi0|spi|SPI_MISO~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|spi|SPI_MISO~0_combout\ = ( \spi0|spi|SPI_MISO~q\ & ( \spi0|spi|data_to_sent\(15) ) ) # ( !\spi0|spi|SPI_MISO~q\ & ( \spi0|spi|data_to_sent\(15) & ( (\spi0|spi|data_to_sent~0_combout\ & !\SW[0]~input_o\) ) ) ) # ( \spi0|spi|SPI_MISO~q\ & ( 
-- !\spi0|spi|data_to_sent\(15) & ( (!\spi0|spi|data_to_sent~0_combout\) # (\SW[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101011111010111101010000010100001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi|ALT_INV_data_to_sent~0_combout\,
	datac => \ALT_INV_SW[0]~input_o\,
	datae => \spi0|spi|ALT_INV_SPI_MISO~q\,
	dataf => \spi0|spi|ALT_INV_data_to_sent\(15),
	combout => \spi0|spi|SPI_MISO~0_combout\);

-- Location: FF_X79_Y19_N52
\spi0|spi|SPI_MISO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|spi|SPI_MISO~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|SPI_MISO~q\);

-- Location: FF_X88_Y10_N41
\spi0|blink_hb|counter_output[24]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|blink_hb|Add0~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|blink_hb|counter_output[24]~DUPLICATE_q\);

-- Location: LABCELL_X88_Y11_N0
\spi0|blink_hb|counter_output[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|blink_hb|counter_output[0]~0_combout\ = ( !\spi0|blink_hb|counter_output\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \spi0|blink_hb|ALT_INV_counter_output\(0),
	combout => \spi0|blink_hb|counter_output[0]~0_combout\);

-- Location: FF_X88_Y11_N2
\spi0|blink_hb|counter_output[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|blink_hb|counter_output[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|blink_hb|counter_output\(0));

-- Location: LABCELL_X88_Y11_N30
\spi0|blink_hb|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|blink_hb|Add0~93_sumout\ = SUM(( \spi0|blink_hb|counter_output\(0) ) + ( \spi0|blink_hb|counter_output\(1) ) + ( !VCC ))
-- \spi0|blink_hb|Add0~94\ = CARRY(( \spi0|blink_hb|counter_output\(0) ) + ( \spi0|blink_hb|counter_output\(1) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|blink_hb|ALT_INV_counter_output\(1),
	datad => \spi0|blink_hb|ALT_INV_counter_output\(0),
	cin => GND,
	sumout => \spi0|blink_hb|Add0~93_sumout\,
	cout => \spi0|blink_hb|Add0~94\);

-- Location: LABCELL_X88_Y11_N21
\spi0|blink_hb|counter_output[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|blink_hb|counter_output[1]~feeder_combout\ = \spi0|blink_hb|Add0~93_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|blink_hb|ALT_INV_Add0~93_sumout\,
	combout => \spi0|blink_hb|counter_output[1]~feeder_combout\);

-- Location: FF_X88_Y11_N23
\spi0|blink_hb|counter_output[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|blink_hb|counter_output[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|blink_hb|counter_output\(1));

-- Location: LABCELL_X88_Y11_N33
\spi0|blink_hb|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|blink_hb|Add0~89_sumout\ = SUM(( \spi0|blink_hb|counter_output\(2) ) + ( GND ) + ( \spi0|blink_hb|Add0~94\ ))
-- \spi0|blink_hb|Add0~90\ = CARRY(( \spi0|blink_hb|counter_output\(2) ) + ( GND ) + ( \spi0|blink_hb|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|blink_hb|ALT_INV_counter_output\(2),
	cin => \spi0|blink_hb|Add0~94\,
	sumout => \spi0|blink_hb|Add0~89_sumout\,
	cout => \spi0|blink_hb|Add0~90\);

-- Location: FF_X88_Y11_N35
\spi0|blink_hb|counter_output[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|blink_hb|Add0~89_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|blink_hb|counter_output\(2));

-- Location: LABCELL_X88_Y11_N36
\spi0|blink_hb|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|blink_hb|Add0~85_sumout\ = SUM(( \spi0|blink_hb|counter_output\(3) ) + ( GND ) + ( \spi0|blink_hb|Add0~90\ ))
-- \spi0|blink_hb|Add0~86\ = CARRY(( \spi0|blink_hb|counter_output\(3) ) + ( GND ) + ( \spi0|blink_hb|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \spi0|blink_hb|ALT_INV_counter_output\(3),
	cin => \spi0|blink_hb|Add0~90\,
	sumout => \spi0|blink_hb|Add0~85_sumout\,
	cout => \spi0|blink_hb|Add0~86\);

-- Location: FF_X88_Y11_N38
\spi0|blink_hb|counter_output[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|blink_hb|Add0~85_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|blink_hb|counter_output\(3));

-- Location: LABCELL_X88_Y11_N39
\spi0|blink_hb|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|blink_hb|Add0~81_sumout\ = SUM(( \spi0|blink_hb|counter_output\(4) ) + ( GND ) + ( \spi0|blink_hb|Add0~86\ ))
-- \spi0|blink_hb|Add0~82\ = CARRY(( \spi0|blink_hb|counter_output\(4) ) + ( GND ) + ( \spi0|blink_hb|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|blink_hb|ALT_INV_counter_output\(4),
	cin => \spi0|blink_hb|Add0~86\,
	sumout => \spi0|blink_hb|Add0~81_sumout\,
	cout => \spi0|blink_hb|Add0~82\);

-- Location: FF_X88_Y11_N41
\spi0|blink_hb|counter_output[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|blink_hb|Add0~81_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|blink_hb|counter_output\(4));

-- Location: LABCELL_X88_Y11_N42
\spi0|blink_hb|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|blink_hb|Add0~77_sumout\ = SUM(( \spi0|blink_hb|counter_output\(5) ) + ( GND ) + ( \spi0|blink_hb|Add0~82\ ))
-- \spi0|blink_hb|Add0~78\ = CARRY(( \spi0|blink_hb|counter_output\(5) ) + ( GND ) + ( \spi0|blink_hb|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \spi0|blink_hb|ALT_INV_counter_output\(5),
	cin => \spi0|blink_hb|Add0~82\,
	sumout => \spi0|blink_hb|Add0~77_sumout\,
	cout => \spi0|blink_hb|Add0~78\);

-- Location: FF_X88_Y11_N43
\spi0|blink_hb|counter_output[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|blink_hb|Add0~77_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|blink_hb|counter_output\(5));

-- Location: LABCELL_X88_Y11_N45
\spi0|blink_hb|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|blink_hb|Add0~73_sumout\ = SUM(( \spi0|blink_hb|counter_output\(6) ) + ( GND ) + ( \spi0|blink_hb|Add0~78\ ))
-- \spi0|blink_hb|Add0~74\ = CARRY(( \spi0|blink_hb|counter_output\(6) ) + ( GND ) + ( \spi0|blink_hb|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \spi0|blink_hb|ALT_INV_counter_output\(6),
	cin => \spi0|blink_hb|Add0~78\,
	sumout => \spi0|blink_hb|Add0~73_sumout\,
	cout => \spi0|blink_hb|Add0~74\);

-- Location: FF_X88_Y11_N47
\spi0|blink_hb|counter_output[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|blink_hb|Add0~73_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|blink_hb|counter_output\(6));

-- Location: LABCELL_X88_Y11_N48
\spi0|blink_hb|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|blink_hb|Add0~69_sumout\ = SUM(( \spi0|blink_hb|counter_output\(7) ) + ( GND ) + ( \spi0|blink_hb|Add0~74\ ))
-- \spi0|blink_hb|Add0~70\ = CARRY(( \spi0|blink_hb|counter_output\(7) ) + ( GND ) + ( \spi0|blink_hb|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|blink_hb|ALT_INV_counter_output\(7),
	cin => \spi0|blink_hb|Add0~74\,
	sumout => \spi0|blink_hb|Add0~69_sumout\,
	cout => \spi0|blink_hb|Add0~70\);

-- Location: FF_X88_Y11_N50
\spi0|blink_hb|counter_output[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|blink_hb|Add0~69_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|blink_hb|counter_output\(7));

-- Location: LABCELL_X88_Y11_N51
\spi0|blink_hb|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|blink_hb|Add0~65_sumout\ = SUM(( \spi0|blink_hb|counter_output\(8) ) + ( GND ) + ( \spi0|blink_hb|Add0~70\ ))
-- \spi0|blink_hb|Add0~66\ = CARRY(( \spi0|blink_hb|counter_output\(8) ) + ( GND ) + ( \spi0|blink_hb|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \spi0|blink_hb|ALT_INV_counter_output\(8),
	cin => \spi0|blink_hb|Add0~70\,
	sumout => \spi0|blink_hb|Add0~65_sumout\,
	cout => \spi0|blink_hb|Add0~66\);

-- Location: FF_X88_Y11_N52
\spi0|blink_hb|counter_output[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|blink_hb|Add0~65_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|blink_hb|counter_output\(8));

-- Location: LABCELL_X88_Y11_N54
\spi0|blink_hb|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|blink_hb|Add0~61_sumout\ = SUM(( \spi0|blink_hb|counter_output\(9) ) + ( GND ) + ( \spi0|blink_hb|Add0~66\ ))
-- \spi0|blink_hb|Add0~62\ = CARRY(( \spi0|blink_hb|counter_output\(9) ) + ( GND ) + ( \spi0|blink_hb|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \spi0|blink_hb|ALT_INV_counter_output\(9),
	cin => \spi0|blink_hb|Add0~66\,
	sumout => \spi0|blink_hb|Add0~61_sumout\,
	cout => \spi0|blink_hb|Add0~62\);

-- Location: FF_X88_Y11_N56
\spi0|blink_hb|counter_output[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|blink_hb|Add0~61_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|blink_hb|counter_output\(9));

-- Location: LABCELL_X88_Y11_N57
\spi0|blink_hb|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|blink_hb|Add0~57_sumout\ = SUM(( \spi0|blink_hb|counter_output\(10) ) + ( GND ) + ( \spi0|blink_hb|Add0~62\ ))
-- \spi0|blink_hb|Add0~58\ = CARRY(( \spi0|blink_hb|counter_output\(10) ) + ( GND ) + ( \spi0|blink_hb|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \spi0|blink_hb|ALT_INV_counter_output\(10),
	cin => \spi0|blink_hb|Add0~62\,
	sumout => \spi0|blink_hb|Add0~57_sumout\,
	cout => \spi0|blink_hb|Add0~58\);

-- Location: FF_X88_Y11_N59
\spi0|blink_hb|counter_output[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|blink_hb|Add0~57_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|blink_hb|counter_output\(10));

-- Location: LABCELL_X88_Y10_N0
\spi0|blink_hb|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|blink_hb|Add0~53_sumout\ = SUM(( \spi0|blink_hb|counter_output\(11) ) + ( GND ) + ( \spi0|blink_hb|Add0~58\ ))
-- \spi0|blink_hb|Add0~54\ = CARRY(( \spi0|blink_hb|counter_output\(11) ) + ( GND ) + ( \spi0|blink_hb|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \spi0|blink_hb|ALT_INV_counter_output\(11),
	cin => \spi0|blink_hb|Add0~58\,
	sumout => \spi0|blink_hb|Add0~53_sumout\,
	cout => \spi0|blink_hb|Add0~54\);

-- Location: FF_X88_Y10_N2
\spi0|blink_hb|counter_output[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|blink_hb|Add0~53_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|blink_hb|counter_output\(11));

-- Location: LABCELL_X88_Y10_N3
\spi0|blink_hb|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|blink_hb|Add0~49_sumout\ = SUM(( \spi0|blink_hb|counter_output\(12) ) + ( GND ) + ( \spi0|blink_hb|Add0~54\ ))
-- \spi0|blink_hb|Add0~50\ = CARRY(( \spi0|blink_hb|counter_output\(12) ) + ( GND ) + ( \spi0|blink_hb|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \spi0|blink_hb|ALT_INV_counter_output\(12),
	cin => \spi0|blink_hb|Add0~54\,
	sumout => \spi0|blink_hb|Add0~49_sumout\,
	cout => \spi0|blink_hb|Add0~50\);

-- Location: FF_X88_Y10_N5
\spi0|blink_hb|counter_output[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|blink_hb|Add0~49_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|blink_hb|counter_output\(12));

-- Location: LABCELL_X88_Y10_N6
\spi0|blink_hb|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|blink_hb|Add0~45_sumout\ = SUM(( \spi0|blink_hb|counter_output\(13) ) + ( GND ) + ( \spi0|blink_hb|Add0~50\ ))
-- \spi0|blink_hb|Add0~46\ = CARRY(( \spi0|blink_hb|counter_output\(13) ) + ( GND ) + ( \spi0|blink_hb|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \spi0|blink_hb|ALT_INV_counter_output\(13),
	cin => \spi0|blink_hb|Add0~50\,
	sumout => \spi0|blink_hb|Add0~45_sumout\,
	cout => \spi0|blink_hb|Add0~46\);

-- Location: FF_X88_Y10_N7
\spi0|blink_hb|counter_output[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|blink_hb|Add0~45_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|blink_hb|counter_output\(13));

-- Location: LABCELL_X88_Y10_N9
\spi0|blink_hb|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|blink_hb|Add0~41_sumout\ = SUM(( \spi0|blink_hb|counter_output\(14) ) + ( GND ) + ( \spi0|blink_hb|Add0~46\ ))
-- \spi0|blink_hb|Add0~42\ = CARRY(( \spi0|blink_hb|counter_output\(14) ) + ( GND ) + ( \spi0|blink_hb|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|blink_hb|ALT_INV_counter_output\(14),
	cin => \spi0|blink_hb|Add0~46\,
	sumout => \spi0|blink_hb|Add0~41_sumout\,
	cout => \spi0|blink_hb|Add0~42\);

-- Location: FF_X88_Y10_N11
\spi0|blink_hb|counter_output[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|blink_hb|Add0~41_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|blink_hb|counter_output\(14));

-- Location: LABCELL_X88_Y10_N12
\spi0|blink_hb|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|blink_hb|Add0~37_sumout\ = SUM(( \spi0|blink_hb|counter_output\(15) ) + ( GND ) + ( \spi0|blink_hb|Add0~42\ ))
-- \spi0|blink_hb|Add0~38\ = CARRY(( \spi0|blink_hb|counter_output\(15) ) + ( GND ) + ( \spi0|blink_hb|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi0|blink_hb|ALT_INV_counter_output\(15),
	cin => \spi0|blink_hb|Add0~42\,
	sumout => \spi0|blink_hb|Add0~37_sumout\,
	cout => \spi0|blink_hb|Add0~38\);

-- Location: FF_X88_Y10_N14
\spi0|blink_hb|counter_output[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|blink_hb|Add0~37_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|blink_hb|counter_output\(15));

-- Location: LABCELL_X88_Y10_N15
\spi0|blink_hb|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|blink_hb|Add0~33_sumout\ = SUM(( \spi0|blink_hb|counter_output\(16) ) + ( GND ) + ( \spi0|blink_hb|Add0~38\ ))
-- \spi0|blink_hb|Add0~34\ = CARRY(( \spi0|blink_hb|counter_output\(16) ) + ( GND ) + ( \spi0|blink_hb|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|blink_hb|ALT_INV_counter_output\(16),
	cin => \spi0|blink_hb|Add0~38\,
	sumout => \spi0|blink_hb|Add0~33_sumout\,
	cout => \spi0|blink_hb|Add0~34\);

-- Location: FF_X88_Y10_N17
\spi0|blink_hb|counter_output[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|blink_hb|Add0~33_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|blink_hb|counter_output\(16));

-- Location: LABCELL_X88_Y10_N18
\spi0|blink_hb|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|blink_hb|Add0~29_sumout\ = SUM(( \spi0|blink_hb|counter_output\(17) ) + ( GND ) + ( \spi0|blink_hb|Add0~34\ ))
-- \spi0|blink_hb|Add0~30\ = CARRY(( \spi0|blink_hb|counter_output\(17) ) + ( GND ) + ( \spi0|blink_hb|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|blink_hb|ALT_INV_counter_output\(17),
	cin => \spi0|blink_hb|Add0~34\,
	sumout => \spi0|blink_hb|Add0~29_sumout\,
	cout => \spi0|blink_hb|Add0~30\);

-- Location: FF_X88_Y10_N20
\spi0|blink_hb|counter_output[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|blink_hb|Add0~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|blink_hb|counter_output\(17));

-- Location: LABCELL_X88_Y10_N21
\spi0|blink_hb|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|blink_hb|Add0~25_sumout\ = SUM(( \spi0|blink_hb|counter_output\(18) ) + ( GND ) + ( \spi0|blink_hb|Add0~30\ ))
-- \spi0|blink_hb|Add0~26\ = CARRY(( \spi0|blink_hb|counter_output\(18) ) + ( GND ) + ( \spi0|blink_hb|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \spi0|blink_hb|ALT_INV_counter_output\(18),
	cin => \spi0|blink_hb|Add0~30\,
	sumout => \spi0|blink_hb|Add0~25_sumout\,
	cout => \spi0|blink_hb|Add0~26\);

-- Location: FF_X88_Y10_N23
\spi0|blink_hb|counter_output[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|blink_hb|Add0~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|blink_hb|counter_output\(18));

-- Location: LABCELL_X88_Y10_N24
\spi0|blink_hb|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|blink_hb|Add0~21_sumout\ = SUM(( \spi0|blink_hb|counter_output\(19) ) + ( GND ) + ( \spi0|blink_hb|Add0~26\ ))
-- \spi0|blink_hb|Add0~22\ = CARRY(( \spi0|blink_hb|counter_output\(19) ) + ( GND ) + ( \spi0|blink_hb|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|blink_hb|ALT_INV_counter_output\(19),
	cin => \spi0|blink_hb|Add0~26\,
	sumout => \spi0|blink_hb|Add0~21_sumout\,
	cout => \spi0|blink_hb|Add0~22\);

-- Location: FF_X88_Y10_N26
\spi0|blink_hb|counter_output[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|blink_hb|Add0~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|blink_hb|counter_output\(19));

-- Location: LABCELL_X88_Y10_N27
\spi0|blink_hb|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|blink_hb|Add0~17_sumout\ = SUM(( \spi0|blink_hb|counter_output\(20) ) + ( GND ) + ( \spi0|blink_hb|Add0~22\ ))
-- \spi0|blink_hb|Add0~18\ = CARRY(( \spi0|blink_hb|counter_output\(20) ) + ( GND ) + ( \spi0|blink_hb|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \spi0|blink_hb|ALT_INV_counter_output\(20),
	cin => \spi0|blink_hb|Add0~22\,
	sumout => \spi0|blink_hb|Add0~17_sumout\,
	cout => \spi0|blink_hb|Add0~18\);

-- Location: FF_X88_Y10_N29
\spi0|blink_hb|counter_output[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|blink_hb|Add0~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|blink_hb|counter_output\(20));

-- Location: LABCELL_X88_Y10_N30
\spi0|blink_hb|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|blink_hb|Add0~13_sumout\ = SUM(( \spi0|blink_hb|counter_output\(21) ) + ( GND ) + ( \spi0|blink_hb|Add0~18\ ))
-- \spi0|blink_hb|Add0~14\ = CARRY(( \spi0|blink_hb|counter_output\(21) ) + ( GND ) + ( \spi0|blink_hb|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|blink_hb|ALT_INV_counter_output\(21),
	cin => \spi0|blink_hb|Add0~18\,
	sumout => \spi0|blink_hb|Add0~13_sumout\,
	cout => \spi0|blink_hb|Add0~14\);

-- Location: FF_X88_Y10_N31
\spi0|blink_hb|counter_output[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|blink_hb|Add0~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|blink_hb|counter_output\(21));

-- Location: LABCELL_X88_Y10_N33
\spi0|blink_hb|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|blink_hb|Add0~9_sumout\ = SUM(( \spi0|blink_hb|counter_output\(22) ) + ( GND ) + ( \spi0|blink_hb|Add0~14\ ))
-- \spi0|blink_hb|Add0~10\ = CARRY(( \spi0|blink_hb|counter_output\(22) ) + ( GND ) + ( \spi0|blink_hb|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|blink_hb|ALT_INV_counter_output\(22),
	cin => \spi0|blink_hb|Add0~14\,
	sumout => \spi0|blink_hb|Add0~9_sumout\,
	cout => \spi0|blink_hb|Add0~10\);

-- Location: FF_X88_Y10_N35
\spi0|blink_hb|counter_output[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|blink_hb|Add0~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|blink_hb|counter_output\(22));

-- Location: LABCELL_X88_Y10_N36
\spi0|blink_hb|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|blink_hb|Add0~5_sumout\ = SUM(( \spi0|blink_hb|counter_output\(23) ) + ( GND ) + ( \spi0|blink_hb|Add0~10\ ))
-- \spi0|blink_hb|Add0~6\ = CARRY(( \spi0|blink_hb|counter_output\(23) ) + ( GND ) + ( \spi0|blink_hb|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|blink_hb|ALT_INV_counter_output\(23),
	cin => \spi0|blink_hb|Add0~10\,
	sumout => \spi0|blink_hb|Add0~5_sumout\,
	cout => \spi0|blink_hb|Add0~6\);

-- Location: FF_X88_Y10_N38
\spi0|blink_hb|counter_output[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|blink_hb|Add0~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|blink_hb|counter_output\(23));

-- Location: LABCELL_X88_Y10_N39
\spi0|blink_hb|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|blink_hb|Add0~1_sumout\ = SUM(( \spi0|blink_hb|counter_output[24]~DUPLICATE_q\ ) + ( GND ) + ( \spi0|blink_hb|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|blink_hb|ALT_INV_counter_output[24]~DUPLICATE_q\,
	cin => \spi0|blink_hb|Add0~6\,
	sumout => \spi0|blink_hb|Add0~1_sumout\);

-- Location: FF_X88_Y10_N40
\spi0|blink_hb|counter_output[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|blink_hb|Add0~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|blink_hb|counter_output\(24));

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

-- Location: IOIBUF_X50_Y0_N41
\ARDUINO_IO[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ARDUINO_IO(0),
	o => \ARDUINO_IO[0]~input_o\);

-- Location: IOIBUF_X50_Y0_N58
\ARDUINO_IO[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ARDUINO_IO(1),
	o => \ARDUINO_IO[1]~input_o\);

-- Location: IOIBUF_X54_Y0_N35
\ARDUINO_IO[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ARDUINO_IO(2),
	o => \ARDUINO_IO[2]~input_o\);

-- Location: IOIBUF_X52_Y0_N35
\ARDUINO_IO[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ARDUINO_IO(3),
	o => \ARDUINO_IO[3]~input_o\);

-- Location: IOIBUF_X52_Y0_N1
\ARDUINO_IO[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ARDUINO_IO(4),
	o => \ARDUINO_IO[4]~input_o\);

-- Location: IOIBUF_X52_Y0_N18
\ARDUINO_IO[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ARDUINO_IO(5),
	o => \ARDUINO_IO[5]~input_o\);

-- Location: IOIBUF_X50_Y0_N75
\ARDUINO_IO[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ARDUINO_IO(6),
	o => \ARDUINO_IO[6]~input_o\);

-- Location: IOIBUF_X52_Y0_N52
\ARDUINO_IO[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ARDUINO_IO(7),
	o => \ARDUINO_IO[7]~input_o\);

-- Location: IOIBUF_X58_Y0_N41
\ARDUINO_IO[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ARDUINO_IO(8),
	o => \ARDUINO_IO[8]~input_o\);

-- Location: IOIBUF_X54_Y0_N18
\ARDUINO_IO[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ARDUINO_IO(9),
	o => \ARDUINO_IO[9]~input_o\);

-- Location: IOIBUF_X54_Y0_N1
\ARDUINO_IO[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ARDUINO_IO(10),
	o => \ARDUINO_IO[10]~input_o\);

-- Location: IOIBUF_X54_Y0_N52
\ARDUINO_IO[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ARDUINO_IO(14),
	o => \ARDUINO_IO[14]~input_o\);

-- Location: IOIBUF_X56_Y0_N35
\ARDUINO_IO[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ARDUINO_IO(15),
	o => \ARDUINO_IO[15]~input_o\);

-- Location: IOIBUF_X56_Y0_N52
\ARDUINO_IO[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ARDUINO_IO(12),
	o => \ARDUINO_IO[12]~input_o\);

-- Location: LABCELL_X19_Y25_N0
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


