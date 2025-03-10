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

-- DATE "01/15/2025 10:59:55"

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

ENTITY 	top_spiloopback IS
    PORT (
	FPGA_CLK1_50 : IN std_logic;
	SW : IN std_logic_vector(3 DOWNTO 0);
	KEY : IN std_logic_vector(2 DOWNTO 0);
	LED : BUFFER std_logic_vector(1 DOWNTO 0);
	ARDUINO_IO : BUFFER std_logic_vector(15 DOWNTO 0)
	);
END top_spiloopback;

-- Design Ports Information
-- SW[0]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_W24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_AH16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_Y18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[0]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[1]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ARDUINO_IO[0]	=>  Location: PIN_AG13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ARDUINO_IO[1]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ARDUINO_IO[2]	=>  Location: PIN_AG10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ARDUINO_IO[3]	=>  Location: PIN_AG9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ARDUINO_IO[4]	=>  Location: PIN_U14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ARDUINO_IO[8]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ARDUINO_IO[9]	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ARDUINO_IO[10]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ARDUINO_IO[14]	=>  Location: PIN_AH9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ARDUINO_IO[15]	=>  Location: PIN_AG11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ARDUINO_IO[5]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ARDUINO_IO[6]	=>  Location: PIN_AG8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ARDUINO_IO[7]	=>  Location: PIN_AH8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ARDUINO_IO[11]	=>  Location: PIN_AG16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ARDUINO_IO[12]	=>  Location: PIN_AH11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ARDUINO_IO[13]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FPGA_CLK1_50	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF top_spiloopback IS
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
SIGNAL ww_ARDUINO_IO : std_logic_vector(15 DOWNTO 0);
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
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
SIGNAL \ARDUINO_IO[13]~input_o\ : std_logic;
SIGNAL \FPGA_CLK1_50~input_o\ : std_logic;
SIGNAL \FPGA_CLK1_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \ARDUINO_IO[11]~input_o\ : std_logic;
SIGNAL \spi0|spi|spi_readvalue[0]~feeder_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \spi0|Equal0~0_combout\ : std_logic;
SIGNAL \spi0|reset~q\ : std_logic;
SIGNAL \spi0|spi|sck_synchronizer[0]~feeder_combout\ : std_logic;
SIGNAL \spi0|spi|spi_readvalue[7]~0_combout\ : std_logic;
SIGNAL \spi0|spi|spi_readvalue[8]~feeder_combout\ : std_logic;
SIGNAL \spi0|spi|rdcnt~2_combout\ : std_logic;
SIGNAL \spi0|spi|rdcnt[0]~DUPLICATE_q\ : std_logic;
SIGNAL \spi0|spi|rdcnt~3_combout\ : std_logic;
SIGNAL \spi0|spi|rdcnt~1_combout\ : std_logic;
SIGNAL \spi0|spi|rdcnt[2]~DUPLICATE_q\ : std_logic;
SIGNAL \spi0|spi|rdcnt~0_combout\ : std_logic;
SIGNAL \spi0|spi|Equal3~0_combout\ : std_logic;
SIGNAL \spi0|spi|read_me~0_combout\ : std_logic;
SIGNAL \spi0|spi|read_me~q\ : std_logic;
SIGNAL \spi0|spi|data_out[4]~0_combout\ : std_logic;
SIGNAL \spi0|spi|spi_value[15]~feeder_combout\ : std_logic;
SIGNAL \spi0|spi|data_out[14]~feeder_combout\ : std_logic;
SIGNAL \spi0|spi|spi_value[14]~feeder_combout\ : std_logic;
SIGNAL \spi0|spi|spi_value[13]~feeder_combout\ : std_logic;
SIGNAL \spi0|spi|spi_value[12]~feeder_combout\ : std_logic;
SIGNAL \spi0|spi|spi_value[11]~feeder_combout\ : std_logic;
SIGNAL \spi0|spi|spi_value[10]~feeder_combout\ : std_logic;
SIGNAL \spi0|spi|spi_value[9]~feeder_combout\ : std_logic;
SIGNAL \spi0|spi|data_out[8]~feeder_combout\ : std_logic;
SIGNAL \spi0|spi|spi_value[8]~feeder_combout\ : std_logic;
SIGNAL \spi0|spi|spi_value[7]~feeder_combout\ : std_logic;
SIGNAL \spi0|spi|data_out[6]~feeder_combout\ : std_logic;
SIGNAL \spi0|spi|spi_value[6]~feeder_combout\ : std_logic;
SIGNAL \spi0|spi|data_out[5]~feeder_combout\ : std_logic;
SIGNAL \spi0|spi|spi_value[5]~feeder_combout\ : std_logic;
SIGNAL \spi0|spi|spi_value[4]~feeder_combout\ : std_logic;
SIGNAL \spi0|spi|data_out[3]~feeder_combout\ : std_logic;
SIGNAL \spi0|spi|spi_value[3]~feeder_combout\ : std_logic;
SIGNAL \spi0|spi|data_out[2]~feeder_combout\ : std_logic;
SIGNAL \spi0|spi|spi_value[2]~feeder_combout\ : std_logic;
SIGNAL \spi0|spi|spi_value[1]~feeder_combout\ : std_logic;
SIGNAL \spi0|spi|spi_value~1_combout\ : std_logic;
SIGNAL \spi0|spi|wrcnt~3_combout\ : std_logic;
SIGNAL \spi0|spi|wrcnt[0]~1_combout\ : std_logic;
SIGNAL \spi0|spi|wrcnt~4_combout\ : std_logic;
SIGNAL \spi0|spi|wrcnt[1]~DUPLICATE_q\ : std_logic;
SIGNAL \spi0|spi|wrcnt~2_combout\ : std_logic;
SIGNAL \spi0|spi|wrcnt~0_combout\ : std_logic;
SIGNAL \spi0|spi|wrcnt[2]~DUPLICATE_q\ : std_logic;
SIGNAL \spi0|spi|Equal1~0_combout\ : std_logic;
SIGNAL \spi0|spi|feed_me~0_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \spi0|spi|feed_me~q\ : std_logic;
SIGNAL \spi0|spi|spi_value[15]~0_combout\ : std_logic;
SIGNAL \spi0|spi|MISO~0_combout\ : std_logic;
SIGNAL \spi0|spi|MISO~q\ : std_logic;
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
SIGNAL \spi0|LED~0_combout\ : std_logic;
SIGNAL \spi0|spi|spi_value\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \spi0|spi|data_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \spi0|spi|spi_readvalue\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \spi0|blink_hb|counter_output\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \spi0|spi|rdcnt\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \spi0|LED\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \spi0|spi|sck_synchronizer\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \spi0|pb0_synchronizer\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \spi0|spi|wrcnt\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \spi0|spi|ALT_INV_spi_value\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \spi0|spi|ALT_INV_MISO~q\ : std_logic;
SIGNAL \spi0|spi|ALT_INV_rdcnt\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \spi0|blink_hb|ALT_INV_counter_output\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \spi0|spi|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \spi0|spi|ALT_INV_wrcnt\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \spi0|spi|ALT_INV_sck_synchronizer\ : std_logic_vector(2 DOWNTO 1);
SIGNAL \spi0|ALT_INV_reset~q\ : std_logic;
SIGNAL \spi0|ALT_INV_pb0_synchronizer\ : std_logic_vector(2 DOWNTO 1);
SIGNAL \spi0|ALT_INV_LED\ : std_logic_vector(1 DOWNTO 1);
SIGNAL \spi0|blink_hb|ALT_INV_Add0~93_sumout\ : std_logic;
SIGNAL \spi0|spi|ALT_INV_data_out\ : std_logic_vector(15 DOWNTO 1);
SIGNAL \spi0|spi|ALT_INV_spi_readvalue\ : std_logic_vector(14 DOWNTO 2);
SIGNAL \spi0|spi|ALT_INV_read_me~q\ : std_logic;
SIGNAL \spi0|spi|ALT_INV_feed_me~q\ : std_logic;
SIGNAL \spi0|spi|ALT_INV_rdcnt[0]~DUPLICATE_q\ : std_logic;
SIGNAL \spi0|spi|ALT_INV_rdcnt[2]~DUPLICATE_q\ : std_logic;
SIGNAL \spi0|spi|ALT_INV_wrcnt[1]~DUPLICATE_q\ : std_logic;
SIGNAL \spi0|spi|ALT_INV_wrcnt[2]~DUPLICATE_q\ : std_logic;
SIGNAL \spi0|blink_hb|ALT_INV_counter_output[24]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_ARDUINO_IO[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_ARDUINO_IO[11]~input_o\ : std_logic;
SIGNAL \spi0|spi|ALT_INV_Equal3~0_combout\ : std_logic;

BEGIN

ww_FPGA_CLK1_50 <= FPGA_CLK1_50;
ww_SW <= SW;
ww_KEY <= KEY;
LED <= ww_LED;
ARDUINO_IO <= ww_ARDUINO_IO;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\spi0|spi|ALT_INV_spi_value\(15) <= NOT \spi0|spi|spi_value\(15);
\spi0|spi|ALT_INV_MISO~q\ <= NOT \spi0|spi|MISO~q\;
\spi0|spi|ALT_INV_rdcnt\(0) <= NOT \spi0|spi|rdcnt\(0);
\spi0|spi|ALT_INV_rdcnt\(2) <= NOT \spi0|spi|rdcnt\(2);
\spi0|spi|ALT_INV_rdcnt\(3) <= NOT \spi0|spi|rdcnt\(3);
\spi0|blink_hb|ALT_INV_counter_output\(20) <= NOT \spi0|blink_hb|counter_output\(20);
\spi0|spi|ALT_INV_Equal1~0_combout\ <= NOT \spi0|spi|Equal1~0_combout\;
\spi0|spi|ALT_INV_wrcnt\(1) <= NOT \spi0|spi|wrcnt\(1);
\spi0|spi|ALT_INV_wrcnt\(0) <= NOT \spi0|spi|wrcnt\(0);
\spi0|spi|ALT_INV_wrcnt\(2) <= NOT \spi0|spi|wrcnt\(2);
\spi0|spi|ALT_INV_wrcnt\(3) <= NOT \spi0|spi|wrcnt\(3);
\spi0|blink_hb|ALT_INV_counter_output\(21) <= NOT \spi0|blink_hb|counter_output\(21);
\spi0|blink_hb|ALT_INV_counter_output\(22) <= NOT \spi0|blink_hb|counter_output\(22);
\spi0|spi|ALT_INV_sck_synchronizer\(2) <= NOT \spi0|spi|sck_synchronizer\(2);
\spi0|spi|ALT_INV_sck_synchronizer\(1) <= NOT \spi0|spi|sck_synchronizer\(1);
\spi0|blink_hb|ALT_INV_counter_output\(23) <= NOT \spi0|blink_hb|counter_output\(23);
\spi0|ALT_INV_reset~q\ <= NOT \spi0|reset~q\;
\spi0|ALT_INV_pb0_synchronizer\(2) <= NOT \spi0|pb0_synchronizer\(2);
\spi0|ALT_INV_pb0_synchronizer\(1) <= NOT \spi0|pb0_synchronizer\(1);
\spi0|ALT_INV_LED\(1) <= NOT \spi0|LED\(1);
\spi0|blink_hb|ALT_INV_Add0~93_sumout\ <= NOT \spi0|blink_hb|Add0~93_sumout\;
\spi0|spi|ALT_INV_spi_value\(0) <= NOT \spi0|spi|spi_value\(0);
\spi0|spi|ALT_INV_data_out\(1) <= NOT \spi0|spi|data_out\(1);
\spi0|spi|ALT_INV_spi_readvalue\(2) <= NOT \spi0|spi|spi_readvalue\(2);
\spi0|spi|ALT_INV_data_out\(2) <= NOT \spi0|spi|data_out\(2);
\spi0|spi|ALT_INV_spi_readvalue\(3) <= NOT \spi0|spi|spi_readvalue\(3);
\spi0|spi|ALT_INV_data_out\(3) <= NOT \spi0|spi|data_out\(3);
\spi0|spi|ALT_INV_data_out\(4) <= NOT \spi0|spi|data_out\(4);
\spi0|spi|ALT_INV_spi_readvalue\(5) <= NOT \spi0|spi|spi_readvalue\(5);
\spi0|spi|ALT_INV_data_out\(5) <= NOT \spi0|spi|data_out\(5);
\spi0|spi|ALT_INV_spi_readvalue\(6) <= NOT \spi0|spi|spi_readvalue\(6);
\spi0|spi|ALT_INV_data_out\(6) <= NOT \spi0|spi|data_out\(6);
\spi0|spi|ALT_INV_spi_readvalue\(7) <= NOT \spi0|spi|spi_readvalue\(7);
\spi0|spi|ALT_INV_data_out\(7) <= NOT \spi0|spi|data_out\(7);
\spi0|spi|ALT_INV_spi_readvalue\(8) <= NOT \spi0|spi|spi_readvalue\(8);
\spi0|spi|ALT_INV_data_out\(8) <= NOT \spi0|spi|data_out\(8);
\spi0|spi|ALT_INV_data_out\(9) <= NOT \spi0|spi|data_out\(9);
\spi0|spi|ALT_INV_data_out\(10) <= NOT \spi0|spi|data_out\(10);
\spi0|spi|ALT_INV_data_out\(11) <= NOT \spi0|spi|data_out\(11);
\spi0|spi|ALT_INV_data_out\(12) <= NOT \spi0|spi|data_out\(12);
\spi0|spi|ALT_INV_data_out\(13) <= NOT \spi0|spi|data_out\(13);
\spi0|spi|ALT_INV_spi_readvalue\(14) <= NOT \spi0|spi|spi_readvalue\(14);
\spi0|spi|ALT_INV_data_out\(14) <= NOT \spi0|spi|data_out\(14);
\spi0|spi|ALT_INV_read_me~q\ <= NOT \spi0|spi|read_me~q\;
\spi0|spi|ALT_INV_feed_me~q\ <= NOT \spi0|spi|feed_me~q\;
\spi0|spi|ALT_INV_data_out\(15) <= NOT \spi0|spi|data_out\(15);
\spi0|spi|ALT_INV_rdcnt[0]~DUPLICATE_q\ <= NOT \spi0|spi|rdcnt[0]~DUPLICATE_q\;
\spi0|spi|ALT_INV_rdcnt[2]~DUPLICATE_q\ <= NOT \spi0|spi|rdcnt[2]~DUPLICATE_q\;
\spi0|spi|ALT_INV_wrcnt[1]~DUPLICATE_q\ <= NOT \spi0|spi|wrcnt[1]~DUPLICATE_q\;
\spi0|spi|ALT_INV_wrcnt[2]~DUPLICATE_q\ <= NOT \spi0|spi|wrcnt[2]~DUPLICATE_q\;
\spi0|blink_hb|ALT_INV_counter_output[24]~DUPLICATE_q\ <= NOT \spi0|blink_hb|counter_output[24]~DUPLICATE_q\;
\ALT_INV_ARDUINO_IO[13]~input_o\ <= NOT \ARDUINO_IO[13]~input_o\;
\ALT_INV_ARDUINO_IO[11]~input_o\ <= NOT \ARDUINO_IO[11]~input_o\;
\spi0|blink_hb|ALT_INV_counter_output\(0) <= NOT \spi0|blink_hb|counter_output\(0);
\spi0|blink_hb|ALT_INV_counter_output\(1) <= NOT \spi0|blink_hb|counter_output\(1);
\spi0|blink_hb|ALT_INV_counter_output\(2) <= NOT \spi0|blink_hb|counter_output\(2);
\spi0|blink_hb|ALT_INV_counter_output\(3) <= NOT \spi0|blink_hb|counter_output\(3);
\spi0|blink_hb|ALT_INV_counter_output\(4) <= NOT \spi0|blink_hb|counter_output\(4);
\spi0|blink_hb|ALT_INV_counter_output\(5) <= NOT \spi0|blink_hb|counter_output\(5);
\spi0|blink_hb|ALT_INV_counter_output\(6) <= NOT \spi0|blink_hb|counter_output\(6);
\spi0|blink_hb|ALT_INV_counter_output\(7) <= NOT \spi0|blink_hb|counter_output\(7);
\spi0|blink_hb|ALT_INV_counter_output\(8) <= NOT \spi0|blink_hb|counter_output\(8);
\spi0|blink_hb|ALT_INV_counter_output\(9) <= NOT \spi0|blink_hb|counter_output\(9);
\spi0|blink_hb|ALT_INV_counter_output\(10) <= NOT \spi0|blink_hb|counter_output\(10);
\spi0|blink_hb|ALT_INV_counter_output\(11) <= NOT \spi0|blink_hb|counter_output\(11);
\spi0|blink_hb|ALT_INV_counter_output\(12) <= NOT \spi0|blink_hb|counter_output\(12);
\spi0|blink_hb|ALT_INV_counter_output\(13) <= NOT \spi0|blink_hb|counter_output\(13);
\spi0|blink_hb|ALT_INV_counter_output\(14) <= NOT \spi0|blink_hb|counter_output\(14);
\spi0|blink_hb|ALT_INV_counter_output\(15) <= NOT \spi0|blink_hb|counter_output\(15);
\spi0|blink_hb|ALT_INV_counter_output\(16) <= NOT \spi0|blink_hb|counter_output\(16);
\spi0|blink_hb|ALT_INV_counter_output\(17) <= NOT \spi0|blink_hb|counter_output\(17);
\spi0|blink_hb|ALT_INV_counter_output\(18) <= NOT \spi0|blink_hb|counter_output\(18);
\spi0|blink_hb|ALT_INV_counter_output\(19) <= NOT \spi0|blink_hb|counter_output\(19);
\spi0|spi|ALT_INV_Equal3~0_combout\ <= NOT \spi0|spi|Equal3~0_combout\;
\spi0|spi|ALT_INV_rdcnt\(1) <= NOT \spi0|spi|rdcnt\(1);

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
	i => \spi0|LED\(1),
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
	o => ww_ARDUINO_IO(5));

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
	o => ww_ARDUINO_IO(6));

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
	o => ww_ARDUINO_IO(7));

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
	i => \spi0|spi|MISO~q\,
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

-- Location: LABCELL_X63_Y1_N3
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

-- Location: FF_X64_Y1_N47
\spi0|pb0_synchronizer[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|pb0_synchronizer\(0));

-- Location: FF_X64_Y1_N44
\spi0|pb0_synchronizer[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \spi0|pb0_synchronizer\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|pb0_synchronizer\(1));

-- Location: FF_X64_Y1_N17
\spi0|pb0_synchronizer[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \spi0|pb0_synchronizer\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|pb0_synchronizer\(2));

-- Location: LABCELL_X64_Y1_N57
\spi0|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|Equal0~0_combout\ = ( \spi0|pb0_synchronizer\(1) & ( !\spi0|pb0_synchronizer\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi0|ALT_INV_pb0_synchronizer\(2),
	dataf => \spi0|ALT_INV_pb0_synchronizer\(1),
	combout => \spi0|Equal0~0_combout\);

-- Location: FF_X64_Y1_N59
\spi0|reset\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|reset~q\);

-- Location: MLABCELL_X59_Y1_N12
\spi0|spi|sck_synchronizer[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|spi|sck_synchronizer[0]~feeder_combout\ = ( \ARDUINO_IO[13]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_ARDUINO_IO[13]~input_o\,
	combout => \spi0|spi|sck_synchronizer[0]~feeder_combout\);

-- Location: FF_X59_Y1_N13
\spi0|spi|sck_synchronizer[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|spi|sck_synchronizer[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|sck_synchronizer\(0));

-- Location: FF_X64_Y1_N50
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

-- Location: FF_X64_Y1_N8
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

-- Location: LABCELL_X64_Y1_N42
\spi0|spi|spi_readvalue[7]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|spi|spi_readvalue[7]~0_combout\ = ( \spi0|spi|sck_synchronizer\(1) & ( \spi0|reset~q\ ) ) # ( !\spi0|spi|sck_synchronizer\(1) & ( (\spi0|reset~q\) # (\spi0|spi|sck_synchronizer\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111111111001100111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi0|spi|ALT_INV_sck_synchronizer\(2),
	datad => \spi0|ALT_INV_reset~q\,
	dataf => \spi0|spi|ALT_INV_sck_synchronizer\(1),
	combout => \spi0|spi|spi_readvalue[7]~0_combout\);

-- Location: FF_X63_Y1_N5
\spi0|spi|spi_readvalue[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|spi|spi_readvalue[0]~feeder_combout\,
	sclr => \spi0|reset~q\,
	ena => \spi0|spi|spi_readvalue[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|spi_readvalue\(0));

-- Location: FF_X63_Y1_N44
\spi0|spi|spi_readvalue[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \spi0|spi|spi_readvalue\(0),
	sclr => \spi0|reset~q\,
	sload => VCC,
	ena => \spi0|spi|spi_readvalue[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|spi_readvalue\(1));

-- Location: FF_X63_Y1_N47
\spi0|spi|spi_readvalue[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \spi0|spi|spi_readvalue\(1),
	sclr => \spi0|reset~q\,
	sload => VCC,
	ena => \spi0|spi|spi_readvalue[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|spi_readvalue\(2));

-- Location: FF_X63_Y1_N14
\spi0|spi|spi_readvalue[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \spi0|spi|spi_readvalue\(2),
	sclr => \spi0|reset~q\,
	sload => VCC,
	ena => \spi0|spi|spi_readvalue[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|spi_readvalue\(3));

-- Location: FF_X63_Y1_N17
\spi0|spi|spi_readvalue[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \spi0|spi|spi_readvalue\(3),
	sclr => \spi0|reset~q\,
	sload => VCC,
	ena => \spi0|spi|spi_readvalue[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|spi_readvalue\(4));

-- Location: FF_X63_Y1_N32
\spi0|spi|spi_readvalue[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \spi0|spi|spi_readvalue\(4),
	sclr => \spi0|reset~q\,
	sload => VCC,
	ena => \spi0|spi|spi_readvalue[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|spi_readvalue\(5));

-- Location: FF_X63_Y1_N35
\spi0|spi|spi_readvalue[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \spi0|spi|spi_readvalue\(5),
	sclr => \spi0|reset~q\,
	sload => VCC,
	ena => \spi0|spi|spi_readvalue[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|spi_readvalue\(6));

-- Location: FF_X63_Y1_N8
\spi0|spi|spi_readvalue[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \spi0|spi|spi_readvalue\(6),
	sclr => \spi0|reset~q\,
	sload => VCC,
	ena => \spi0|spi|spi_readvalue[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|spi_readvalue\(7));

-- Location: LABCELL_X63_Y1_N39
\spi0|spi|spi_readvalue[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|spi|spi_readvalue[8]~feeder_combout\ = \spi0|spi|spi_readvalue\(7)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|spi|ALT_INV_spi_readvalue\(7),
	combout => \spi0|spi|spi_readvalue[8]~feeder_combout\);

-- Location: FF_X63_Y1_N41
\spi0|spi|spi_readvalue[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|spi|spi_readvalue[8]~feeder_combout\,
	sclr => \spi0|reset~q\,
	ena => \spi0|spi|spi_readvalue[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|spi_readvalue\(8));

-- Location: FF_X63_Y1_N38
\spi0|spi|spi_readvalue[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \spi0|spi|spi_readvalue\(8),
	sclr => \spi0|reset~q\,
	sload => VCC,
	ena => \spi0|spi|spi_readvalue[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|spi_readvalue\(9));

-- Location: FF_X63_Y1_N56
\spi0|spi|spi_readvalue[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \spi0|spi|spi_readvalue\(9),
	sclr => \spi0|reset~q\,
	sload => VCC,
	ena => \spi0|spi|spi_readvalue[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|spi_readvalue\(10));

-- Location: FF_X63_Y1_N59
\spi0|spi|spi_readvalue[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \spi0|spi|spi_readvalue\(10),
	sclr => \spi0|reset~q\,
	sload => VCC,
	ena => \spi0|spi|spi_readvalue[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|spi_readvalue\(11));

-- Location: FF_X63_Y1_N2
\spi0|spi|spi_readvalue[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \spi0|spi|spi_readvalue\(11),
	sclr => \spi0|reset~q\,
	sload => VCC,
	ena => \spi0|spi|spi_readvalue[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|spi_readvalue\(12));

-- Location: FF_X63_Y1_N23
\spi0|spi|spi_readvalue[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \spi0|spi|spi_readvalue\(12),
	sclr => \spi0|reset~q\,
	sload => VCC,
	ena => \spi0|spi|spi_readvalue[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|spi_readvalue\(13));

-- Location: FF_X63_Y1_N26
\spi0|spi|spi_readvalue[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \spi0|spi|spi_readvalue\(13),
	sclr => \spi0|reset~q\,
	sload => VCC,
	ena => \spi0|spi|spi_readvalue[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|spi_readvalue\(14));

-- Location: FF_X63_Y1_N11
\spi0|spi|spi_readvalue[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \spi0|spi|spi_readvalue\(14),
	sclr => \spi0|reset~q\,
	sload => VCC,
	ena => \spi0|spi|spi_readvalue[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|spi_readvalue\(15));

-- Location: FF_X64_Y1_N38
\spi0|spi|rdcnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|spi|rdcnt~2_combout\,
	ena => \spi0|spi|spi_readvalue[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|rdcnt\(0));

-- Location: LABCELL_X64_Y1_N36
\spi0|spi|rdcnt~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|spi|rdcnt~2_combout\ = ( !\spi0|reset~q\ & ( !\spi0|spi|rdcnt\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \spi0|spi|ALT_INV_rdcnt\(0),
	dataf => \spi0|ALT_INV_reset~q\,
	combout => \spi0|spi|rdcnt~2_combout\);

-- Location: FF_X64_Y1_N37
\spi0|spi|rdcnt[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|spi|rdcnt~2_combout\,
	ena => \spi0|spi|spi_readvalue[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|rdcnt[0]~DUPLICATE_q\);

-- Location: LABCELL_X64_Y1_N3
\spi0|spi|rdcnt~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|spi|rdcnt~3_combout\ = ( !\spi0|reset~q\ & ( !\spi0|spi|rdcnt\(0) $ (!\spi0|spi|rdcnt\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101010010101011010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi|ALT_INV_rdcnt\(0),
	datad => \spi0|spi|ALT_INV_rdcnt\(1),
	dataf => \spi0|ALT_INV_reset~q\,
	combout => \spi0|spi|rdcnt~3_combout\);

-- Location: FF_X64_Y1_N5
\spi0|spi|rdcnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|spi|rdcnt~3_combout\,
	ena => \spi0|spi|spi_readvalue[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|rdcnt\(1));

-- Location: FF_X64_Y1_N1
\spi0|spi|rdcnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|spi|rdcnt~1_combout\,
	ena => \spi0|spi|spi_readvalue[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|rdcnt\(2));

-- Location: LABCELL_X64_Y1_N0
\spi0|spi|rdcnt~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|spi|rdcnt~1_combout\ = ( !\spi0|reset~q\ & ( !\spi0|spi|rdcnt\(2) $ (((!\spi0|spi|rdcnt\(0)) # (!\spi0|spi|rdcnt\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111111010000001011111101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi|ALT_INV_rdcnt\(0),
	datac => \spi0|spi|ALT_INV_rdcnt\(1),
	datad => \spi0|spi|ALT_INV_rdcnt\(2),
	dataf => \spi0|ALT_INV_reset~q\,
	combout => \spi0|spi|rdcnt~1_combout\);

-- Location: FF_X64_Y1_N2
\spi0|spi|rdcnt[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|spi|rdcnt~1_combout\,
	ena => \spi0|spi|spi_readvalue[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|rdcnt[2]~DUPLICATE_q\);

-- Location: LABCELL_X64_Y1_N18
\spi0|spi|rdcnt~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|spi|rdcnt~0_combout\ = ( \spi0|spi|rdcnt\(3) & ( \spi0|spi|rdcnt\(2) & ( (!\spi0|reset~q\ & ((!\spi0|spi|rdcnt\(1)) # (!\spi0|spi|rdcnt\(0)))) ) ) ) # ( !\spi0|spi|rdcnt\(3) & ( \spi0|spi|rdcnt\(2) & ( (\spi0|spi|rdcnt\(1) & (!\spi0|reset~q\ & 
-- \spi0|spi|rdcnt\(0))) ) ) ) # ( \spi0|spi|rdcnt\(3) & ( !\spi0|spi|rdcnt\(2) & ( !\spi0|reset~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000100000001001100100011001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi|ALT_INV_rdcnt\(1),
	datab => \spi0|ALT_INV_reset~q\,
	datac => \spi0|spi|ALT_INV_rdcnt\(0),
	datae => \spi0|spi|ALT_INV_rdcnt\(3),
	dataf => \spi0|spi|ALT_INV_rdcnt\(2),
	combout => \spi0|spi|rdcnt~0_combout\);

-- Location: FF_X64_Y1_N20
\spi0|spi|rdcnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|spi|rdcnt~0_combout\,
	ena => \spi0|spi|spi_readvalue[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|rdcnt\(3));

-- Location: LABCELL_X63_Y1_N18
\spi0|spi|Equal3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|spi|Equal3~0_combout\ = ( \spi0|spi|rdcnt[2]~DUPLICATE_q\ & ( \spi0|spi|rdcnt\(3) & ( (\spi0|spi|rdcnt[0]~DUPLICATE_q\ & \spi0|spi|rdcnt\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi0|spi|ALT_INV_rdcnt[0]~DUPLICATE_q\,
	datac => \spi0|spi|ALT_INV_rdcnt\(1),
	datae => \spi0|spi|ALT_INV_rdcnt[2]~DUPLICATE_q\,
	dataf => \spi0|spi|ALT_INV_rdcnt\(3),
	combout => \spi0|spi|Equal3~0_combout\);

-- Location: LABCELL_X62_Y1_N6
\spi0|spi|read_me~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|spi|read_me~0_combout\ = ( !\spi0|spi|read_me~q\ & ( \spi0|spi|Equal3~0_combout\ & ( (!\spi0|spi|sck_synchronizer\(1) & \spi0|spi|sck_synchronizer\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001010000010100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi|ALT_INV_sck_synchronizer\(1),
	datac => \spi0|spi|ALT_INV_sck_synchronizer\(2),
	datae => \spi0|spi|ALT_INV_read_me~q\,
	dataf => \spi0|spi|ALT_INV_Equal3~0_combout\,
	combout => \spi0|spi|read_me~0_combout\);

-- Location: FF_X62_Y1_N8
\spi0|spi|read_me\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|spi|read_me~0_combout\,
	sclr => \spi0|reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|read_me~q\);

-- Location: LABCELL_X62_Y1_N24
\spi0|spi|data_out[4]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|spi|data_out[4]~0_combout\ = ( \spi0|reset~q\ ) # ( !\spi0|reset~q\ & ( \spi0|spi|read_me~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \spi0|spi|ALT_INV_read_me~q\,
	dataf => \spi0|ALT_INV_reset~q\,
	combout => \spi0|spi|data_out[4]~0_combout\);

-- Location: FF_X62_Y1_N31
\spi0|spi|data_out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \spi0|spi|spi_readvalue\(15),
	sclr => \spi0|reset~q\,
	sload => VCC,
	ena => \spi0|spi|data_out[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|data_out\(15));

-- Location: MLABCELL_X65_Y1_N3
\spi0|spi|spi_value[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|spi|spi_value[15]~feeder_combout\ = ( \spi0|spi|data_out\(15) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \spi0|spi|ALT_INV_data_out\(15),
	combout => \spi0|spi|spi_value[15]~feeder_combout\);

-- Location: LABCELL_X62_Y1_N0
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

-- Location: FF_X62_Y1_N1
\spi0|spi|data_out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|spi|data_out[14]~feeder_combout\,
	sclr => \spi0|reset~q\,
	ena => \spi0|spi|data_out[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|data_out\(14));

-- Location: MLABCELL_X65_Y1_N9
\spi0|spi|spi_value[14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|spi|spi_value[14]~feeder_combout\ = \spi0|spi|data_out\(14)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|spi|ALT_INV_data_out\(14),
	combout => \spi0|spi|spi_value[14]~feeder_combout\);

-- Location: FF_X62_Y1_N28
\spi0|spi|data_out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \spi0|spi|spi_readvalue\(13),
	sclr => \spi0|reset~q\,
	sload => VCC,
	ena => \spi0|spi|data_out[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|data_out\(13));

-- Location: MLABCELL_X65_Y1_N6
\spi0|spi|spi_value[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|spi|spi_value[13]~feeder_combout\ = \spi0|spi|data_out\(13)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \spi0|spi|ALT_INV_data_out\(13),
	combout => \spi0|spi|spi_value[13]~feeder_combout\);

-- Location: FF_X62_Y1_N4
\spi0|spi|data_out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \spi0|spi|spi_readvalue\(12),
	sclr => \spi0|reset~q\,
	sload => VCC,
	ena => \spi0|spi|data_out[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|data_out\(12));

-- Location: MLABCELL_X65_Y1_N15
\spi0|spi|spi_value[12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|spi|spi_value[12]~feeder_combout\ = ( \spi0|spi|data_out\(12) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \spi0|spi|ALT_INV_data_out\(12),
	combout => \spi0|spi|spi_value[12]~feeder_combout\);

-- Location: FF_X62_Y1_N19
\spi0|spi|data_out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \spi0|spi|spi_readvalue\(11),
	sclr => \spi0|reset~q\,
	sload => VCC,
	ena => \spi0|spi|data_out[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|data_out\(11));

-- Location: MLABCELL_X65_Y1_N12
\spi0|spi|spi_value[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|spi|spi_value[11]~feeder_combout\ = \spi0|spi|data_out\(11)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi0|spi|ALT_INV_data_out\(11),
	combout => \spi0|spi|spi_value[11]~feeder_combout\);

-- Location: FF_X62_Y1_N16
\spi0|spi|data_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \spi0|spi|spi_readvalue\(10),
	sclr => \spi0|reset~q\,
	sload => VCC,
	ena => \spi0|spi|data_out[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|data_out\(10));

-- Location: MLABCELL_X65_Y1_N57
\spi0|spi|spi_value[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|spi|spi_value[10]~feeder_combout\ = \spi0|spi|data_out\(10)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \spi0|spi|ALT_INV_data_out\(10),
	combout => \spi0|spi|spi_value[10]~feeder_combout\);

-- Location: FF_X62_Y1_N25
\spi0|spi|data_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \spi0|spi|spi_readvalue\(9),
	sclr => \spi0|reset~q\,
	sload => VCC,
	ena => \spi0|spi|data_out[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|data_out\(9));

-- Location: MLABCELL_X65_Y1_N48
\spi0|spi|spi_value[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|spi|spi_value[9]~feeder_combout\ = \spi0|spi|data_out\(9)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi0|spi|ALT_INV_data_out\(9),
	combout => \spi0|spi|spi_value[9]~feeder_combout\);

-- Location: LABCELL_X62_Y1_N51
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

-- Location: FF_X62_Y1_N52
\spi0|spi|data_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|spi|data_out[8]~feeder_combout\,
	sclr => \spi0|reset~q\,
	ena => \spi0|spi|data_out[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|data_out\(8));

-- Location: MLABCELL_X65_Y1_N42
\spi0|spi|spi_value[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|spi|spi_value[8]~feeder_combout\ = \spi0|spi|data_out\(8)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|spi|ALT_INV_data_out\(8),
	combout => \spi0|spi|spi_value[8]~feeder_combout\);

-- Location: FF_X62_Y1_N46
\spi0|spi|data_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \spi0|spi|spi_readvalue\(7),
	sclr => \spi0|reset~q\,
	sload => VCC,
	ena => \spi0|spi|data_out[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|data_out\(7));

-- Location: MLABCELL_X65_Y1_N45
\spi0|spi|spi_value[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|spi|spi_value[7]~feeder_combout\ = ( \spi0|spi|data_out\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \spi0|spi|ALT_INV_data_out\(7),
	combout => \spi0|spi|spi_value[7]~feeder_combout\);

-- Location: LABCELL_X62_Y1_N42
\spi0|spi|data_out[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|spi|data_out[6]~feeder_combout\ = ( \spi0|spi|spi_readvalue\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \spi0|spi|ALT_INV_spi_readvalue\(6),
	combout => \spi0|spi|data_out[6]~feeder_combout\);

-- Location: FF_X62_Y1_N43
\spi0|spi|data_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|spi|data_out[6]~feeder_combout\,
	sclr => \spi0|reset~q\,
	ena => \spi0|spi|data_out[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|data_out\(6));

-- Location: MLABCELL_X65_Y1_N51
\spi0|spi|spi_value[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|spi|spi_value[6]~feeder_combout\ = ( \spi0|spi|data_out\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \spi0|spi|ALT_INV_data_out\(6),
	combout => \spi0|spi|spi_value[6]~feeder_combout\);

-- Location: LABCELL_X62_Y1_N36
\spi0|spi|data_out[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|spi|data_out[5]~feeder_combout\ = ( \spi0|spi|spi_readvalue\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \spi0|spi|ALT_INV_spi_readvalue\(5),
	combout => \spi0|spi|data_out[5]~feeder_combout\);

-- Location: FF_X62_Y1_N37
\spi0|spi|data_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|spi|data_out[5]~feeder_combout\,
	sclr => \spi0|reset~q\,
	ena => \spi0|spi|data_out[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|data_out\(5));

-- Location: MLABCELL_X65_Y1_N36
\spi0|spi|spi_value[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|spi|spi_value[5]~feeder_combout\ = \spi0|spi|data_out\(5)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \spi0|spi|ALT_INV_data_out\(5),
	combout => \spi0|spi|spi_value[5]~feeder_combout\);

-- Location: FF_X62_Y1_N40
\spi0|spi|data_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \spi0|spi|spi_readvalue\(4),
	sclr => \spi0|reset~q\,
	sload => VCC,
	ena => \spi0|spi|data_out[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|data_out\(4));

-- Location: MLABCELL_X65_Y1_N39
\spi0|spi|spi_value[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|spi|spi_value[4]~feeder_combout\ = \spi0|spi|data_out\(4)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \spi0|spi|ALT_INV_data_out\(4),
	combout => \spi0|spi|spi_value[4]~feeder_combout\);

-- Location: LABCELL_X62_Y1_N33
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

-- Location: FF_X62_Y1_N34
\spi0|spi|data_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|spi|data_out[3]~feeder_combout\,
	sclr => \spi0|reset~q\,
	ena => \spi0|spi|data_out[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|data_out\(3));

-- Location: MLABCELL_X65_Y1_N30
\spi0|spi|spi_value[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|spi|spi_value[3]~feeder_combout\ = ( \spi0|spi|data_out\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \spi0|spi|ALT_INV_data_out\(3),
	combout => \spi0|spi|spi_value[3]~feeder_combout\);

-- Location: LABCELL_X62_Y1_N48
\spi0|spi|data_out[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|spi|data_out[2]~feeder_combout\ = ( \spi0|spi|spi_readvalue\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \spi0|spi|ALT_INV_spi_readvalue\(2),
	combout => \spi0|spi|data_out[2]~feeder_combout\);

-- Location: FF_X62_Y1_N49
\spi0|spi|data_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|spi|data_out[2]~feeder_combout\,
	sclr => \spi0|reset~q\,
	ena => \spi0|spi|data_out[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|data_out\(2));

-- Location: MLABCELL_X65_Y1_N33
\spi0|spi|spi_value[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|spi|spi_value[2]~feeder_combout\ = \spi0|spi|data_out\(2)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|spi|ALT_INV_data_out\(2),
	combout => \spi0|spi|spi_value[2]~feeder_combout\);

-- Location: FF_X62_Y1_N22
\spi0|spi|data_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \spi0|spi|spi_readvalue\(1),
	sclr => \spi0|reset~q\,
	sload => VCC,
	ena => \spi0|spi|data_out[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|data_out\(1));

-- Location: MLABCELL_X65_Y1_N54
\spi0|spi|spi_value[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|spi|spi_value[1]~feeder_combout\ = \spi0|spi|data_out\(1)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|spi|ALT_INV_data_out\(1),
	combout => \spi0|spi|spi_value[1]~feeder_combout\);

-- Location: LABCELL_X64_Y1_N51
\spi0|spi|spi_value~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|spi|spi_value~1_combout\ = ( \spi0|spi|spi_value\(0) & ( \spi0|spi|sck_synchronizer\(1) & ( \spi0|spi|sck_synchronizer\(2) ) ) ) # ( \spi0|spi|spi_value\(0) & ( !\spi0|spi|sck_synchronizer\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|spi|ALT_INV_sck_synchronizer\(2),
	datae => \spi0|spi|ALT_INV_spi_value\(0),
	dataf => \spi0|spi|ALT_INV_sck_synchronizer\(1),
	combout => \spi0|spi|spi_value~1_combout\);

-- Location: FF_X62_Y1_N58
\spi0|spi|data_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \spi0|spi|spi_readvalue\(0),
	sclr => \spi0|reset~q\,
	sload => VCC,
	ena => \spi0|spi|data_out[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|data_out\(0));

-- Location: LABCELL_X64_Y1_N27
\spi0|spi|wrcnt~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|spi|wrcnt~3_combout\ = ( !\spi0|reset~q\ & ( !\spi0|spi|wrcnt\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \spi0|spi|ALT_INV_wrcnt\(0),
	dataf => \spi0|ALT_INV_reset~q\,
	combout => \spi0|spi|wrcnt~3_combout\);

-- Location: LABCELL_X64_Y1_N33
\spi0|spi|wrcnt[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|spi|wrcnt[0]~1_combout\ = ( \spi0|spi|sck_synchronizer\(2) & ( \spi0|reset~q\ ) ) # ( !\spi0|spi|sck_synchronizer\(2) & ( (\spi0|reset~q\) # (\spi0|spi|sck_synchronizer\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010111110101111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi|ALT_INV_sck_synchronizer\(1),
	datac => \spi0|ALT_INV_reset~q\,
	dataf => \spi0|spi|ALT_INV_sck_synchronizer\(2),
	combout => \spi0|spi|wrcnt[0]~1_combout\);

-- Location: FF_X64_Y1_N28
\spi0|spi|wrcnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|spi|wrcnt~3_combout\,
	ena => \spi0|spi|wrcnt[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|wrcnt\(0));

-- Location: LABCELL_X64_Y1_N30
\spi0|spi|wrcnt~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|spi|wrcnt~4_combout\ = ( \spi0|spi|wrcnt\(0) & ( (!\spi0|reset~q\ & !\spi0|spi|wrcnt\(1)) ) ) # ( !\spi0|spi|wrcnt\(0) & ( (!\spi0|reset~q\ & \spi0|spi|wrcnt\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110011001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi0|ALT_INV_reset~q\,
	datad => \spi0|spi|ALT_INV_wrcnt\(1),
	dataf => \spi0|spi|ALT_INV_wrcnt\(0),
	combout => \spi0|spi|wrcnt~4_combout\);

-- Location: FF_X64_Y1_N32
\spi0|spi|wrcnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|spi|wrcnt~4_combout\,
	ena => \spi0|spi|wrcnt[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|wrcnt\(1));

-- Location: FF_X64_Y1_N31
\spi0|spi|wrcnt[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|spi|wrcnt~4_combout\,
	ena => \spi0|spi|wrcnt[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|wrcnt[1]~DUPLICATE_q\);

-- Location: LABCELL_X64_Y1_N24
\spi0|spi|wrcnt~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|spi|wrcnt~2_combout\ = ( \spi0|spi|wrcnt\(0) & ( (!\spi0|reset~q\ & (!\spi0|spi|wrcnt[1]~DUPLICATE_q\ $ (!\spi0|spi|wrcnt\(2)))) ) ) # ( !\spi0|spi|wrcnt\(0) & ( (!\spi0|reset~q\ & \spi0|spi|wrcnt\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000001100110000000000110011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi0|ALT_INV_reset~q\,
	datac => \spi0|spi|ALT_INV_wrcnt[1]~DUPLICATE_q\,
	datad => \spi0|spi|ALT_INV_wrcnt\(2),
	dataf => \spi0|spi|ALT_INV_wrcnt\(0),
	combout => \spi0|spi|wrcnt~2_combout\);

-- Location: FF_X64_Y1_N25
\spi0|spi|wrcnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|spi|wrcnt~2_combout\,
	ena => \spi0|spi|wrcnt[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|wrcnt\(2));

-- Location: MLABCELL_X65_Y1_N24
\spi0|spi|wrcnt~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|spi|wrcnt~0_combout\ = ( \spi0|spi|wrcnt\(3) & ( \spi0|spi|wrcnt\(0) & ( (!\spi0|reset~q\ & ((!\spi0|spi|wrcnt[1]~DUPLICATE_q\) # (!\spi0|spi|wrcnt\(2)))) ) ) ) # ( !\spi0|spi|wrcnt\(3) & ( \spi0|spi|wrcnt\(0) & ( (\spi0|spi|wrcnt[1]~DUPLICATE_q\ & 
-- (!\spi0|reset~q\ & \spi0|spi|wrcnt\(2))) ) ) ) # ( \spi0|spi|wrcnt\(3) & ( !\spi0|spi|wrcnt\(0) & ( !\spi0|reset~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000010001001100110010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi|ALT_INV_wrcnt[1]~DUPLICATE_q\,
	datab => \spi0|ALT_INV_reset~q\,
	datad => \spi0|spi|ALT_INV_wrcnt\(2),
	datae => \spi0|spi|ALT_INV_wrcnt\(3),
	dataf => \spi0|spi|ALT_INV_wrcnt\(0),
	combout => \spi0|spi|wrcnt~0_combout\);

-- Location: FF_X65_Y1_N25
\spi0|spi|wrcnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|spi|wrcnt~0_combout\,
	ena => \spi0|spi|wrcnt[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|wrcnt\(3));

-- Location: FF_X64_Y1_N26
\spi0|spi|wrcnt[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|spi|wrcnt~2_combout\,
	ena => \spi0|spi|wrcnt[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|wrcnt[2]~DUPLICATE_q\);

-- Location: LABCELL_X64_Y1_N39
\spi0|spi|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|spi|Equal1~0_combout\ = ( \spi0|spi|wrcnt[2]~DUPLICATE_q\ & ( (\spi0|spi|wrcnt\(0) & (\spi0|spi|wrcnt\(1) & \spi0|spi|wrcnt\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|spi|ALT_INV_wrcnt\(0),
	datac => \spi0|spi|ALT_INV_wrcnt\(1),
	datad => \spi0|spi|ALT_INV_wrcnt\(3),
	dataf => \spi0|spi|ALT_INV_wrcnt[2]~DUPLICATE_q\,
	combout => \spi0|spi|Equal1~0_combout\);

-- Location: LABCELL_X64_Y1_N9
\spi0|spi|feed_me~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|spi|feed_me~0_combout\ = ( \spi0|spi|sck_synchronizer\(1) & ( ((!\spi0|spi|sck_synchronizer\(2) & \spi0|spi|Equal1~0_combout\)) # (\spi0|spi|feed_me~q\) ) ) # ( !\spi0|spi|sck_synchronizer\(1) & ( \spi0|spi|feed_me~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001100111111110000110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi0|spi|ALT_INV_sck_synchronizer\(2),
	datac => \spi0|spi|ALT_INV_Equal1~0_combout\,
	datad => \spi0|spi|ALT_INV_feed_me~q\,
	dataf => \spi0|spi|ALT_INV_sck_synchronizer\(1),
	combout => \spi0|spi|feed_me~0_combout\);

-- Location: MLABCELL_X65_Y1_N21
\~GND\ : cyclonev_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: FF_X64_Y1_N11
\spi0|spi|feed_me\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|spi|feed_me~0_combout\,
	asdata => \~GND~combout\,
	sclr => \spi0|reset~q\,
	sload => \spi0|spi|feed_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|feed_me~q\);

-- Location: FF_X64_Y1_N52
\spi0|spi|spi_value[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|spi|spi_value~1_combout\,
	asdata => \spi0|spi|data_out\(0),
	sclr => \spi0|reset~q\,
	sload => \spi0|spi|feed_me~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|spi_value\(0));

-- Location: LABCELL_X64_Y1_N15
\spi0|spi|spi_value[15]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|spi|spi_value[15]~0_combout\ = ( \spi0|spi|sck_synchronizer\(2) & ( (\spi0|spi|feed_me~q\) # (\spi0|reset~q\) ) ) # ( !\spi0|spi|sck_synchronizer\(2) & ( ((\spi0|spi|sck_synchronizer\(1)) # (\spi0|spi|feed_me~q\)) # (\spi0|reset~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111111111111001111111111111100111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \spi0|ALT_INV_reset~q\,
	datac => \spi0|spi|ALT_INV_feed_me~q\,
	datad => \spi0|spi|ALT_INV_sck_synchronizer\(1),
	dataf => \spi0|spi|ALT_INV_sck_synchronizer\(2),
	combout => \spi0|spi|spi_value[15]~0_combout\);

-- Location: FF_X65_Y1_N56
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
	sclr => \spi0|reset~q\,
	sload => \spi0|spi|ALT_INV_feed_me~q\,
	ena => \spi0|spi|spi_value[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|spi_value\(1));

-- Location: FF_X65_Y1_N35
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
	sclr => \spi0|reset~q\,
	sload => \spi0|spi|ALT_INV_feed_me~q\,
	ena => \spi0|spi|spi_value[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|spi_value\(2));

-- Location: FF_X65_Y1_N32
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
	sclr => \spi0|reset~q\,
	sload => \spi0|spi|ALT_INV_feed_me~q\,
	ena => \spi0|spi|spi_value[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|spi_value\(3));

-- Location: FF_X65_Y1_N41
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
	sclr => \spi0|reset~q\,
	sload => \spi0|spi|ALT_INV_feed_me~q\,
	ena => \spi0|spi|spi_value[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|spi_value\(4));

-- Location: FF_X65_Y1_N38
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
	sclr => \spi0|reset~q\,
	sload => \spi0|spi|ALT_INV_feed_me~q\,
	ena => \spi0|spi|spi_value[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|spi_value\(5));

-- Location: FF_X65_Y1_N52
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
	sclr => \spi0|reset~q\,
	sload => \spi0|spi|ALT_INV_feed_me~q\,
	ena => \spi0|spi|spi_value[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|spi_value\(6));

-- Location: FF_X65_Y1_N47
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
	sclr => \spi0|reset~q\,
	sload => \spi0|spi|ALT_INV_feed_me~q\,
	ena => \spi0|spi|spi_value[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|spi_value\(7));

-- Location: FF_X65_Y1_N43
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
	sclr => \spi0|reset~q\,
	sload => \spi0|spi|ALT_INV_feed_me~q\,
	ena => \spi0|spi|spi_value[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|spi_value\(8));

-- Location: FF_X65_Y1_N50
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
	sclr => \spi0|reset~q\,
	sload => \spi0|spi|ALT_INV_feed_me~q\,
	ena => \spi0|spi|spi_value[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|spi_value\(9));

-- Location: FF_X65_Y1_N59
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
	sclr => \spi0|reset~q\,
	sload => \spi0|spi|ALT_INV_feed_me~q\,
	ena => \spi0|spi|spi_value[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|spi_value\(10));

-- Location: FF_X65_Y1_N14
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
	sclr => \spi0|reset~q\,
	sload => \spi0|spi|ALT_INV_feed_me~q\,
	ena => \spi0|spi|spi_value[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|spi_value\(11));

-- Location: FF_X65_Y1_N17
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
	sclr => \spi0|reset~q\,
	sload => \spi0|spi|ALT_INV_feed_me~q\,
	ena => \spi0|spi|spi_value[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|spi_value\(12));

-- Location: FF_X65_Y1_N8
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
	sclr => \spi0|reset~q\,
	sload => \spi0|spi|ALT_INV_feed_me~q\,
	ena => \spi0|spi|spi_value[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|spi_value\(13));

-- Location: FF_X65_Y1_N11
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
	sclr => \spi0|reset~q\,
	sload => \spi0|spi|ALT_INV_feed_me~q\,
	ena => \spi0|spi|spi_value[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|spi_value\(14));

-- Location: FF_X65_Y1_N4
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
	sclr => \spi0|reset~q\,
	sload => \spi0|spi|ALT_INV_feed_me~q\,
	ena => \spi0|spi|spi_value[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|spi_value\(15));

-- Location: LABCELL_X63_Y1_N51
\spi0|spi|MISO~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|spi|MISO~0_combout\ = ( \spi0|spi|MISO~q\ & ( \spi0|spi|sck_synchronizer\(1) & ( (\spi0|spi|sck_synchronizer\(2)) # (\spi0|spi|spi_value\(15)) ) ) ) # ( !\spi0|spi|MISO~q\ & ( \spi0|spi|sck_synchronizer\(1) & ( (\spi0|spi|spi_value\(15) & 
-- !\spi0|spi|sck_synchronizer\(2)) ) ) ) # ( \spi0|spi|MISO~q\ & ( !\spi0|spi|sck_synchronizer\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|spi|ALT_INV_spi_value\(15),
	datad => \spi0|spi|ALT_INV_sck_synchronizer\(2),
	datae => \spi0|spi|ALT_INV_MISO~q\,
	dataf => \spi0|spi|ALT_INV_sck_synchronizer\(1),
	combout => \spi0|spi|MISO~0_combout\);

-- Location: FF_X63_Y1_N53
\spi0|spi|MISO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \spi0|spi|MISO~0_combout\,
	sclr => \spi0|reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|spi|MISO~q\);

-- Location: FF_X87_Y8_N41
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

-- Location: MLABCELL_X87_Y9_N0
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

-- Location: FF_X87_Y9_N2
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

-- Location: MLABCELL_X87_Y9_N30
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

-- Location: MLABCELL_X87_Y9_N21
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

-- Location: FF_X87_Y9_N23
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

-- Location: MLABCELL_X87_Y9_N33
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

-- Location: FF_X87_Y9_N35
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

-- Location: MLABCELL_X87_Y9_N36
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

-- Location: FF_X87_Y9_N38
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

-- Location: MLABCELL_X87_Y9_N39
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

-- Location: FF_X87_Y9_N41
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

-- Location: MLABCELL_X87_Y9_N42
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

-- Location: FF_X87_Y9_N43
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

-- Location: MLABCELL_X87_Y9_N45
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

-- Location: FF_X87_Y9_N47
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

-- Location: MLABCELL_X87_Y9_N48
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

-- Location: FF_X87_Y9_N50
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

-- Location: MLABCELL_X87_Y9_N51
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

-- Location: FF_X87_Y9_N52
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

-- Location: MLABCELL_X87_Y9_N54
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

-- Location: FF_X87_Y9_N56
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

-- Location: MLABCELL_X87_Y9_N57
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

-- Location: FF_X87_Y9_N59
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

-- Location: MLABCELL_X87_Y8_N0
\spi0|blink_hb|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|blink_hb|Add0~53_sumout\ = SUM(( \spi0|blink_hb|counter_output\(11) ) + ( GND ) + ( \spi0|blink_hb|Add0~58\ ))
-- \spi0|blink_hb|Add0~54\ = CARRY(( \spi0|blink_hb|counter_output\(11) ) + ( GND ) + ( \spi0|blink_hb|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|blink_hb|ALT_INV_counter_output\(11),
	cin => \spi0|blink_hb|Add0~58\,
	sumout => \spi0|blink_hb|Add0~53_sumout\,
	cout => \spi0|blink_hb|Add0~54\);

-- Location: FF_X87_Y8_N2
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

-- Location: MLABCELL_X87_Y8_N3
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

-- Location: FF_X87_Y8_N5
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

-- Location: MLABCELL_X87_Y8_N6
\spi0|blink_hb|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|blink_hb|Add0~45_sumout\ = SUM(( \spi0|blink_hb|counter_output\(13) ) + ( GND ) + ( \spi0|blink_hb|Add0~50\ ))
-- \spi0|blink_hb|Add0~46\ = CARRY(( \spi0|blink_hb|counter_output\(13) ) + ( GND ) + ( \spi0|blink_hb|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \spi0|blink_hb|ALT_INV_counter_output\(13),
	cin => \spi0|blink_hb|Add0~50\,
	sumout => \spi0|blink_hb|Add0~45_sumout\,
	cout => \spi0|blink_hb|Add0~46\);

-- Location: FF_X87_Y8_N7
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

-- Location: MLABCELL_X87_Y8_N9
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

-- Location: FF_X87_Y8_N11
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

-- Location: MLABCELL_X87_Y8_N12
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

-- Location: FF_X87_Y8_N14
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

-- Location: MLABCELL_X87_Y8_N15
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

-- Location: FF_X87_Y8_N17
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

-- Location: MLABCELL_X87_Y8_N18
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

-- Location: FF_X87_Y8_N20
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

-- Location: MLABCELL_X87_Y8_N21
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

-- Location: FF_X87_Y8_N23
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

-- Location: MLABCELL_X87_Y8_N24
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

-- Location: FF_X87_Y8_N26
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

-- Location: MLABCELL_X87_Y8_N27
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

-- Location: FF_X87_Y8_N29
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

-- Location: MLABCELL_X87_Y8_N30
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

-- Location: FF_X87_Y8_N31
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

-- Location: MLABCELL_X87_Y8_N33
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

-- Location: FF_X87_Y8_N35
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

-- Location: MLABCELL_X87_Y8_N36
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

-- Location: FF_X87_Y8_N38
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

-- Location: MLABCELL_X87_Y8_N39
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

-- Location: FF_X87_Y8_N40
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

-- Location: LABCELL_X64_Y1_N6
\spi0|LED~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spi0|LED~0_combout\ = ( \spi0|LED\(1) & ( (!\spi0|pb0_synchronizer\(1)) # (\spi0|pb0_synchronizer\(2)) ) ) # ( !\spi0|LED\(1) & ( (\spi0|reset~q\ & ((!\spi0|pb0_synchronizer\(1)) # (\spi0|pb0_synchronizer\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110101000000001111010111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \spi0|ALT_INV_pb0_synchronizer\(2),
	datac => \spi0|ALT_INV_pb0_synchronizer\(1),
	datad => \spi0|ALT_INV_reset~q\,
	dataf => \spi0|ALT_INV_LED\(1),
	combout => \spi0|LED~0_combout\);

-- Location: FF_X64_Y1_N13
\spi0|LED[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \spi0|LED~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi0|LED\(1));

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
END structure;


