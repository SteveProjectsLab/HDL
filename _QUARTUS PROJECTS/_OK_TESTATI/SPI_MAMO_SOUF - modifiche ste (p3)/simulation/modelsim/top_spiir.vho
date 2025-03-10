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

-- DATE "01/31/2025 11:25:33"

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

ENTITY 	top_spiir IS
    PORT (
	FPGA_CLK1_50 : IN std_logic;
	SW : IN std_logic_vector(3 DOWNTO 0);
	KEY : IN std_logic_vector(2 DOWNTO 0);
	LED : OUT std_logic_vector(1 DOWNTO 0);
	ARDUINO_IO : INOUT std_logic_vector(15 DOWNTO 0)
	);
END top_spiir;

-- Design Ports Information
-- SW[0]	=>  Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_W24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_W20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_AH17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_AH16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_Y18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[0]	=>  Location: PIN_W15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LED[1]	=>  Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ARDUINO_IO[0]	=>  Location: PIN_AG13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ARDUINO_IO[1]	=>  Location: PIN_AF13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ARDUINO_IO[2]	=>  Location: PIN_AG10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ARDUINO_IO[3]	=>  Location: PIN_AG9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ARDUINO_IO[4]	=>  Location: PIN_U14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ARDUINO_IO[8]	=>  Location: PIN_AF17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ARDUINO_IO[9]	=>  Location: PIN_AE15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ARDUINO_IO[10]	=>  Location: PIN_AF15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ARDUINO_IO[14]	=>  Location: PIN_AH9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ARDUINO_IO[15]	=>  Location: PIN_AG11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ARDUINO_IO[5]	=>  Location: PIN_U13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ARDUINO_IO[6]	=>  Location: PIN_AG8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ARDUINO_IO[7]	=>  Location: PIN_AH8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ARDUINO_IO[11]	=>  Location: PIN_AG16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ARDUINO_IO[12]	=>  Location: PIN_AH11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ARDUINO_IO[13]	=>  Location: PIN_AH12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- FPGA_CLK1_50	=>  Location: PIN_V11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF top_spiir IS
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
SIGNAL ww_KEY : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_LED : std_logic_vector(1 DOWNTO 0);
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \ARDUINO_IO[0]~input_o\ : std_logic;
SIGNAL \ARDUINO_IO[1]~input_o\ : std_logic;
SIGNAL \ARDUINO_IO[2]~input_o\ : std_logic;
SIGNAL \ARDUINO_IO[3]~input_o\ : std_logic;
SIGNAL \ARDUINO_IO[4]~input_o\ : std_logic;
SIGNAL \ARDUINO_IO[8]~input_o\ : std_logic;
SIGNAL \ARDUINO_IO[9]~input_o\ : std_logic;
SIGNAL \ARDUINO_IO[10]~input_o\ : std_logic;
SIGNAL \ARDUINO_IO[14]~input_o\ : std_logic;
SIGNAL \ARDUINO_IO[15]~input_o\ : std_logic;
SIGNAL \ARDUINO_IO[5]~input_o\ : std_logic;
SIGNAL \ARDUINO_IO[6]~input_o\ : std_logic;
SIGNAL \ARDUINO_IO[7]~input_o\ : std_logic;
SIGNAL \ARDUINO_IO[12]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \ARDUINO_IO[13]~input_o\ : std_logic;
SIGNAL \FPGA_CLK1_50~input_o\ : std_logic;
SIGNAL \FPGA_CLK1_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \spi0|spi|wrcnt[0]~3_combout\ : std_logic;
SIGNAL \spi0|spi|sck_synchronizer[4]~DUPLICATE_q\ : std_logic;
SIGNAL \spi0|spi|flag~0_combout\ : std_logic;
SIGNAL \spi0|spi|flag~q\ : std_logic;
SIGNAL \spi0|spi|flag2~0_combout\ : std_logic;
SIGNAL \spi0|spi|flag2~q\ : std_logic;
SIGNAL \spi0|spi|process_0~1_combout\ : std_logic;
SIGNAL \spi0|spi|wrcnt[0]~DUPLICATE_q\ : std_logic;
SIGNAL \spi0|spi|wrcnt[1]~2_combout\ : std_logic;
SIGNAL \spi0|spi|wrcnt[1]~DUPLICATE_q\ : std_logic;
SIGNAL \spi0|spi|wrcnt[2]~1_combout\ : std_logic;
SIGNAL \spi0|spi|wrcnt[2]~DUPLICATE_q\ : std_logic;
SIGNAL \spi0|spi|wrcnt[3]~0_combout\ : std_logic;
SIGNAL \spi0|spi|rd~0_combout\ : std_logic;
SIGNAL \spi0|spi|feed_me~q\ : std_logic;
SIGNAL \spi0|spi|spi_value~10_combout\ : std_logic;
SIGNAL \spi0|spi|spi_value~9_combout\ : std_logic;
SIGNAL \spi0|spi|spi_value[15]~1_combout\ : std_logic;
SIGNAL \spi0|spi|spi_value~8_combout\ : std_logic;
SIGNAL \spi0|spi|spi_value~7_combout\ : std_logic;
SIGNAL \spi0|spi|spi_value~6_combout\ : std_logic;
SIGNAL \spi0|spi|spi_value~5_combout\ : std_logic;
SIGNAL \spi0|spi|spi_value~4_combout\ : std_logic;
SIGNAL \spi0|spi|spi_value~3_combout\ : std_logic;
SIGNAL \spi0|spi|spi_value~2_combout\ : std_logic;
SIGNAL \spi0|spi|spi_value~0_combout\ : std_logic;
SIGNAL \spi0|spi|MISO~q\ : std_logic;
SIGNAL \ARDUINO_IO[11]~input_o\ : std_logic;
SIGNAL \spi0|spi|process_0~0_combout\ : std_logic;
SIGNAL \spi0|spi|rdcnt[0]~3_combout\ : std_logic;
SIGNAL \spi0|spi|rdcnt[0]~DUPLICATE_q\ : std_logic;
SIGNAL \spi0|spi|rdcnt[1]~2_combout\ : std_logic;
SIGNAL \spi0|spi|rdcnt[2]~1_combout\ : std_logic;
SIGNAL \spi0|spi|rdcnt[3]~0_combout\ : std_logic;
SIGNAL \spi0|spi|read_me~0_combout\ : std_logic;
SIGNAL \spi0|spi|read_me~q\ : std_logic;
SIGNAL \spi0|spi|spi_readvalue[0]~feeder_combout\ : std_logic;
SIGNAL \spi0|spi|spi_readvalue[6]~feeder_combout\ : std_logic;
SIGNAL \spi0|spi|spi_readvalue[10]~feeder_combout\ : std_logic;
SIGNAL \spi0|spi|spi_readvalue[11]~DUPLICATE_q\ : std_logic;
SIGNAL \spi0|spi|data_out[14]~feeder_combout\ : std_logic;
SIGNAL \spi0|Equal0~0_combout\ : std_logic;
SIGNAL \spi0|spi|feed_me~DUPLICATE_q\ : std_logic;
SIGNAL \spi0|spi|data_out[3]~feeder_combout\ : std_logic;
SIGNAL \spi0|spi|spi_readvalue[2]~DUPLICATE_q\ : std_logic;
SIGNAL \spi0|spi|data_out[2]~feeder_combout\ : std_logic;
SIGNAL \spi0|spi|data_out[1]~feeder_combout\ : std_logic;
SIGNAL \spi0|Equal0~1_combout\ : std_logic;
SIGNAL \spi0|spi|data_out[8]~feeder_combout\ : std_logic;
SIGNAL \spi0|spi|spi_readvalue[9]~DUPLICATE_q\ : std_logic;
SIGNAL \spi0|spi|data_out[9]~feeder_combout\ : std_logic;
SIGNAL \spi0|spi|spi_readvalue[6]~DUPLICATE_q\ : std_logic;
SIGNAL \spi0|spi|data_out[6]~feeder_combout\ : std_logic;
SIGNAL \spi0|spi|data_out[7]~feeder_combout\ : std_logic;
SIGNAL \spi0|Equal0~2_combout\ : std_logic;
SIGNAL \spi0|Selector0~0_combout\ : std_logic;
SIGNAL \spi0|state.verify~0_combout\ : std_logic;
SIGNAL \spi0|state.verify~q\ : std_logic;
SIGNAL \spi0|Selector1~0_combout\ : std_logic;
SIGNAL \spi0|state.waiting~q\ : std_logic;
SIGNAL \spi0|Selector3~0_combout\ : std_logic;
SIGNAL \spi0|spi|data_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \spi0|spi|rdcnt\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \spi0|spi|sck_synchronizer\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \spi0|LED\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \spi0|spi|wrcnt\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \spi0|spi|spi_readvalue\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \spi0|spi|spi_value\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \spi0|spi|ALT_INV_spi_readvalue[9]~DUPLICATE_q\ : std_logic;
SIGNAL \spi0|spi|ALT_INV_spi_readvalue[6]~DUPLICATE_q\ : std_logic;
SIGNAL \spi0|spi|ALT_INV_spi_readvalue[2]~DUPLICATE_q\ : std_logic;
SIGNAL \spi0|spi|ALT_INV_wrcnt[0]~DUPLICATE_q\ : std_logic;
SIGNAL \spi0|spi|ALT_INV_wrcnt[1]~DUPLICATE_q\ : std_logic;
SIGNAL \spi0|spi|ALT_INV_wrcnt[2]~DUPLICATE_q\ : std_logic;
SIGNAL \spi0|spi|ALT_INV_sck_synchronizer[4]~DUPLICATE_q\ : std_logic;
SIGNAL \spi0|spi|ALT_INV_rdcnt[0]~DUPLICATE_q\ : std_logic;
SIGNAL \spi0|spi|ALT_INV_feed_me~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_ARDUINO_IO[11]~input_o\ : std_logic;
SIGNAL \spi0|ALT_INV_LED\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \spi0|spi|ALT_INV_spi_value\ : std_logic_vector(14 DOWNTO 6);
SIGNAL \spi0|spi|ALT_INV_spi_readvalue\ : std_logic_vector(14 DOWNTO 1);
SIGNAL \spi0|spi|ALT_INV_process_0~1_combout\ : std_logic;
SIGNAL \spi0|spi|ALT_INV_wrcnt\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \spi0|spi|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \spi0|spi|ALT_INV_flag2~q\ : std_logic;
SIGNAL \spi0|spi|ALT_INV_flag~q\ : std_logic;
SIGNAL \spi0|spi|ALT_INV_sck_synchronizer\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \spi0|spi|ALT_INV_rdcnt\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \spi0|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \spi0|spi|ALT_INV_data_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \spi0|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \spi0|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \spi0|spi|ALT_INV_feed_me~q\ : std_logic;
SIGNAL \spi0|ALT_INV_Selector3~0_combout\ : std_logic;
SIGNAL \spi0|ALT_INV_state.verify~q\ : std_logic;
SIGNAL \spi0|ALT_INV_state.waiting~q\ : std_logic;
SIGNAL \spi0|ALT_INV_Selector0~0_combout\ : std_logic;
SIGNAL \spi0|spi|ALT_INV_read_me~q\ : std_logic;

BEGIN

ww_FPGA_CLK1_50 <= FPGA_CLK1_50;
ww_SW <= SW;
ww_KEY <= KEY;
LED <= ww_LED;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\spi0|spi|ALT_INV_spi_readvalue[9]~DUPLICATE_q\ <= NOT \spi0|spi|spi_readvalue[9]~DUPLICATE_q\;
\spi0|spi|ALT_INV_spi_readvalue[6]~DUPLICATE_q\ <= NOT \spi0|spi|spi_readvalue[6]~DUPLICATE_q\;
\spi0|spi|ALT_INV_spi_readvalue[2]~DUPLICATE_q\ <= NOT \spi0|spi|spi_readvalue[2]~DUPLICATE_q\;
\spi0|spi|ALT_INV_wrcnt[0]~DUPLICATE_q\ <= NOT \spi0|spi|wrcnt[0]~DUPLICATE_q\;
\spi0|spi|ALT_INV_wrcnt[1]~DUPLICATE_q\ <= NOT \spi0|spi|wrcnt[1]~DUPLICATE_q\;
\spi0|spi|ALT_INV_wrcnt[2]~DUPLICATE_q\ <= NOT \spi0|spi|wrcnt[2]~DUPLICATE_q\;
\spi0|spi|ALT_INV_sck_synchronizer[4]~DUPLICATE_q\ <= NOT \spi0|spi|sck_synchronizer[4]~DUPLICATE_q\;
\spi0|spi|ALT_INV_rdcnt[0]~DUPLICATE_q\ <= NOT \spi0|spi|rdcnt[0]~DUPLICATE_q\;
\spi0|spi|ALT_INV_feed_me~DUPLICATE_q\ <= NOT \spi0|spi|feed_me~DUPLICATE_q\;
\ALT_INV_ARDUINO_IO[11]~input_o\ <= NOT \ARDUINO_IO[11]~input_o\;
\spi0|ALT_INV_LED\(0) <= NOT \spi0|LED\(0);
\spi0|spi|ALT_INV_spi_value\(6) <= NOT \spi0|spi|spi_value\(6);
\spi0|spi|ALT_INV_spi_value\(7) <= NOT \spi0|spi|spi_value\(7);
\spi0|spi|ALT_INV_spi_value\(8) <= NOT \spi0|spi|spi_value\(8);
\spi0|spi|ALT_INV_spi_value\(9) <= NOT \spi0|spi|spi_value\(9);
\spi0|spi|ALT_INV_spi_value\(10) <= NOT \spi0|spi|spi_value\(10);
\spi0|spi|ALT_INV_spi_value\(11) <= NOT \spi0|spi|spi_value\(11);
\spi0|spi|ALT_INV_spi_value\(12) <= NOT \spi0|spi|spi_value\(12);
\spi0|spi|ALT_INV_spi_value\(13) <= NOT \spi0|spi|spi_value\(13);
\spi0|spi|ALT_INV_spi_value\(14) <= NOT \spi0|spi|spi_value\(14);
\spi0|spi|ALT_INV_spi_readvalue\(9) <= NOT \spi0|spi|spi_readvalue\(9);
\spi0|spi|ALT_INV_spi_readvalue\(8) <= NOT \spi0|spi|spi_readvalue\(8);
\spi0|spi|ALT_INV_spi_readvalue\(7) <= NOT \spi0|spi|spi_readvalue\(7);
\spi0|spi|ALT_INV_spi_readvalue\(5) <= NOT \spi0|spi|spi_readvalue\(5);
\spi0|spi|ALT_INV_spi_readvalue\(3) <= NOT \spi0|spi|spi_readvalue\(3);
\spi0|spi|ALT_INV_spi_readvalue\(1) <= NOT \spi0|spi|spi_readvalue\(1);
\spi0|spi|ALT_INV_spi_readvalue\(14) <= NOT \spi0|spi|spi_readvalue\(14);
\spi0|spi|ALT_INV_process_0~1_combout\ <= NOT \spi0|spi|process_0~1_combout\;
\spi0|spi|ALT_INV_wrcnt\(0) <= NOT \spi0|spi|wrcnt\(0);
\spi0|spi|ALT_INV_wrcnt\(1) <= NOT \spi0|spi|wrcnt\(1);
\spi0|spi|ALT_INV_wrcnt\(2) <= NOT \spi0|spi|wrcnt\(2);
\spi0|spi|ALT_INV_wrcnt\(3) <= NOT \spi0|spi|wrcnt\(3);
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
\spi0|ALT_INV_Equal0~2_combout\ <= NOT \spi0|Equal0~2_combout\;
\spi0|spi|ALT_INV_data_out\(10) <= NOT \spi0|spi|data_out\(10);
\spi0|spi|ALT_INV_data_out\(9) <= NOT \spi0|spi|data_out\(9);
\spi0|spi|ALT_INV_data_out\(8) <= NOT \spi0|spi|data_out\(8);
\spi0|spi|ALT_INV_data_out\(7) <= NOT \spi0|spi|data_out\(7);
\spi0|spi|ALT_INV_data_out\(6) <= NOT \spi0|spi|data_out\(6);
\spi0|ALT_INV_Equal0~1_combout\ <= NOT \spi0|Equal0~1_combout\;
\spi0|spi|ALT_INV_data_out\(5) <= NOT \spi0|spi|data_out\(5);
\spi0|spi|ALT_INV_data_out\(4) <= NOT \spi0|spi|data_out\(4);
\spi0|spi|ALT_INV_data_out\(3) <= NOT \spi0|spi|data_out\(3);
\spi0|spi|ALT_INV_data_out\(2) <= NOT \spi0|spi|data_out\(2);
\spi0|spi|ALT_INV_data_out\(1) <= NOT \spi0|spi|data_out\(1);
\spi0|spi|ALT_INV_data_out\(0) <= NOT \spi0|spi|data_out\(0);
\spi0|ALT_INV_Equal0~0_combout\ <= NOT \spi0|Equal0~0_combout\;
\spi0|spi|ALT_INV_data_out\(15) <= NOT \spi0|spi|data_out\(15);
\spi0|spi|ALT_INV_data_out\(14) <= NOT \spi0|spi|data_out\(14);
\spi0|spi|ALT_INV_data_out\(13) <= NOT \spi0|spi|data_out\(13);
\spi0|spi|ALT_INV_data_out\(12) <= NOT \spi0|spi|data_out\(12);
\spi0|spi|ALT_INV_data_out\(11) <= NOT \spi0|spi|data_out\(11);
\spi0|spi|ALT_INV_feed_me~q\ <= NOT \spi0|spi|feed_me~q\;
\spi0|ALT_INV_Selector3~0_combout\ <= NOT \spi0|Selector3~0_combout\;
\spi0|ALT_INV_state.verify~q\ <= NOT \spi0|state.verify~q\;
\spi0|ALT_INV_state.waiting~q\ <= NOT \spi0|state.waiting~q\;
\spi0|ALT_INV_Selector0~0_combout\ <= NOT \spi0|Selector0~0_combout\;
\spi0|spi|ALT_INV_read_me~q\ <= NOT \spi0|spi|read_me~q\;

-- Location: IOOBUF_X89_Y8_N22
\LED[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \spi0|LED\(0),
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
	o => ARDUINO_IO(0));

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
	o => ARDUINO_IO(1));

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
	o => ARDUINO_IO(2));

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
	o => ARDUINO_IO(3));

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
	o => ARDUINO_IO(4));

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
	o => ARDUINO_IO(8));

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
	o => ARDUINO_IO(9));

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
	o => ARDUINO_IO(10));

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
	o => ARDUINO_IO(14));

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
	o => ARDUINO_IO(15));

-- Location: IOOBUF_X52_Y0_N19
\ARDUINO_IO[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ARDUINO_IO[13]~input_o\,
	oe => VCC,
	devoe => ww_devoe,
	o => ARDUINO_IO(5));

-- Location: IOOBUF_X50_Y0_N76
\ARDUINO_IO[6]~output\ : cyclonev_io_obuf
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
	o => ARDUINO_IO(6));

-- Location: IOOBUF_X52_Y0_N53
\ARDUINO_IO[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ARDUINO_IO[11]~input_o\,
	oe => VCC,
	devoe => ww_devoe,
	o => ARDUINO_IO(7));

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
	o => ARDUINO_IO(11));

-- Location: IOOBUF_X56_Y0_N53
\ARDUINO_IO[12]~output\ : cyclonev_io_obuf
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
	o => ARDUINO_IO(12));

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
	o => ARDUINO_IO(13));

-- Location: IOIBUF_X58_Y0_N75
\ARDUINO_IO[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ARDUINO_IO(13),
	o => \ARDUINO_IO[13]~input_o\);

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

-- Location: LABCELL_X83_Y7_N36
\spi0|spi|wrcnt[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|spi|wrcnt[0]~3_combout\ = ( !\spi0|spi|wrcnt\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \spi0|spi|ALT_INV_wrcnt\(0),
	combout => \spi0|spi|wrcnt[0]~3_combout\);

-- Location: FF_X83_Y7_N17
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
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|sck_synchronizer\(0));

-- Location: FF_X83_Y7_N56
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

-- Location: FF_X82_Y7_N56
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

-- Location: FF_X81_Y7_N28
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
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|sck_synchronizer\(3));

-- Location: FF_X83_Y7_N47
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
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|sck_synchronizer\(4));

-- Location: FF_X83_Y7_N59
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
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|sck_synchronizer\(5));

-- Location: FF_X83_Y7_N46
\spi0|spi|sck_synchronizer[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \spi0|spi|sck_synchronizer\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|sck_synchronizer[4]~DUPLICATE_q\);

-- Location: LABCELL_X83_Y7_N21
\spi0|spi|flag~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|spi|flag~0_combout\ = ( \spi0|spi|sck_synchronizer[4]~DUPLICATE_q\ & ( (\spi0|spi|flag~q\ & (((!\spi0|spi|sck_synchronizer\(5)) # (\spi0|spi|sck_synchronizer\(0))) # (\spi0|spi|sck_synchronizer\(1)))) ) ) # ( 
-- !\spi0|spi|sck_synchronizer[4]~DUPLICATE_q\ & ( ((\spi0|spi|sck_synchronizer\(1) & (!\spi0|spi|sck_synchronizer\(5) & \spi0|spi|sck_synchronizer\(0)))) # (\spi0|spi|flag~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010011111111000001001111111100000000110111110000000011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi|ALT_INV_sck_synchronizer\(1),
	datab => \spi0|spi|ALT_INV_sck_synchronizer\(5),
	datac => \spi0|spi|ALT_INV_sck_synchronizer\(0),
	datad => \spi0|spi|ALT_INV_flag~q\,
	dataf => \spi0|spi|ALT_INV_sck_synchronizer[4]~DUPLICATE_q\,
	combout => \spi0|spi|flag~0_combout\);

-- Location: FF_X83_Y7_N23
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

-- Location: LABCELL_X83_Y7_N18
\spi0|spi|flag2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|spi|flag2~0_combout\ = ( \spi0|spi|sck_synchronizer[4]~DUPLICATE_q\ & ( ((!\spi0|spi|sck_synchronizer\(1) & (\spi0|spi|sck_synchronizer\(5) & !\spi0|spi|sck_synchronizer\(0)))) # (\spi0|spi|flag2~q\) ) ) # ( 
-- !\spi0|spi|sck_synchronizer[4]~DUPLICATE_q\ & ( ((\spi0|spi|sck_synchronizer\(1) & (!\spi0|spi|sck_synchronizer\(5) & \spi0|spi|sck_synchronizer\(0)))) # (\spi0|spi|flag2~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010011111111000001001111111100100000111111110010000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi|ALT_INV_sck_synchronizer\(1),
	datab => \spi0|spi|ALT_INV_sck_synchronizer\(5),
	datac => \spi0|spi|ALT_INV_sck_synchronizer\(0),
	datad => \spi0|spi|ALT_INV_flag2~q\,
	dataf => \spi0|spi|ALT_INV_sck_synchronizer[4]~DUPLICATE_q\,
	combout => \spi0|spi|flag2~0_combout\);

-- Location: FF_X83_Y7_N20
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

-- Location: LABCELL_X83_Y7_N42
\spi0|spi|process_0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|spi|process_0~1_combout\ = ( \spi0|spi|sck_synchronizer\(1) & ( \spi0|spi|sck_synchronizer\(0) & ( (!\spi0|spi|sck_synchronizer\(4) & (!\spi0|spi|sck_synchronizer\(5) & ((!\spi0|spi|flag~q\) # (!\spi0|spi|flag2~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001100100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi|ALT_INV_flag~q\,
	datab => \spi0|spi|ALT_INV_sck_synchronizer\(4),
	datac => \spi0|spi|ALT_INV_flag2~q\,
	datad => \spi0|spi|ALT_INV_sck_synchronizer\(5),
	datae => \spi0|spi|ALT_INV_sck_synchronizer\(1),
	dataf => \spi0|spi|ALT_INV_sck_synchronizer\(0),
	combout => \spi0|spi|process_0~1_combout\);

-- Location: FF_X83_Y7_N38
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

-- Location: FF_X82_Y7_N1
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

-- Location: FF_X83_Y7_N37
\spi0|spi|wrcnt[0]~DUPLICATE\ : dffeas
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
	q => \spi0|spi|wrcnt[0]~DUPLICATE_q\);

-- Location: MLABCELL_X82_Y7_N0
\spi0|spi|wrcnt[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|spi|wrcnt[1]~2_combout\ = ( \spi0|spi|wrcnt\(1) & ( \spi0|spi|wrcnt[0]~DUPLICATE_q\ & ( !\spi0|spi|process_0~1_combout\ ) ) ) # ( !\spi0|spi|wrcnt\(1) & ( \spi0|spi|wrcnt[0]~DUPLICATE_q\ & ( \spi0|spi|process_0~1_combout\ ) ) ) # ( 
-- \spi0|spi|wrcnt\(1) & ( !\spi0|spi|wrcnt[0]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001111000011111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|spi|ALT_INV_process_0~1_combout\,
	datae => \spi0|spi|ALT_INV_wrcnt\(1),
	dataf => \spi0|spi|ALT_INV_wrcnt[0]~DUPLICATE_q\,
	combout => \spi0|spi|wrcnt[1]~2_combout\);

-- Location: FF_X82_Y7_N2
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

-- Location: FF_X82_Y7_N46
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

-- Location: MLABCELL_X82_Y7_N45
\spi0|spi|wrcnt[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|spi|wrcnt[2]~1_combout\ = ( \spi0|spi|wrcnt\(2) & ( \spi0|spi|wrcnt[0]~DUPLICATE_q\ & ( (!\spi0|spi|process_0~1_combout\) # (!\spi0|spi|wrcnt[1]~DUPLICATE_q\) ) ) ) # ( !\spi0|spi|wrcnt\(2) & ( \spi0|spi|wrcnt[0]~DUPLICATE_q\ & ( 
-- (\spi0|spi|process_0~1_combout\ & \spi0|spi|wrcnt[1]~DUPLICATE_q\) ) ) ) # ( \spi0|spi|wrcnt\(2) & ( !\spi0|spi|wrcnt[0]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000010101011111111110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi|ALT_INV_process_0~1_combout\,
	datad => \spi0|spi|ALT_INV_wrcnt[1]~DUPLICATE_q\,
	datae => \spi0|spi|ALT_INV_wrcnt\(2),
	dataf => \spi0|spi|ALT_INV_wrcnt[0]~DUPLICATE_q\,
	combout => \spi0|spi|wrcnt[2]~1_combout\);

-- Location: FF_X82_Y7_N47
\spi0|spi|wrcnt[2]~DUPLICATE\ : dffeas
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
	q => \spi0|spi|wrcnt[2]~DUPLICATE_q\);

-- Location: MLABCELL_X82_Y7_N24
\spi0|spi|wrcnt[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|spi|wrcnt[3]~0_combout\ = ( \spi0|spi|wrcnt\(3) & ( \spi0|spi|wrcnt[0]~DUPLICATE_q\ & ( (!\spi0|spi|process_0~1_combout\) # ((!\spi0|spi|wrcnt[1]~DUPLICATE_q\) # (!\spi0|spi|wrcnt[2]~DUPLICATE_q\)) ) ) ) # ( !\spi0|spi|wrcnt\(3) & ( 
-- \spi0|spi|wrcnt[0]~DUPLICATE_q\ & ( (\spi0|spi|process_0~1_combout\ & (\spi0|spi|wrcnt[1]~DUPLICATE_q\ & \spi0|spi|wrcnt[2]~DUPLICATE_q\)) ) ) ) # ( \spi0|spi|wrcnt\(3) & ( !\spi0|spi|wrcnt[0]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000001011111111111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi|ALT_INV_process_0~1_combout\,
	datac => \spi0|spi|ALT_INV_wrcnt[1]~DUPLICATE_q\,
	datad => \spi0|spi|ALT_INV_wrcnt[2]~DUPLICATE_q\,
	datae => \spi0|spi|ALT_INV_wrcnt\(3),
	dataf => \spi0|spi|ALT_INV_wrcnt[0]~DUPLICATE_q\,
	combout => \spi0|spi|wrcnt[3]~0_combout\);

-- Location: FF_X82_Y7_N25
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

-- Location: LABCELL_X83_Y7_N12
\spi0|spi|rd~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|spi|rd~0_combout\ = ( !\spi0|spi|feed_me~q\ & ( \spi0|spi|wrcnt\(2) & ( (\spi0|spi|wrcnt\(0) & (\spi0|spi|wrcnt\(3) & (\spi0|spi|process_0~1_combout\ & \spi0|spi|wrcnt\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi|ALT_INV_wrcnt\(0),
	datab => \spi0|spi|ALT_INV_wrcnt\(3),
	datac => \spi0|spi|ALT_INV_process_0~1_combout\,
	datad => \spi0|spi|ALT_INV_wrcnt\(1),
	datae => \spi0|spi|ALT_INV_feed_me~q\,
	dataf => \spi0|spi|ALT_INV_wrcnt\(2),
	combout => \spi0|spi|rd~0_combout\);

-- Location: FF_X83_Y7_N14
\spi0|spi|feed_me\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|spi|rd~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|feed_me~q\);

-- Location: MLABCELL_X82_Y7_N39
\spi0|spi|spi_value~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|spi|spi_value~10_combout\ = ( \spi0|spi|spi_value\(6) & ( \spi0|spi|process_0~1_combout\ & ( \spi0|spi|feed_me~q\ ) ) ) # ( !\spi0|spi|spi_value\(6) & ( \spi0|spi|process_0~1_combout\ & ( \spi0|spi|feed_me~q\ ) ) ) # ( \spi0|spi|spi_value\(6) & ( 
-- !\spi0|spi|process_0~1_combout\ ) ) # ( !\spi0|spi|spi_value\(6) & ( !\spi0|spi|process_0~1_combout\ & ( \spi0|spi|feed_me~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|spi|ALT_INV_feed_me~q\,
	datae => \spi0|spi|ALT_INV_spi_value\(6),
	dataf => \spi0|spi|ALT_INV_process_0~1_combout\,
	combout => \spi0|spi|spi_value~10_combout\);

-- Location: FF_X82_Y7_N40
\spi0|spi|spi_value[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|spi|spi_value~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|spi_value\(6));

-- Location: LABCELL_X83_Y7_N33
\spi0|spi|spi_value~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|spi|spi_value~9_combout\ = ( \spi0|spi|spi_value\(6) ) # ( !\spi0|spi|spi_value\(6) & ( \spi0|spi|feed_me~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|spi|ALT_INV_feed_me~q\,
	dataf => \spi0|spi|ALT_INV_spi_value\(6),
	combout => \spi0|spi|spi_value~9_combout\);

-- Location: LABCELL_X83_Y7_N0
\spi0|spi|spi_value[15]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|spi|spi_value[15]~1_combout\ = ( \spi0|spi|process_0~1_combout\ ) # ( !\spi0|spi|process_0~1_combout\ & ( \spi0|spi|feed_me~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi0|spi|ALT_INV_feed_me~q\,
	dataf => \spi0|spi|ALT_INV_process_0~1_combout\,
	combout => \spi0|spi|spi_value[15]~1_combout\);

-- Location: FF_X83_Y7_N34
\spi0|spi|spi_value[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|spi|spi_value~9_combout\,
	ena => \spi0|spi|spi_value[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|spi_value\(7));

-- Location: LABCELL_X83_Y7_N30
\spi0|spi|spi_value~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|spi|spi_value~8_combout\ = ( \spi0|spi|spi_value\(7) & ( !\spi0|spi|feed_me~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi0|spi|ALT_INV_feed_me~q\,
	dataf => \spi0|spi|ALT_INV_spi_value\(7),
	combout => \spi0|spi|spi_value~8_combout\);

-- Location: FF_X83_Y7_N31
\spi0|spi|spi_value[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|spi|spi_value~8_combout\,
	ena => \spi0|spi|spi_value[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|spi_value\(8));

-- Location: LABCELL_X83_Y7_N9
\spi0|spi|spi_value~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|spi|spi_value~7_combout\ = ( \spi0|spi|spi_value\(8) & ( !\spi0|spi|feed_me~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|spi|ALT_INV_feed_me~q\,
	dataf => \spi0|spi|ALT_INV_spi_value\(8),
	combout => \spi0|spi|spi_value~7_combout\);

-- Location: FF_X83_Y7_N11
\spi0|spi|spi_value[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|spi|spi_value~7_combout\,
	ena => \spi0|spi|spi_value[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|spi_value\(9));

-- Location: LABCELL_X83_Y7_N6
\spi0|spi|spi_value~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|spi|spi_value~6_combout\ = ( \spi0|spi|spi_value\(9) & ( !\spi0|spi|feed_me~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi0|spi|ALT_INV_feed_me~q\,
	dataf => \spi0|spi|ALT_INV_spi_value\(9),
	combout => \spi0|spi|spi_value~6_combout\);

-- Location: FF_X83_Y7_N7
\spi0|spi|spi_value[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|spi|spi_value~6_combout\,
	ena => \spi0|spi|spi_value[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|spi_value\(10));

-- Location: LABCELL_X83_Y7_N27
\spi0|spi|spi_value~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|spi|spi_value~5_combout\ = ( \spi0|spi|spi_value\(10) & ( !\spi0|spi|feed_me~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|spi|ALT_INV_feed_me~q\,
	dataf => \spi0|spi|ALT_INV_spi_value\(10),
	combout => \spi0|spi|spi_value~5_combout\);

-- Location: FF_X83_Y7_N28
\spi0|spi|spi_value[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|spi|spi_value~5_combout\,
	ena => \spi0|spi|spi_value[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|spi_value\(11));

-- Location: LABCELL_X83_Y7_N24
\spi0|spi|spi_value~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|spi|spi_value~4_combout\ = ( \spi0|spi|spi_value\(11) & ( !\spi0|spi|feed_me~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi0|spi|ALT_INV_feed_me~q\,
	dataf => \spi0|spi|ALT_INV_spi_value\(11),
	combout => \spi0|spi|spi_value~4_combout\);

-- Location: FF_X83_Y7_N25
\spi0|spi|spi_value[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|spi|spi_value~4_combout\,
	ena => \spi0|spi|spi_value[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|spi_value\(12));

-- Location: LABCELL_X83_Y7_N51
\spi0|spi|spi_value~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|spi|spi_value~3_combout\ = ( \spi0|spi|spi_value\(12) & ( !\spi0|spi|feed_me~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|spi|ALT_INV_feed_me~q\,
	dataf => \spi0|spi|ALT_INV_spi_value\(12),
	combout => \spi0|spi|spi_value~3_combout\);

-- Location: FF_X83_Y7_N53
\spi0|spi|spi_value[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|spi|spi_value~3_combout\,
	ena => \spi0|spi|spi_value[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|spi_value\(13));

-- Location: LABCELL_X83_Y7_N48
\spi0|spi|spi_value~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|spi|spi_value~2_combout\ = (\spi0|spi|spi_value\(13)) # (\spi0|spi|feed_me~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111001111110011111100111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi0|spi|ALT_INV_feed_me~q\,
	datac => \spi0|spi|ALT_INV_spi_value\(13),
	combout => \spi0|spi|spi_value~2_combout\);

-- Location: FF_X83_Y7_N50
\spi0|spi|spi_value[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|spi|spi_value~2_combout\,
	ena => \spi0|spi|spi_value[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|spi_value\(14));

-- Location: LABCELL_X83_Y7_N3
\spi0|spi|spi_value~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|spi|spi_value~0_combout\ = ( \spi0|spi|spi_value\(14) ) # ( !\spi0|spi|spi_value\(14) & ( \spi0|spi|feed_me~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|spi|ALT_INV_feed_me~q\,
	dataf => \spi0|spi|ALT_INV_spi_value\(14),
	combout => \spi0|spi|spi_value~0_combout\);

-- Location: FF_X83_Y7_N5
\spi0|spi|spi_value[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|spi|spi_value~0_combout\,
	ena => \spi0|spi|spi_value[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|spi_value\(15));

-- Location: FF_X83_Y7_N40
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

-- Location: IOIBUF_X58_Y0_N58
\ARDUINO_IO[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ARDUINO_IO(11),
	o => \ARDUINO_IO[11]~input_o\);

-- Location: LABCELL_X83_Y7_N57
\spi0|spi|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|spi|process_0~0_combout\ = ( \spi0|spi|sck_synchronizer\(4) & ( \spi0|spi|flag2~q\ & ( (!\spi0|spi|sck_synchronizer\(1) & (!\spi0|spi|sck_synchronizer\(0) & (\spi0|spi|sck_synchronizer\(5) & \spi0|spi|flag~q\))) ) ) ) # ( 
-- \spi0|spi|sck_synchronizer\(4) & ( !\spi0|spi|flag2~q\ & ( (!\spi0|spi|sck_synchronizer\(1) & (!\spi0|spi|sck_synchronizer\(0) & \spi0|spi|sck_synchronizer\(5))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010000000100000000000000000000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi|ALT_INV_sck_synchronizer\(1),
	datab => \spi0|spi|ALT_INV_sck_synchronizer\(0),
	datac => \spi0|spi|ALT_INV_sck_synchronizer\(5),
	datad => \spi0|spi|ALT_INV_flag~q\,
	datae => \spi0|spi|ALT_INV_sck_synchronizer\(4),
	dataf => \spi0|spi|ALT_INV_flag2~q\,
	combout => \spi0|spi|process_0~0_combout\);

-- Location: FF_X84_Y7_N7
\spi0|spi|rdcnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|spi|rdcnt[0]~3_combout\,
	ena => \spi0|spi|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|rdcnt\(0));

-- Location: MLABCELL_X84_Y7_N6
\spi0|spi|rdcnt[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|spi|rdcnt[0]~3_combout\ = ( !\spi0|spi|rdcnt\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \spi0|spi|ALT_INV_rdcnt\(0),
	combout => \spi0|spi|rdcnt[0]~3_combout\);

-- Location: FF_X84_Y7_N8
\spi0|spi|rdcnt[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|spi|rdcnt[0]~3_combout\,
	ena => \spi0|spi|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|rdcnt[0]~DUPLICATE_q\);

-- Location: MLABCELL_X84_Y7_N33
\spi0|spi|rdcnt[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|spi|rdcnt[1]~2_combout\ = ( \spi0|spi|process_0~0_combout\ & ( !\spi0|spi|rdcnt[0]~DUPLICATE_q\ $ (!\spi0|spi|rdcnt\(1)) ) ) # ( !\spi0|spi|process_0~0_combout\ & ( \spi0|spi|rdcnt\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|spi|ALT_INV_rdcnt[0]~DUPLICATE_q\,
	datad => \spi0|spi|ALT_INV_rdcnt\(1),
	dataf => \spi0|spi|ALT_INV_process_0~0_combout\,
	combout => \spi0|spi|rdcnt[1]~2_combout\);

-- Location: FF_X84_Y7_N35
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

-- Location: MLABCELL_X84_Y7_N30
\spi0|spi|rdcnt[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|spi|rdcnt[2]~1_combout\ = ( \spi0|spi|process_0~0_combout\ & ( !\spi0|spi|rdcnt\(2) $ (((!\spi0|spi|rdcnt[0]~DUPLICATE_q\) # (!\spi0|spi|rdcnt\(1)))) ) ) # ( !\spi0|spi|process_0~0_combout\ & ( \spi0|spi|rdcnt\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000011111111000000001111111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi0|spi|ALT_INV_rdcnt[0]~DUPLICATE_q\,
	datac => \spi0|spi|ALT_INV_rdcnt\(1),
	datad => \spi0|spi|ALT_INV_rdcnt\(2),
	dataf => \spi0|spi|ALT_INV_process_0~0_combout\,
	combout => \spi0|spi|rdcnt[2]~1_combout\);

-- Location: FF_X84_Y7_N32
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

-- Location: MLABCELL_X84_Y7_N27
\spi0|spi|rdcnt[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|spi|rdcnt[3]~0_combout\ = ( \spi0|spi|rdcnt\(3) & ( \spi0|spi|rdcnt\(0) & ( (!\spi0|spi|process_0~0_combout\) # ((!\spi0|spi|rdcnt\(2)) # (!\spi0|spi|rdcnt\(1))) ) ) ) # ( !\spi0|spi|rdcnt\(3) & ( \spi0|spi|rdcnt\(0) & ( 
-- (\spi0|spi|process_0~0_combout\ & (\spi0|spi|rdcnt\(2) & \spi0|spi|rdcnt\(1))) ) ) ) # ( \spi0|spi|rdcnt\(3) & ( !\spi0|spi|rdcnt\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000001011111111111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi|ALT_INV_process_0~0_combout\,
	datac => \spi0|spi|ALT_INV_rdcnt\(2),
	datad => \spi0|spi|ALT_INV_rdcnt\(1),
	datae => \spi0|spi|ALT_INV_rdcnt\(3),
	dataf => \spi0|spi|ALT_INV_rdcnt\(0),
	combout => \spi0|spi|rdcnt[3]~0_combout\);

-- Location: FF_X84_Y7_N29
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

-- Location: MLABCELL_X84_Y7_N57
\spi0|spi|read_me~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|spi|read_me~0_combout\ = ( \spi0|spi|read_me~q\ & ( \spi0|spi|process_0~0_combout\ ) ) # ( !\spi0|spi|read_me~q\ & ( \spi0|spi|process_0~0_combout\ & ( (\spi0|spi|rdcnt\(1) & (\spi0|spi|rdcnt[0]~DUPLICATE_q\ & (\spi0|spi|rdcnt\(2) & 
-- \spi0|spi|rdcnt\(3)))) ) ) ) # ( \spi0|spi|read_me~q\ & ( !\spi0|spi|process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi|ALT_INV_rdcnt\(1),
	datab => \spi0|spi|ALT_INV_rdcnt[0]~DUPLICATE_q\,
	datac => \spi0|spi|ALT_INV_rdcnt\(2),
	datad => \spi0|spi|ALT_INV_rdcnt\(3),
	datae => \spi0|spi|ALT_INV_read_me~q\,
	dataf => \spi0|spi|ALT_INV_process_0~0_combout\,
	combout => \spi0|spi|read_me~0_combout\);

-- Location: FF_X84_Y7_N26
\spi0|spi|read_me\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \spi0|spi|read_me~0_combout\,
	sclr => \spi0|spi|read_me~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|read_me~q\);

-- Location: MLABCELL_X82_Y7_N21
\spi0|spi|spi_readvalue[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|spi|spi_readvalue[0]~feeder_combout\ = ( \ARDUINO_IO[11]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_ARDUINO_IO[11]~input_o\,
	combout => \spi0|spi|spi_readvalue[0]~feeder_combout\);

-- Location: FF_X82_Y7_N23
\spi0|spi|spi_readvalue[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|spi|spi_readvalue[0]~feeder_combout\,
	ena => \spi0|spi|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|spi_readvalue\(0));

-- Location: FF_X82_Y7_N50
\spi0|spi|spi_readvalue[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \spi0|spi|spi_readvalue\(0),
	sload => VCC,
	ena => \spi0|spi|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|spi_readvalue\(1));

-- Location: FF_X82_Y7_N35
\spi0|spi|spi_readvalue[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \spi0|spi|spi_readvalue\(1),
	sload => VCC,
	ena => \spi0|spi|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|spi_readvalue\(2));

-- Location: FF_X82_Y7_N14
\spi0|spi|spi_readvalue[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \spi0|spi|spi_readvalue\(2),
	sload => VCC,
	ena => \spi0|spi|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|spi_readvalue\(3));

-- Location: FF_X84_Y7_N11
\spi0|spi|spi_readvalue[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \spi0|spi|spi_readvalue\(3),
	sload => VCC,
	ena => \spi0|spi|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|spi_readvalue\(4));

-- Location: FF_X84_Y7_N46
\spi0|spi|spi_readvalue[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \spi0|spi|spi_readvalue\(4),
	sload => VCC,
	ena => \spi0|spi|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|spi_readvalue\(5));

-- Location: MLABCELL_X84_Y7_N3
\spi0|spi|spi_readvalue[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|spi|spi_readvalue[6]~feeder_combout\ = ( \spi0|spi|spi_readvalue\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \spi0|spi|ALT_INV_spi_readvalue\(5),
	combout => \spi0|spi|spi_readvalue[6]~feeder_combout\);

-- Location: FF_X84_Y7_N5
\spi0|spi|spi_readvalue[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|spi|spi_readvalue[6]~feeder_combout\,
	ena => \spi0|spi|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|spi_readvalue\(6));

-- Location: FF_X84_Y7_N1
\spi0|spi|spi_readvalue[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \spi0|spi|spi_readvalue\(6),
	sload => VCC,
	ena => \spi0|spi|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|spi_readvalue\(7));

-- Location: FF_X84_Y7_N50
\spi0|spi|spi_readvalue[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \spi0|spi|spi_readvalue\(7),
	sload => VCC,
	ena => \spi0|spi|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|spi_readvalue\(8));

-- Location: FF_X84_Y7_N41
\spi0|spi|spi_readvalue[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \spi0|spi|spi_readvalue\(8),
	sload => VCC,
	ena => \spi0|spi|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|spi_readvalue\(9));

-- Location: MLABCELL_X84_Y7_N42
\spi0|spi|spi_readvalue[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|spi|spi_readvalue[10]~feeder_combout\ = \spi0|spi|spi_readvalue\(9)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi0|spi|ALT_INV_spi_readvalue\(9),
	combout => \spi0|spi|spi_readvalue[10]~feeder_combout\);

-- Location: FF_X84_Y7_N43
\spi0|spi|spi_readvalue[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|spi|spi_readvalue[10]~feeder_combout\,
	ena => \spi0|spi|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|spi_readvalue\(10));

-- Location: FF_X84_Y7_N55
\spi0|spi|spi_readvalue[11]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \spi0|spi|spi_readvalue\(10),
	sload => VCC,
	ena => \spi0|spi|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|spi_readvalue[11]~DUPLICATE_q\);

-- Location: FF_X85_Y7_N50
\spi0|spi|data_out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \spi0|spi|spi_readvalue[11]~DUPLICATE_q\,
	sload => VCC,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|data_out\(11));

-- Location: FF_X84_Y7_N56
\spi0|spi|spi_readvalue[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \spi0|spi|spi_readvalue\(10),
	sload => VCC,
	ena => \spi0|spi|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|spi_readvalue\(11));

-- Location: FF_X84_Y7_N37
\spi0|spi|spi_readvalue[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \spi0|spi|spi_readvalue\(11),
	sload => VCC,
	ena => \spi0|spi|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|spi_readvalue\(12));

-- Location: FF_X84_Y7_N20
\spi0|spi|spi_readvalue[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \spi0|spi|spi_readvalue\(12),
	sload => VCC,
	ena => \spi0|spi|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|spi_readvalue\(13));

-- Location: FF_X84_Y7_N52
\spi0|spi|spi_readvalue[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \spi0|spi|spi_readvalue\(13),
	sload => VCC,
	ena => \spi0|spi|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|spi_readvalue\(14));

-- Location: FF_X84_Y7_N22
\spi0|spi|spi_readvalue[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \spi0|spi|spi_readvalue\(14),
	sload => VCC,
	ena => \spi0|spi|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|spi_readvalue\(15));

-- Location: FF_X85_Y7_N11
\spi0|spi|data_out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \spi0|spi|spi_readvalue\(15),
	sload => VCC,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|data_out\(15));

-- Location: LABCELL_X85_Y7_N33
\spi0|spi|data_out[14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|spi|data_out[14]~feeder_combout\ = ( \spi0|spi|spi_readvalue\(14) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \spi0|spi|ALT_INV_spi_readvalue\(14),
	combout => \spi0|spi|data_out[14]~feeder_combout\);

-- Location: FF_X85_Y7_N34
\spi0|spi|data_out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|spi|data_out[14]~feeder_combout\,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|data_out\(14));

-- Location: FF_X85_Y7_N56
\spi0|spi|data_out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \spi0|spi|spi_readvalue\(13),
	sload => VCC,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|data_out\(13));

-- Location: FF_X85_Y7_N44
\spi0|spi|data_out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \spi0|spi|spi_readvalue\(12),
	sload => VCC,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|data_out\(12));

-- Location: LABCELL_X85_Y7_N45
\spi0|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|Equal0~0_combout\ = ( !\spi0|spi|data_out\(13) & ( !\spi0|spi|data_out\(12) & ( (!\spi0|spi|data_out\(15) & !\spi0|spi|data_out\(14)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|spi|ALT_INV_data_out\(15),
	datad => \spi0|spi|ALT_INV_data_out\(14),
	datae => \spi0|spi|ALT_INV_data_out\(13),
	dataf => \spi0|spi|ALT_INV_data_out\(12),
	combout => \spi0|Equal0~0_combout\);

-- Location: FF_X83_Y7_N13
\spi0|spi|feed_me~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|spi|rd~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|feed_me~DUPLICATE_q\);

-- Location: LABCELL_X85_Y7_N18
\spi0|spi|data_out[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|spi|data_out[3]~feeder_combout\ = ( \spi0|spi|spi_readvalue\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \spi0|spi|ALT_INV_spi_readvalue\(3),
	combout => \spi0|spi|data_out[3]~feeder_combout\);

-- Location: FF_X85_Y7_N20
\spi0|spi|data_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|spi|data_out[3]~feeder_combout\,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|data_out\(3));

-- Location: FF_X85_Y7_N28
\spi0|spi|data_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \spi0|spi|spi_readvalue\(4),
	sload => VCC,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|data_out\(4));

-- Location: FF_X82_Y7_N34
\spi0|spi|spi_readvalue[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \spi0|spi|spi_readvalue\(1),
	sload => VCC,
	ena => \spi0|spi|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|spi_readvalue[2]~DUPLICATE_q\);

-- Location: LABCELL_X85_Y7_N57
\spi0|spi|data_out[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|spi|data_out[2]~feeder_combout\ = ( \spi0|spi|spi_readvalue[2]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \spi0|spi|ALT_INV_spi_readvalue[2]~DUPLICATE_q\,
	combout => \spi0|spi|data_out[2]~feeder_combout\);

-- Location: FF_X85_Y7_N58
\spi0|spi|data_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|spi|data_out[2]~feeder_combout\,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|data_out\(2));

-- Location: LABCELL_X85_Y7_N30
\spi0|spi|data_out[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|spi|data_out[1]~feeder_combout\ = ( \spi0|spi|spi_readvalue\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \spi0|spi|ALT_INV_spi_readvalue\(1),
	combout => \spi0|spi|data_out[1]~feeder_combout\);

-- Location: FF_X85_Y7_N32
\spi0|spi|data_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|spi|data_out[1]~feeder_combout\,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|data_out\(1));

-- Location: FF_X85_Y7_N8
\spi0|spi|data_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \spi0|spi|spi_readvalue\(5),
	sload => VCC,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|data_out\(5));

-- Location: FF_X85_Y7_N35
\spi0|spi|data_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \spi0|spi|spi_readvalue\(0),
	sload => VCC,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|data_out\(0));

-- Location: LABCELL_X85_Y7_N6
\spi0|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|Equal0~1_combout\ = ( !\spi0|spi|data_out\(5) & ( \spi0|spi|data_out\(0) & ( (\spi0|spi|data_out\(3) & (!\spi0|spi|data_out\(4) & (\spi0|spi|data_out\(2) & \spi0|spi|data_out\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi|ALT_INV_data_out\(3),
	datab => \spi0|spi|ALT_INV_data_out\(4),
	datac => \spi0|spi|ALT_INV_data_out\(2),
	datad => \spi0|spi|ALT_INV_data_out\(1),
	datae => \spi0|spi|ALT_INV_data_out\(5),
	dataf => \spi0|spi|ALT_INV_data_out\(0),
	combout => \spi0|Equal0~1_combout\);

-- Location: LABCELL_X85_Y7_N12
\spi0|spi|data_out[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|spi|data_out[8]~feeder_combout\ = ( \spi0|spi|spi_readvalue\(8) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \spi0|spi|ALT_INV_spi_readvalue\(8),
	combout => \spi0|spi|data_out[8]~feeder_combout\);

-- Location: FF_X85_Y7_N14
\spi0|spi|data_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|spi|data_out[8]~feeder_combout\,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|data_out\(8));

-- Location: FF_X85_Y7_N23
\spi0|spi|data_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \spi0|spi|spi_readvalue\(10),
	sload => VCC,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|data_out\(10));

-- Location: FF_X84_Y7_N40
\spi0|spi|spi_readvalue[9]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \spi0|spi|spi_readvalue\(8),
	sload => VCC,
	ena => \spi0|spi|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|spi_readvalue[9]~DUPLICATE_q\);

-- Location: LABCELL_X85_Y7_N15
\spi0|spi|data_out[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|spi|data_out[9]~feeder_combout\ = ( \spi0|spi|spi_readvalue[9]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \spi0|spi|ALT_INV_spi_readvalue[9]~DUPLICATE_q\,
	combout => \spi0|spi|data_out[9]~feeder_combout\);

-- Location: FF_X85_Y7_N17
\spi0|spi|data_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|spi|data_out[9]~feeder_combout\,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|data_out\(9));

-- Location: FF_X84_Y7_N4
\spi0|spi|spi_readvalue[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|spi|spi_readvalue[6]~feeder_combout\,
	ena => \spi0|spi|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|spi_readvalue[6]~DUPLICATE_q\);

-- Location: LABCELL_X85_Y7_N3
\spi0|spi|data_out[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|spi|data_out[6]~feeder_combout\ = ( \spi0|spi|spi_readvalue[6]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \spi0|spi|ALT_INV_spi_readvalue[6]~DUPLICATE_q\,
	combout => \spi0|spi|data_out[6]~feeder_combout\);

-- Location: FF_X85_Y7_N5
\spi0|spi|data_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|spi|data_out[6]~feeder_combout\,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|data_out\(6));

-- Location: LABCELL_X85_Y7_N0
\spi0|spi|data_out[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|spi|data_out[7]~feeder_combout\ = ( \spi0|spi|spi_readvalue\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \spi0|spi|ALT_INV_spi_readvalue\(7),
	combout => \spi0|spi|data_out[7]~feeder_combout\);

-- Location: FF_X85_Y7_N1
\spi0|spi|data_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|spi|data_out[7]~feeder_combout\,
	ena => \spi0|spi|read_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|data_out\(7));

-- Location: LABCELL_X85_Y7_N24
\spi0|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|Equal0~2_combout\ = ( !\spi0|spi|data_out\(6) & ( !\spi0|spi|data_out\(7) & ( (\spi0|spi|data_out\(8) & (\spi0|spi|data_out\(10) & \spi0|spi|data_out\(9))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi0|spi|ALT_INV_data_out\(8),
	datac => \spi0|spi|ALT_INV_data_out\(10),
	datad => \spi0|spi|ALT_INV_data_out\(9),
	datae => \spi0|spi|ALT_INV_data_out\(6),
	dataf => \spi0|spi|ALT_INV_data_out\(7),
	combout => \spi0|Equal0~2_combout\);

-- Location: LABCELL_X85_Y7_N48
\spi0|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|Selector0~0_combout\ = ( !\spi0|state.waiting~q\ & ( (!\spi0|state.verify~q\ & ((!\spi0|spi|data_out\(11)) # ((!\spi0|Equal0~0_combout\) # ((!\spi0|Equal0~1_combout\) # (!\spi0|Equal0~2_combout\))))) ) ) # ( \spi0|state.waiting~q\ & ( 
-- (\spi0|spi|feed_me~DUPLICATE_q\ & ((!\spi0|spi|data_out\(11)) # ((!\spi0|Equal0~0_combout\) # ((!\spi0|Equal0~1_combout\) # (!\spi0|Equal0~2_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "1111000011110000000011110000111111110000111000000000111100001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi|ALT_INV_data_out\(11),
	datab => \spi0|ALT_INV_Equal0~0_combout\,
	datac => \spi0|spi|ALT_INV_feed_me~DUPLICATE_q\,
	datad => \spi0|ALT_INV_Equal0~1_combout\,
	datae => \spi0|ALT_INV_state.waiting~q\,
	dataf => \spi0|ALT_INV_Equal0~2_combout\,
	datag => \spi0|ALT_INV_state.verify~q\,
	combout => \spi0|Selector0~0_combout\);

-- Location: LABCELL_X85_Y7_N39
\spi0|state.verify~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|state.verify~0_combout\ = ( !\spi0|Selector0~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \spi0|ALT_INV_Selector0~0_combout\,
	combout => \spi0|state.verify~0_combout\);

-- Location: FF_X85_Y7_N41
\spi0|state.verify\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|state.verify~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|state.verify~q\);

-- Location: MLABCELL_X84_Y7_N15
\spi0|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|Selector1~0_combout\ = ( !\spi0|state.waiting~q\ & ( (\spi0|spi|data_out\(11) & (\spi0|Equal0~0_combout\ & (!\spi0|state.verify~q\ & (\spi0|Equal0~1_combout\ & \spi0|Equal0~2_combout\)))) ) ) # ( \spi0|state.waiting~q\ & ( 
-- (!\spi0|spi|feed_me~DUPLICATE_q\) # ((\spi0|spi|data_out\(11) & (\spi0|Equal0~0_combout\ & (\spi0|Equal0~1_combout\ & \spi0|Equal0~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000000000111100001111000000000000000100001111000011110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi|ALT_INV_data_out\(11),
	datab => \spi0|ALT_INV_Equal0~0_combout\,
	datac => \spi0|spi|ALT_INV_feed_me~DUPLICATE_q\,
	datad => \spi0|ALT_INV_Equal0~1_combout\,
	datae => \spi0|ALT_INV_state.waiting~q\,
	dataf => \spi0|ALT_INV_Equal0~2_combout\,
	datag => \spi0|ALT_INV_state.verify~q\,
	combout => \spi0|Selector1~0_combout\);

-- Location: FF_X84_Y7_N17
\spi0|state.waiting\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|state.waiting~q\);

-- Location: MLABCELL_X84_Y7_N48
\spi0|Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|Selector3~0_combout\ = ( \spi0|state.verify~q\ & ( (\spi0|spi|read_me~q\ & \spi0|state.waiting~q\) ) ) # ( !\spi0|state.verify~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|spi|ALT_INV_read_me~q\,
	datad => \spi0|ALT_INV_state.waiting~q\,
	dataf => \spi0|ALT_INV_state.verify~q\,
	combout => \spi0|Selector3~0_combout\);

-- Location: MLABCELL_X84_Y7_N18
\spi0|LED[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|LED\(0) = ( \spi0|Selector3~0_combout\ & ( \spi0|state.waiting~q\ ) ) # ( !\spi0|Selector3~0_combout\ & ( \spi0|state.waiting~q\ & ( \spi0|LED\(0) ) ) ) # ( !\spi0|Selector3~0_combout\ & ( !\spi0|state.waiting~q\ & ( \spi0|LED\(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|ALT_INV_LED\(0),
	datae => \spi0|ALT_INV_Selector3~0_combout\,
	dataf => \spi0|ALT_INV_state.waiting~q\,
	combout => \spi0|LED\(0));

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

-- Location: IOIBUF_X64_Y0_N35
\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: IOIBUF_X64_Y0_N52
\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: IOIBUF_X89_Y6_N21
\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: IOIBUF_X50_Y0_N41
\ARDUINO_IO[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ARDUINO_IO(0),
	o => \ARDUINO_IO[0]~input_o\);

-- Location: IOIBUF_X50_Y0_N58
\ARDUINO_IO[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ARDUINO_IO(1),
	o => \ARDUINO_IO[1]~input_o\);

-- Location: IOIBUF_X54_Y0_N35
\ARDUINO_IO[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ARDUINO_IO(2),
	o => \ARDUINO_IO[2]~input_o\);

-- Location: IOIBUF_X52_Y0_N35
\ARDUINO_IO[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ARDUINO_IO(3),
	o => \ARDUINO_IO[3]~input_o\);

-- Location: IOIBUF_X52_Y0_N1
\ARDUINO_IO[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ARDUINO_IO(4),
	o => \ARDUINO_IO[4]~input_o\);

-- Location: IOIBUF_X58_Y0_N41
\ARDUINO_IO[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ARDUINO_IO(8),
	o => \ARDUINO_IO[8]~input_o\);

-- Location: IOIBUF_X54_Y0_N18
\ARDUINO_IO[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ARDUINO_IO(9),
	o => \ARDUINO_IO[9]~input_o\);

-- Location: IOIBUF_X54_Y0_N1
\ARDUINO_IO[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ARDUINO_IO(10),
	o => \ARDUINO_IO[10]~input_o\);

-- Location: IOIBUF_X54_Y0_N52
\ARDUINO_IO[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ARDUINO_IO(14),
	o => \ARDUINO_IO[14]~input_o\);

-- Location: IOIBUF_X56_Y0_N35
\ARDUINO_IO[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ARDUINO_IO(15),
	o => \ARDUINO_IO[15]~input_o\);

-- Location: IOIBUF_X52_Y0_N18
\ARDUINO_IO[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ARDUINO_IO(5),
	o => \ARDUINO_IO[5]~input_o\);

-- Location: IOIBUF_X50_Y0_N75
\ARDUINO_IO[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ARDUINO_IO(6),
	o => \ARDUINO_IO[6]~input_o\);

-- Location: IOIBUF_X52_Y0_N52
\ARDUINO_IO[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ARDUINO_IO(7),
	o => \ARDUINO_IO[7]~input_o\);

-- Location: IOIBUF_X56_Y0_N52
\ARDUINO_IO[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ARDUINO_IO(12),
	o => \ARDUINO_IO[12]~input_o\);

-- Location: LABCELL_X50_Y44_N0
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


