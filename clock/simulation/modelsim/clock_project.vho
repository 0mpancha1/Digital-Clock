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

-- DATE "11/26/2022 12:00:08"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	CLOCK IS
    PORT (
	CLK : IN std_logic;
	RESET : IN std_logic;
	UP_DN : IN std_logic;
	STOP : IN std_logic;
	SEC : IN std_logic;
	MIN : IN std_logic;
	HOUR : IN std_logic;
	SEC0 : BUFFER std_logic_vector(6 DOWNTO 0);
	SEC1 : BUFFER std_logic_vector(6 DOWNTO 0);
	MIN0 : BUFFER std_logic_vector(6 DOWNTO 0);
	MIN1 : BUFFER std_logic_vector(6 DOWNTO 0);
	HOUR0 : BUFFER std_logic_vector(6 DOWNTO 0);
	HOUR1 : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END CLOCK;

-- Design Ports Information
-- SEC0[0]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEC0[1]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEC0[2]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEC0[3]	=>  Location: PIN_W12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEC0[4]	=>  Location: PIN_W14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEC0[5]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEC0[6]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEC1[0]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEC1[1]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEC1[2]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEC1[3]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEC1[4]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEC1[5]	=>  Location: PIN_W11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEC1[6]	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MIN0[0]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MIN0[1]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MIN0[2]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MIN0[3]	=>  Location: PIN_P10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MIN0[4]	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MIN0[5]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MIN0[6]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MIN1[0]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MIN1[1]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MIN1[2]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MIN1[3]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MIN1[4]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MIN1[5]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MIN1[6]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HOUR0[0]	=>  Location: PIN_AA6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HOUR0[1]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HOUR0[2]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HOUR0[3]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HOUR0[4]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HOUR0[5]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HOUR0[6]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HOUR1[0]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HOUR1[1]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HOUR1[2]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HOUR1[3]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HOUR1[4]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HOUR1[5]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HOUR1[6]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UP_DN	=>  Location: PIN_AA11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESET	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEC	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- STOP	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MIN	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HOUR	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF CLOCK IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_RESET : std_logic;
SIGNAL ww_UP_DN : std_logic;
SIGNAL ww_STOP : std_logic;
SIGNAL ww_SEC : std_logic;
SIGNAL ww_MIN : std_logic;
SIGNAL ww_HOUR : std_logic;
SIGNAL ww_SEC0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_SEC1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_MIN0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_MIN1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HOUR0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HOUR1 : std_logic_vector(6 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \CLK_DN~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SEC0[0]~input_o\ : std_logic;
SIGNAL \SEC0[1]~input_o\ : std_logic;
SIGNAL \SEC0[2]~input_o\ : std_logic;
SIGNAL \SEC0[3]~input_o\ : std_logic;
SIGNAL \SEC0[4]~input_o\ : std_logic;
SIGNAL \SEC0[5]~input_o\ : std_logic;
SIGNAL \SEC0[6]~input_o\ : std_logic;
SIGNAL \SEC1[0]~input_o\ : std_logic;
SIGNAL \SEC1[1]~input_o\ : std_logic;
SIGNAL \SEC1[2]~input_o\ : std_logic;
SIGNAL \SEC1[3]~input_o\ : std_logic;
SIGNAL \SEC1[4]~input_o\ : std_logic;
SIGNAL \SEC1[5]~input_o\ : std_logic;
SIGNAL \SEC1[6]~input_o\ : std_logic;
SIGNAL \MIN0[0]~input_o\ : std_logic;
SIGNAL \MIN0[1]~input_o\ : std_logic;
SIGNAL \MIN0[2]~input_o\ : std_logic;
SIGNAL \MIN0[3]~input_o\ : std_logic;
SIGNAL \MIN0[4]~input_o\ : std_logic;
SIGNAL \MIN0[5]~input_o\ : std_logic;
SIGNAL \MIN0[6]~input_o\ : std_logic;
SIGNAL \MIN1[0]~input_o\ : std_logic;
SIGNAL \MIN1[1]~input_o\ : std_logic;
SIGNAL \MIN1[2]~input_o\ : std_logic;
SIGNAL \MIN1[3]~input_o\ : std_logic;
SIGNAL \MIN1[4]~input_o\ : std_logic;
SIGNAL \MIN1[5]~input_o\ : std_logic;
SIGNAL \MIN1[6]~input_o\ : std_logic;
SIGNAL \HOUR0[0]~input_o\ : std_logic;
SIGNAL \HOUR0[1]~input_o\ : std_logic;
SIGNAL \HOUR0[2]~input_o\ : std_logic;
SIGNAL \HOUR0[3]~input_o\ : std_logic;
SIGNAL \HOUR0[4]~input_o\ : std_logic;
SIGNAL \HOUR0[5]~input_o\ : std_logic;
SIGNAL \HOUR0[6]~input_o\ : std_logic;
SIGNAL \HOUR1[0]~input_o\ : std_logic;
SIGNAL \HOUR1[1]~input_o\ : std_logic;
SIGNAL \HOUR1[2]~input_o\ : std_logic;
SIGNAL \HOUR1[3]~input_o\ : std_logic;
SIGNAL \HOUR1[4]~input_o\ : std_logic;
SIGNAL \HOUR1[5]~input_o\ : std_logic;
SIGNAL \HOUR1[6]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \SEC0[0]~output_o\ : std_logic;
SIGNAL \SEC0[1]~output_o\ : std_logic;
SIGNAL \SEC0[2]~output_o\ : std_logic;
SIGNAL \SEC0[3]~output_o\ : std_logic;
SIGNAL \SEC0[4]~output_o\ : std_logic;
SIGNAL \SEC0[5]~output_o\ : std_logic;
SIGNAL \SEC0[6]~output_o\ : std_logic;
SIGNAL \SEC1[0]~output_o\ : std_logic;
SIGNAL \SEC1[1]~output_o\ : std_logic;
SIGNAL \SEC1[2]~output_o\ : std_logic;
SIGNAL \SEC1[3]~output_o\ : std_logic;
SIGNAL \SEC1[4]~output_o\ : std_logic;
SIGNAL \SEC1[5]~output_o\ : std_logic;
SIGNAL \SEC1[6]~output_o\ : std_logic;
SIGNAL \MIN0[0]~output_o\ : std_logic;
SIGNAL \MIN0[1]~output_o\ : std_logic;
SIGNAL \MIN0[2]~output_o\ : std_logic;
SIGNAL \MIN0[3]~output_o\ : std_logic;
SIGNAL \MIN0[4]~output_o\ : std_logic;
SIGNAL \MIN0[5]~output_o\ : std_logic;
SIGNAL \MIN0[6]~output_o\ : std_logic;
SIGNAL \MIN1[0]~output_o\ : std_logic;
SIGNAL \MIN1[1]~output_o\ : std_logic;
SIGNAL \MIN1[2]~output_o\ : std_logic;
SIGNAL \MIN1[3]~output_o\ : std_logic;
SIGNAL \MIN1[4]~output_o\ : std_logic;
SIGNAL \MIN1[5]~output_o\ : std_logic;
SIGNAL \MIN1[6]~output_o\ : std_logic;
SIGNAL \HOUR0[0]~output_o\ : std_logic;
SIGNAL \HOUR0[1]~output_o\ : std_logic;
SIGNAL \HOUR0[2]~output_o\ : std_logic;
SIGNAL \HOUR0[3]~output_o\ : std_logic;
SIGNAL \HOUR0[4]~output_o\ : std_logic;
SIGNAL \HOUR0[5]~output_o\ : std_logic;
SIGNAL \HOUR0[6]~output_o\ : std_logic;
SIGNAL \HOUR1[0]~output_o\ : std_logic;
SIGNAL \HOUR1[1]~output_o\ : std_logic;
SIGNAL \HOUR1[2]~output_o\ : std_logic;
SIGNAL \HOUR1[3]~output_o\ : std_logic;
SIGNAL \HOUR1[4]~output_o\ : std_logic;
SIGNAL \HOUR1[5]~output_o\ : std_logic;
SIGNAL \HOUR1[6]~output_o\ : std_logic;
SIGNAL \STOP~input_o\ : std_logic;
SIGNAL \MIN~input_o\ : std_logic;
SIGNAL \UP_DN~input_o\ : std_logic;
SIGNAL \RESET~input_o\ : std_logic;
SIGNAL \CLK_DN~clkctrl_outclk\ : std_logic;
SIGNAL \A0|F4:3:MX4|U3|O0~0_combout\ : std_logic;
SIGNAL \A0|F0:3:U0|Q~q\ : std_logic;
SIGNAL \A0|INV_UP~combout\ : std_logic;
SIGNAL \A0|F4:2:MX7|U3|O0~0_combout\ : std_logic;
SIGNAL \A0|F0:2:U0|Q~q\ : std_logic;
SIGNAL \A0|INV_DN~0_combout\ : std_logic;
SIGNAL \A0|F4:0:MX4|U3|O0~0_combout\ : std_logic;
SIGNAL \A0|F0:0:U0|Q~q\ : std_logic;
SIGNAL \A0|INV1_DN~0_combout\ : std_logic;
SIGNAL \A0|INV1_UP~combout\ : std_logic;
SIGNAL \A0|INV1_DN~combout\ : std_logic;
SIGNAL \A0|MX11|U3|O0~0_combout\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \C0|Add0~0_combout\ : std_logic;
SIGNAL \C0|CNT[0]~2_combout\ : std_logic;
SIGNAL \C0|Add0~1\ : std_logic;
SIGNAL \C0|Add0~2_combout\ : std_logic;
SIGNAL \C0|CNT~1_combout\ : std_logic;
SIGNAL \C0|Add0~3\ : std_logic;
SIGNAL \C0|Add0~4_combout\ : std_logic;
SIGNAL \C0|Equal0~8_combout\ : std_logic;
SIGNAL \C0|Equal0~5_combout\ : std_logic;
SIGNAL \C0|Equal0~6_combout\ : std_logic;
SIGNAL \C0|Equal0~7_combout\ : std_logic;
SIGNAL \C0|Equal0~9_combout\ : std_logic;
SIGNAL \C0|Add0~5\ : std_logic;
SIGNAL \C0|Add0~6_combout\ : std_logic;
SIGNAL \C0|CNT~0_combout\ : std_logic;
SIGNAL \C0|Add0~7\ : std_logic;
SIGNAL \C0|Add0~8_combout\ : std_logic;
SIGNAL \C0|Add0~9\ : std_logic;
SIGNAL \C0|Add0~10_combout\ : std_logic;
SIGNAL \C0|Add0~11\ : std_logic;
SIGNAL \C0|Add0~12_combout\ : std_logic;
SIGNAL \C0|Add0~13\ : std_logic;
SIGNAL \C0|Add0~14_combout\ : std_logic;
SIGNAL \C0|Add0~15\ : std_logic;
SIGNAL \C0|Add0~16_combout\ : std_logic;
SIGNAL \C0|Add0~17\ : std_logic;
SIGNAL \C0|Add0~18_combout\ : std_logic;
SIGNAL \C0|Add0~19\ : std_logic;
SIGNAL \C0|Add0~20_combout\ : std_logic;
SIGNAL \C0|Add0~21\ : std_logic;
SIGNAL \C0|Add0~22_combout\ : std_logic;
SIGNAL \C0|Add0~23\ : std_logic;
SIGNAL \C0|Add0~24_combout\ : std_logic;
SIGNAL \C0|Add0~25\ : std_logic;
SIGNAL \C0|Add0~26_combout\ : std_logic;
SIGNAL \C0|Add0~27\ : std_logic;
SIGNAL \C0|Add0~28_combout\ : std_logic;
SIGNAL \C0|Add0~29\ : std_logic;
SIGNAL \C0|Add0~30_combout\ : std_logic;
SIGNAL \C0|Add0~31\ : std_logic;
SIGNAL \C0|Add0~32_combout\ : std_logic;
SIGNAL \C0|Add0~33\ : std_logic;
SIGNAL \C0|Add0~34_combout\ : std_logic;
SIGNAL \C0|Add0~35\ : std_logic;
SIGNAL \C0|Add0~36_combout\ : std_logic;
SIGNAL \C0|Add0~37\ : std_logic;
SIGNAL \C0|Add0~38_combout\ : std_logic;
SIGNAL \C0|Equal0~3_combout\ : std_logic;
SIGNAL \C0|Add0~39\ : std_logic;
SIGNAL \C0|Add0~40_combout\ : std_logic;
SIGNAL \C0|Add0~41\ : std_logic;
SIGNAL \C0|Add0~42_combout\ : std_logic;
SIGNAL \C0|Add0~43\ : std_logic;
SIGNAL \C0|Add0~44_combout\ : std_logic;
SIGNAL \C0|Add0~45\ : std_logic;
SIGNAL \C0|Add0~46_combout\ : std_logic;
SIGNAL \C0|Add0~47\ : std_logic;
SIGNAL \C0|Add0~48_combout\ : std_logic;
SIGNAL \C0|Add0~49\ : std_logic;
SIGNAL \C0|Add0~50_combout\ : std_logic;
SIGNAL \C0|Add0~51\ : std_logic;
SIGNAL \C0|Add0~52_combout\ : std_logic;
SIGNAL \C0|Add0~53\ : std_logic;
SIGNAL \C0|Add0~54_combout\ : std_logic;
SIGNAL \C0|Equal0~1_combout\ : std_logic;
SIGNAL \C0|Add0~55\ : std_logic;
SIGNAL \C0|Add0~56_combout\ : std_logic;
SIGNAL \C0|Add0~57\ : std_logic;
SIGNAL \C0|Add0~58_combout\ : std_logic;
SIGNAL \C0|Add0~59\ : std_logic;
SIGNAL \C0|Add0~60_combout\ : std_logic;
SIGNAL \C0|Add0~61\ : std_logic;
SIGNAL \C0|Add0~62_combout\ : std_logic;
SIGNAL \C0|Equal0~0_combout\ : std_logic;
SIGNAL \C0|Equal0~2_combout\ : std_logic;
SIGNAL \C0|Equal0~4_combout\ : std_logic;
SIGNAL \C0|TEMP~0_combout\ : std_logic;
SIGNAL \C0|TEMP~feeder_combout\ : std_logic;
SIGNAL \C0|TEMP~q\ : std_logic;
SIGNAL \MX5|U3|O0~0_combout\ : std_logic;
SIGNAL \D2|Q~q\ : std_logic;
SIGNAL \CLK6~combout\ : std_logic;
SIGNAL \A1|F4:2:MX4|U3|O0~0_combout\ : std_logic;
SIGNAL \A1|F0:2:U0|Q~q\ : std_logic;
SIGNAL \A1|F4:1:MX7|U3|O0~0_combout\ : std_logic;
SIGNAL \A1|F0:1:U0|Q~q\ : std_logic;
SIGNAL \A1|F4:0:MX4|U3|O0~0_combout\ : std_logic;
SIGNAL \A1|F0:0:U0|Q~q\ : std_logic;
SIGNAL \A1|INV1_UP~combout\ : std_logic;
SIGNAL \A1|INV1_DN~combout\ : std_logic;
SIGNAL \A1|MX11|U3|O0~0_combout\ : std_logic;
SIGNAL \MX3|U3|O0~1_combout\ : std_logic;
SIGNAL \D0|Q~q\ : std_logic;
SIGNAL \CLK4~combout\ : std_logic;
SIGNAL \MX1|U3|O0~combout\ : std_logic;
SIGNAL \A2|INV_DN~0_combout\ : std_logic;
SIGNAL \A2|F4:3:MX4|U3|O0~0_combout\ : std_logic;
SIGNAL \A2|F0:3:U0|Q~q\ : std_logic;
SIGNAL \A2|INV_UP~combout\ : std_logic;
SIGNAL \A2|F4:0:MX4|U3|O0~0_combout\ : std_logic;
SIGNAL \A2|F0:0:U0|Q~q\ : std_logic;
SIGNAL \A2|F4:1:MX7|U3|O0~0_combout\ : std_logic;
SIGNAL \A2|F0:1:U0|Q~q\ : std_logic;
SIGNAL \A2|F4:2:MX7|U3|O0~0_combout\ : std_logic;
SIGNAL \A2|F0:2:U0|Q~q\ : std_logic;
SIGNAL \A2|INV1_UP~0_combout\ : std_logic;
SIGNAL \A0|INV1_UP~0_combout\ : std_logic;
SIGNAL \MX3|U3|O0~0_combout\ : std_logic;
SIGNAL \HOUR~input_o\ : std_logic;
SIGNAL \A2|INV1_DN~0_combout\ : std_logic;
SIGNAL \A2|INV1_UP~combout\ : std_logic;
SIGNAL \A2|INV1_DN~combout\ : std_logic;
SIGNAL \A2|MX11|U3|O0~0_combout\ : std_logic;
SIGNAL \MX6|U3|O0~0_combout\ : std_logic;
SIGNAL \D3|Q~q\ : std_logic;
SIGNAL \CLK7~combout\ : std_logic;
SIGNAL \A3|F4:0:MX4|U3|O0~0_combout\ : std_logic;
SIGNAL \A3|F0:0:U0|Q~q\ : std_logic;
SIGNAL \A3|F4:2:MX4|U3|O0~0_combout\ : std_logic;
SIGNAL \A3|F0:2:U0|Q~q\ : std_logic;
SIGNAL \A3|F4:1:MX7|U3|O0~0_combout\ : std_logic;
SIGNAL \A3|F0:1:U0|Q~q\ : std_logic;
SIGNAL \A3|INV1_UP~combout\ : std_logic;
SIGNAL \A3|INV1_DN~combout\ : std_logic;
SIGNAL \A3|MX11|U3|O0~0_combout\ : std_logic;
SIGNAL \MX4|U3|O0~1_combout\ : std_logic;
SIGNAL \D1|Q~q\ : std_logic;
SIGNAL \CLK5~combout\ : std_logic;
SIGNAL \MX2|U3|O0~combout\ : std_logic;
SIGNAL \A4|F4:0:MX4|U3|O0~0_combout\ : std_logic;
SIGNAL \A4|F0:0:U0|Q~q\ : std_logic;
SIGNAL \A4|F4:2:MX7|U3|O0~4_combout\ : std_logic;
SIGNAL \A4|F4:2:MX7|U3|O0~5_combout\ : std_logic;
SIGNAL \A4|F0:2:U0|Q~q\ : std_logic;
SIGNAL \A4|F4:3:MX4|U3|O0~0_combout\ : std_logic;
SIGNAL \A4|F4:3:MX4|U3|O0~1_combout\ : std_logic;
SIGNAL \A4|F0:3:U0|Q~q\ : std_logic;
SIGNAL \A4|F4:1:MX4|U3|O0~2_combout\ : std_logic;
SIGNAL \A4|F4:1:MX4|U3|O0~3_combout\ : std_logic;
SIGNAL \A4|F0:1:U0|Q~q\ : std_logic;
SIGNAL \A4|INV_DN~0_combout\ : std_logic;
SIGNAL \DN_CHK1~0_combout\ : std_logic;
SIGNAL \MX4|U3|O0~0_combout\ : std_logic;
SIGNAL \SEC~input_o\ : std_logic;
SIGNAL \MX0|U3|O0~0_combout\ : std_logic;
SIGNAL \CLK_DN~combout\ : std_logic;
SIGNAL \A0|F4:1:MX7|U3|O0~0_combout\ : std_logic;
SIGNAL \A0|F0:1:U0|Q~q\ : std_logic;
SIGNAL \B0|O6|O0~combout\ : std_logic;
SIGNAL \B0|O5|O0~0_combout\ : std_logic;
SIGNAL \B0|O3|O0~combout\ : std_logic;
SIGNAL \B0|O2|O0~combout\ : std_logic;
SIGNAL \B0|A9|O0~0_combout\ : std_logic;
SIGNAL \B0|A7|O0~combout\ : std_logic;
SIGNAL \B0|O1|O0~0_combout\ : std_logic;
SIGNAL \B1|O6|O0~combout\ : std_logic;
SIGNAL \B1|O5|O0~combout\ : std_logic;
SIGNAL \B1|O3|O0~combout\ : std_logic;
SIGNAL \B1|O2|O0~combout\ : std_logic;
SIGNAL \B1|A9|O0~combout\ : std_logic;
SIGNAL \B1|A7|O0~combout\ : std_logic;
SIGNAL \B1|O1|O0~0_combout\ : std_logic;
SIGNAL \B2|O6|O0~combout\ : std_logic;
SIGNAL \B2|O5|O0~0_combout\ : std_logic;
SIGNAL \B2|O3|O0~combout\ : std_logic;
SIGNAL \B2|O2|O0~combout\ : std_logic;
SIGNAL \B2|A9|O0~0_combout\ : std_logic;
SIGNAL \B2|A7|O0~combout\ : std_logic;
SIGNAL \B2|O1|O0~0_combout\ : std_logic;
SIGNAL \B3|O6|O0~combout\ : std_logic;
SIGNAL \B3|O5|O0~combout\ : std_logic;
SIGNAL \B3|O3|O0~combout\ : std_logic;
SIGNAL \B3|O2|O0~combout\ : std_logic;
SIGNAL \B3|A9|O0~combout\ : std_logic;
SIGNAL \B3|A7|O0~combout\ : std_logic;
SIGNAL \B3|O1|O0~0_combout\ : std_logic;
SIGNAL \B5|O6|O0~combout\ : std_logic;
SIGNAL \B5|O5|O0~0_combout\ : std_logic;
SIGNAL \B5|O3|O0~combout\ : std_logic;
SIGNAL \B5|O2|O0~combout\ : std_logic;
SIGNAL \B5|A9|O0~0_combout\ : std_logic;
SIGNAL \B5|A7|O0~combout\ : std_logic;
SIGNAL \B5|O1|O0~0_combout\ : std_logic;
SIGNAL \H_BCD[4]~0_combout\ : std_logic;
SIGNAL \A2|C\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \A0|QE_XOR\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \A0|C\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \C0|CNT\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \A2|QE_XOR\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_RESET~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLK <= CLK;
ww_RESET <= RESET;
ww_UP_DN <= UP_DN;
ww_STOP <= STOP;
ww_SEC <= SEC;
ww_MIN <= MIN;
ww_HOUR <= HOUR;
SEC0 <= ww_SEC0;
SEC1 <= ww_SEC1;
MIN0 <= ww_MIN0;
MIN1 <= ww_MIN1;
HOUR0 <= ww_HOUR0;
HOUR1 <= ww_HOUR1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\CLK_DN~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK_DN~combout\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\ALT_INV_RESET~input_o\ <= NOT \RESET~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y42_N12
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X46_Y0_N2
\SEC0[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B0|O6|O0~combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \SEC0[0]~output_o\);

-- Location: IOOBUF_X49_Y0_N2
\SEC0[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B0|O5|O0~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \SEC0[1]~output_o\);

-- Location: IOOBUF_X40_Y0_N23
\SEC0[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B0|O3|O0~combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \SEC0[2]~output_o\);

-- Location: IOOBUF_X46_Y0_N9
\SEC0[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B0|O2|O0~combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \SEC0[3]~output_o\);

-- Location: IOOBUF_X49_Y0_N23
\SEC0[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B0|A9|O0~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \SEC0[4]~output_o\);

-- Location: IOOBUF_X49_Y0_N30
\SEC0[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B0|A7|O0~combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \SEC0[5]~output_o\);

-- Location: IOOBUF_X49_Y0_N9
\SEC0[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B0|O1|O0~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \SEC0[6]~output_o\);

-- Location: IOOBUF_X40_Y0_N16
\SEC1[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B1|O6|O0~combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \SEC1[0]~output_o\);

-- Location: IOOBUF_X34_Y0_N9
\SEC1[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B1|O5|O0~combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \SEC1[1]~output_o\);

-- Location: IOOBUF_X38_Y0_N23
\SEC1[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B1|O3|O0~combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \SEC1[2]~output_o\);

-- Location: IOOBUF_X34_Y0_N2
\SEC1[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B1|O2|O0~combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \SEC1[3]~output_o\);

-- Location: IOOBUF_X36_Y0_N2
\SEC1[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B1|A9|O0~combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \SEC1[4]~output_o\);

-- Location: IOOBUF_X36_Y0_N9
\SEC1[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B1|A7|O0~combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \SEC1[5]~output_o\);

-- Location: IOOBUF_X38_Y0_N30
\SEC1[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B1|O1|O0~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \SEC1[6]~output_o\);

-- Location: IOOBUF_X34_Y39_N9
\MIN0[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B2|O6|O0~combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \MIN0[0]~output_o\);

-- Location: IOOBUF_X26_Y0_N2
\MIN0[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B2|O5|O0~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \MIN0[1]~output_o\);

-- Location: IOOBUF_X31_Y0_N30
\MIN0[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B2|O3|O0~combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \MIN0[2]~output_o\);

-- Location: IOOBUF_X26_Y0_N9
\MIN0[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B2|O2|O0~combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \MIN0[3]~output_o\);

-- Location: IOOBUF_X34_Y0_N30
\MIN0[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B2|A9|O0~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \MIN0[4]~output_o\);

-- Location: IOOBUF_X31_Y0_N23
\MIN0[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B2|A7|O0~combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \MIN0[5]~output_o\);

-- Location: IOOBUF_X34_Y0_N16
\MIN0[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B2|O1|O0~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \MIN0[6]~output_o\);

-- Location: IOOBUF_X36_Y39_N16
\MIN1[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B3|O6|O0~combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \MIN1[0]~output_o\);

-- Location: IOOBUF_X31_Y0_N2
\MIN1[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B3|O5|O0~combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \MIN1[1]~output_o\);

-- Location: IOOBUF_X31_Y0_N9
\MIN1[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B3|O3|O0~combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \MIN1[2]~output_o\);

-- Location: IOOBUF_X29_Y0_N30
\MIN1[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B3|O2|O0~combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \MIN1[3]~output_o\);

-- Location: IOOBUF_X40_Y0_N30
\MIN1[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B3|A9|O0~combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \MIN1[4]~output_o\);

-- Location: IOOBUF_X40_Y0_N2
\MIN1[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B3|A7|O0~combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \MIN1[5]~output_o\);

-- Location: IOOBUF_X31_Y0_N16
\MIN1[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B3|O1|O0~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \MIN1[6]~output_o\);

-- Location: IOOBUF_X29_Y0_N23
\HOUR0[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B5|O6|O0~combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \HOUR0[0]~output_o\);

-- Location: IOOBUF_X26_Y0_N23
\HOUR0[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B5|O5|O0~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \HOUR0[1]~output_o\);

-- Location: IOOBUF_X26_Y0_N30
\HOUR0[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B5|O3|O0~combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \HOUR0[2]~output_o\);

-- Location: IOOBUF_X29_Y0_N9
\HOUR0[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B5|O2|O0~combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \HOUR0[3]~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\HOUR0[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B5|A9|O0~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \HOUR0[4]~output_o\);

-- Location: IOOBUF_X26_Y0_N16
\HOUR0[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B5|A7|O0~combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \HOUR0[5]~output_o\);

-- Location: IOOBUF_X29_Y0_N16
\HOUR0[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B5|O1|O0~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \HOUR0[6]~output_o\);

-- Location: IOOBUF_X0_Y36_N23
\HOUR1[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	oe => VCC,
	devoe => ww_devoe,
	o => \HOUR1[0]~output_o\);

-- Location: IOOBUF_X24_Y0_N30
\HOUR1[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \H_BCD[4]~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \HOUR1[1]~output_o\);

-- Location: IOOBUF_X24_Y0_N9
\HOUR1[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \H_BCD[4]~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \HOUR1[2]~output_o\);

-- Location: IOOBUF_X24_Y0_N2
\HOUR1[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \H_BCD[4]~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \HOUR1[3]~output_o\);

-- Location: IOOBUF_X78_Y44_N2
\HOUR1[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HOUR1[4]~output_o\);

-- Location: IOOBUF_X54_Y54_N23
\HOUR1[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HOUR1[5]~output_o\);

-- Location: IOOBUF_X24_Y0_N23
\HOUR1[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \H_BCD[4]~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \HOUR1[6]~output_o\);

-- Location: IOIBUF_X38_Y0_N1
\STOP~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_STOP,
	o => \STOP~input_o\);

-- Location: IOIBUF_X34_Y0_N22
\MIN~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MIN,
	o => \MIN~input_o\);

-- Location: IOIBUF_X40_Y0_N8
\UP_DN~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_UP_DN,
	o => \UP_DN~input_o\);

-- Location: IOIBUF_X38_Y0_N15
\RESET~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RESET,
	o => \RESET~input_o\);

-- Location: CLKCTRL_G19
\CLK_DN~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK_DN~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK_DN~clkctrl_outclk\);

-- Location: LCCOMB_X39_Y2_N0
\A0|QE_XOR[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A0|QE_XOR\(2) = \A0|F0:2:U0|Q~q\ $ (((\A0|F0:1:U0|Q~q\ & ((!\UP_DN~input_o\) # (!\A0|F0:0:U0|Q~q\))) # (!\A0|F0:1:U0|Q~q\ & ((\A0|F0:0:U0|Q~q\) # (\UP_DN~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A0|F0:2:U0|Q~q\,
	datab => \A0|F0:1:U0|Q~q\,
	datac => \A0|F0:0:U0|Q~q\,
	datad => \UP_DN~input_o\,
	combout => \A0|QE_XOR\(2));

-- Location: LCCOMB_X39_Y2_N2
\A0|C[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A0|C\(2) = (\A0|F0:1:U0|Q~q\ & (((!\A0|F0:2:U0|Q~q\) # (!\A0|F0:0:U0|Q~q\)) # (!\UP_DN~input_o\))) # (!\A0|F0:1:U0|Q~q\ & ((\UP_DN~input_o\) # ((\A0|F0:0:U0|Q~q\) # (\A0|F0:2:U0|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A0|F0:1:U0|Q~q\,
	datab => \UP_DN~input_o\,
	datac => \A0|F0:0:U0|Q~q\,
	datad => \A0|F0:2:U0|Q~q\,
	combout => \A0|C\(2));

-- Location: LCCOMB_X39_Y2_N18
\A0|QE_XOR[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A0|QE_XOR\(3) = \A0|F0:3:U0|Q~q\ $ (\A0|C\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A0|F0:3:U0|Q~q\,
	datad => \A0|C\(2),
	combout => \A0|QE_XOR\(3));

-- Location: LCCOMB_X39_Y2_N24
\A0|F4:3:MX4|U3|O0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A0|F4:3:MX4|U3|O0~0_combout\ = (\UP_DN~input_o\ & (!\A0|QE_XOR\(3) & ((\A0|INV_UP~combout\)))) # (!\UP_DN~input_o\ & (((!\A0|INV_DN~0_combout\)) # (!\A0|QE_XOR\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UP_DN~input_o\,
	datab => \A0|QE_XOR\(3),
	datac => \A0|INV_DN~0_combout\,
	datad => \A0|INV_UP~combout\,
	combout => \A0|F4:3:MX4|U3|O0~0_combout\);

-- Location: FF_X39_Y2_N25
\A0|F0:3:U0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_DN~clkctrl_outclk\,
	d => \A0|F4:3:MX4|U3|O0~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A0|F0:3:U0|Q~q\);

-- Location: LCCOMB_X39_Y2_N28
\A0|INV_UP\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A0|INV_UP~combout\ = ((!\A0|F0:2:U0|Q~q\ & (!\A0|F0:1:U0|Q~q\ & !\A0|F0:0:U0|Q~q\))) # (!\A0|F0:3:U0|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A0|F0:2:U0|Q~q\,
	datab => \A0|F0:1:U0|Q~q\,
	datac => \A0|F0:0:U0|Q~q\,
	datad => \A0|F0:3:U0|Q~q\,
	combout => \A0|INV_UP~combout\);

-- Location: LCCOMB_X39_Y2_N4
\A0|F4:2:MX7|U3|O0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A0|F4:2:MX7|U3|O0~0_combout\ = (!\A0|QE_XOR\(2) & ((\UP_DN~input_o\ & ((\A0|INV_UP~combout\))) # (!\UP_DN~input_o\ & (\A0|INV_DN~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UP_DN~input_o\,
	datab => \A0|QE_XOR\(2),
	datac => \A0|INV_DN~0_combout\,
	datad => \A0|INV_UP~combout\,
	combout => \A0|F4:2:MX7|U3|O0~0_combout\);

-- Location: FF_X39_Y2_N5
\A0|F0:2:U0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_DN~clkctrl_outclk\,
	d => \A0|F4:2:MX7|U3|O0~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A0|F0:2:U0|Q~q\);

-- Location: LCCOMB_X39_Y2_N22
\A0|INV_DN~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A0|INV_DN~0_combout\ = (\A0|F0:2:U0|Q~q\ & (((!\A0|F0:3:U0|Q~q\)))) # (!\A0|F0:2:U0|Q~q\ & ((\A0|F0:1:U0|Q~q\ & ((!\A0|F0:3:U0|Q~q\))) # (!\A0|F0:1:U0|Q~q\ & ((\A0|F0:0:U0|Q~q\) # (\A0|F0:3:U0|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A0|F0:2:U0|Q~q\,
	datab => \A0|F0:0:U0|Q~q\,
	datac => \A0|F0:1:U0|Q~q\,
	datad => \A0|F0:3:U0|Q~q\,
	combout => \A0|INV_DN~0_combout\);

-- Location: LCCOMB_X39_Y2_N14
\A0|F4:0:MX4|U3|O0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A0|F4:0:MX4|U3|O0~0_combout\ = (\UP_DN~input_o\ & (((!\A0|F0:0:U0|Q~q\ & \A0|INV_UP~combout\)))) # (!\UP_DN~input_o\ & (((!\A0|F0:0:U0|Q~q\)) # (!\A0|INV_DN~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A0|INV_DN~0_combout\,
	datab => \UP_DN~input_o\,
	datac => \A0|F0:0:U0|Q~q\,
	datad => \A0|INV_UP~combout\,
	combout => \A0|F4:0:MX4|U3|O0~0_combout\);

-- Location: FF_X39_Y2_N15
\A0|F0:0:U0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_DN~clkctrl_outclk\,
	d => \A0|F4:0:MX4|U3|O0~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A0|F0:0:U0|Q~q\);

-- Location: LCCOMB_X39_Y2_N6
\A0|INV1_DN~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A0|INV1_DN~0_combout\ = (!\A0|F0:1:U0|Q~q\ & !\A0|F0:2:U0|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A0|F0:1:U0|Q~q\,
	datac => \A0|F0:2:U0|Q~q\,
	combout => \A0|INV1_DN~0_combout\);

-- Location: LCCOMB_X38_Y2_N30
\A0|INV1_UP\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A0|INV1_UP~combout\ = (\A0|F0:0:U0|Q~q\) # ((\A0|F0:3:U0|Q~q\) # ((\RESET~input_o\) # (!\A0|INV1_DN~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A0|F0:0:U0|Q~q\,
	datab => \A0|F0:3:U0|Q~q\,
	datac => \RESET~input_o\,
	datad => \A0|INV1_DN~0_combout\,
	combout => \A0|INV1_UP~combout\);

-- Location: LCCOMB_X38_Y2_N18
\A0|INV1_DN\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A0|INV1_DN~combout\ = (\A0|F0:0:U0|Q~q\ & (\A0|F0:3:U0|Q~q\ & (!\RESET~input_o\ & \A0|INV1_DN~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A0|F0:0:U0|Q~q\,
	datab => \A0|F0:3:U0|Q~q\,
	datac => \RESET~input_o\,
	datad => \A0|INV1_DN~0_combout\,
	combout => \A0|INV1_DN~combout\);

-- Location: LCCOMB_X38_Y2_N20
\A0|MX11|U3|O0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A0|MX11|U3|O0~0_combout\ = (\UP_DN~input_o\ & (!\A0|INV1_UP~combout\)) # (!\UP_DN~input_o\ & ((\A0|INV1_DN~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UP_DN~input_o\,
	datac => \A0|INV1_UP~combout\,
	datad => \A0|INV1_DN~combout\,
	combout => \A0|MX11|U3|O0~0_combout\);

-- Location: IOIBUF_X0_Y18_N15
\CLK~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G3
\CLK~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: LCCOMB_X40_Y4_N0
\C0|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C0|Add0~0_combout\ = \C0|CNT\(0) $ (GND)
-- \C0|Add0~1\ = CARRY(!\C0|CNT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C0|CNT\(0),
	datad => VCC,
	combout => \C0|Add0~0_combout\,
	cout => \C0|Add0~1\);

-- Location: LCCOMB_X41_Y4_N0
\C0|CNT[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C0|CNT[0]~2_combout\ = !\C0|Add0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C0|Add0~0_combout\,
	combout => \C0|CNT[0]~2_combout\);

-- Location: FF_X40_Y4_N3
\C0|CNT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \C0|CNT[0]~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C0|CNT\(0));

-- Location: LCCOMB_X40_Y4_N2
\C0|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C0|Add0~2_combout\ = (\C0|CNT\(1) & (!\C0|Add0~1\)) # (!\C0|CNT\(1) & ((\C0|Add0~1\) # (GND)))
-- \C0|Add0~3\ = CARRY((!\C0|Add0~1\) # (!\C0|CNT\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C0|CNT\(1),
	datad => VCC,
	cin => \C0|Add0~1\,
	combout => \C0|Add0~2_combout\,
	cout => \C0|Add0~3\);

-- Location: LCCOMB_X39_Y4_N16
\C0|CNT~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C0|CNT~1_combout\ = (\C0|Add0~2_combout\ & ((!\C0|Equal0~4_combout\) # (!\C0|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C0|Equal0~9_combout\,
	datac => \C0|Add0~2_combout\,
	datad => \C0|Equal0~4_combout\,
	combout => \C0|CNT~1_combout\);

-- Location: FF_X40_Y4_N7
\C0|CNT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \C0|CNT~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C0|CNT\(1));

-- Location: LCCOMB_X40_Y4_N4
\C0|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C0|Add0~4_combout\ = (\C0|CNT\(2) & (\C0|Add0~3\ $ (GND))) # (!\C0|CNT\(2) & (!\C0|Add0~3\ & VCC))
-- \C0|Add0~5\ = CARRY((\C0|CNT\(2) & !\C0|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C0|CNT\(2),
	datad => VCC,
	cin => \C0|Add0~3\,
	combout => \C0|Add0~4_combout\,
	cout => \C0|Add0~5\);

-- Location: FF_X40_Y4_N5
\C0|CNT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C0|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C0|CNT\(2));

-- Location: LCCOMB_X39_Y4_N6
\C0|Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C0|Equal0~8_combout\ = (\C0|CNT\(0) & (\C0|CNT\(3) & (\C0|CNT\(1) & !\C0|CNT\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|CNT\(0),
	datab => \C0|CNT\(3),
	datac => \C0|CNT\(1),
	datad => \C0|CNT\(2),
	combout => \C0|Equal0~8_combout\);

-- Location: LCCOMB_X39_Y4_N28
\C0|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C0|Equal0~5_combout\ = (!\C0|CNT\(15) & (!\C0|CNT\(12) & (!\C0|CNT\(13) & !\C0|CNT\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|CNT\(15),
	datab => \C0|CNT\(12),
	datac => \C0|CNT\(13),
	datad => \C0|CNT\(14),
	combout => \C0|Equal0~5_combout\);

-- Location: LCCOMB_X39_Y4_N30
\C0|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C0|Equal0~6_combout\ = (!\C0|CNT\(10) & (!\C0|CNT\(11) & (!\C0|CNT\(8) & !\C0|CNT\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|CNT\(10),
	datab => \C0|CNT\(11),
	datac => \C0|CNT\(8),
	datad => \C0|CNT\(9),
	combout => \C0|Equal0~6_combout\);

-- Location: LCCOMB_X39_Y4_N12
\C0|Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C0|Equal0~7_combout\ = (!\C0|CNT\(5) & (!\C0|CNT\(4) & (!\C0|CNT\(6) & !\C0|CNT\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|CNT\(5),
	datab => \C0|CNT\(4),
	datac => \C0|CNT\(6),
	datad => \C0|CNT\(7),
	combout => \C0|Equal0~7_combout\);

-- Location: LCCOMB_X39_Y4_N8
\C0|Equal0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C0|Equal0~9_combout\ = (\C0|Equal0~8_combout\ & (\C0|Equal0~5_combout\ & (\C0|Equal0~6_combout\ & \C0|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|Equal0~8_combout\,
	datab => \C0|Equal0~5_combout\,
	datac => \C0|Equal0~6_combout\,
	datad => \C0|Equal0~7_combout\,
	combout => \C0|Equal0~9_combout\);

-- Location: LCCOMB_X40_Y4_N6
\C0|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C0|Add0~6_combout\ = (\C0|CNT\(3) & (!\C0|Add0~5\)) # (!\C0|CNT\(3) & ((\C0|Add0~5\) # (GND)))
-- \C0|Add0~7\ = CARRY((!\C0|Add0~5\) # (!\C0|CNT\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C0|CNT\(3),
	datad => VCC,
	cin => \C0|Add0~5\,
	combout => \C0|Add0~6_combout\,
	cout => \C0|Add0~7\);

-- Location: LCCOMB_X39_Y4_N18
\C0|CNT~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C0|CNT~0_combout\ = (\C0|Add0~6_combout\ & ((!\C0|Equal0~9_combout\) # (!\C0|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C0|Equal0~4_combout\,
	datac => \C0|Equal0~9_combout\,
	datad => \C0|Add0~6_combout\,
	combout => \C0|CNT~0_combout\);

-- Location: FF_X40_Y4_N1
\C0|CNT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \C0|CNT~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C0|CNT\(3));

-- Location: LCCOMB_X40_Y4_N8
\C0|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C0|Add0~8_combout\ = (\C0|CNT\(4) & (\C0|Add0~7\ $ (GND))) # (!\C0|CNT\(4) & (!\C0|Add0~7\ & VCC))
-- \C0|Add0~9\ = CARRY((\C0|CNT\(4) & !\C0|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C0|CNT\(4),
	datad => VCC,
	cin => \C0|Add0~7\,
	combout => \C0|Add0~8_combout\,
	cout => \C0|Add0~9\);

-- Location: FF_X40_Y4_N9
\C0|CNT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C0|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C0|CNT\(4));

-- Location: LCCOMB_X40_Y4_N10
\C0|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C0|Add0~10_combout\ = (\C0|CNT\(5) & (!\C0|Add0~9\)) # (!\C0|CNT\(5) & ((\C0|Add0~9\) # (GND)))
-- \C0|Add0~11\ = CARRY((!\C0|Add0~9\) # (!\C0|CNT\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C0|CNT\(5),
	datad => VCC,
	cin => \C0|Add0~9\,
	combout => \C0|Add0~10_combout\,
	cout => \C0|Add0~11\);

-- Location: FF_X40_Y4_N11
\C0|CNT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C0|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C0|CNT\(5));

-- Location: LCCOMB_X40_Y4_N12
\C0|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C0|Add0~12_combout\ = (\C0|CNT\(6) & (\C0|Add0~11\ $ (GND))) # (!\C0|CNT\(6) & (!\C0|Add0~11\ & VCC))
-- \C0|Add0~13\ = CARRY((\C0|CNT\(6) & !\C0|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C0|CNT\(6),
	datad => VCC,
	cin => \C0|Add0~11\,
	combout => \C0|Add0~12_combout\,
	cout => \C0|Add0~13\);

-- Location: FF_X40_Y4_N13
\C0|CNT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C0|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C0|CNT\(6));

-- Location: LCCOMB_X40_Y4_N14
\C0|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C0|Add0~14_combout\ = (\C0|CNT\(7) & (!\C0|Add0~13\)) # (!\C0|CNT\(7) & ((\C0|Add0~13\) # (GND)))
-- \C0|Add0~15\ = CARRY((!\C0|Add0~13\) # (!\C0|CNT\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C0|CNT\(7),
	datad => VCC,
	cin => \C0|Add0~13\,
	combout => \C0|Add0~14_combout\,
	cout => \C0|Add0~15\);

-- Location: FF_X40_Y4_N15
\C0|CNT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C0|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C0|CNT\(7));

-- Location: LCCOMB_X40_Y4_N16
\C0|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C0|Add0~16_combout\ = (\C0|CNT\(8) & (\C0|Add0~15\ $ (GND))) # (!\C0|CNT\(8) & (!\C0|Add0~15\ & VCC))
-- \C0|Add0~17\ = CARRY((\C0|CNT\(8) & !\C0|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C0|CNT\(8),
	datad => VCC,
	cin => \C0|Add0~15\,
	combout => \C0|Add0~16_combout\,
	cout => \C0|Add0~17\);

-- Location: FF_X40_Y4_N17
\C0|CNT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C0|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C0|CNT\(8));

-- Location: LCCOMB_X40_Y4_N18
\C0|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C0|Add0~18_combout\ = (\C0|CNT\(9) & (!\C0|Add0~17\)) # (!\C0|CNT\(9) & ((\C0|Add0~17\) # (GND)))
-- \C0|Add0~19\ = CARRY((!\C0|Add0~17\) # (!\C0|CNT\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C0|CNT\(9),
	datad => VCC,
	cin => \C0|Add0~17\,
	combout => \C0|Add0~18_combout\,
	cout => \C0|Add0~19\);

-- Location: FF_X40_Y4_N19
\C0|CNT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C0|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C0|CNT\(9));

-- Location: LCCOMB_X40_Y4_N20
\C0|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C0|Add0~20_combout\ = (\C0|CNT\(10) & (\C0|Add0~19\ $ (GND))) # (!\C0|CNT\(10) & (!\C0|Add0~19\ & VCC))
-- \C0|Add0~21\ = CARRY((\C0|CNT\(10) & !\C0|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C0|CNT\(10),
	datad => VCC,
	cin => \C0|Add0~19\,
	combout => \C0|Add0~20_combout\,
	cout => \C0|Add0~21\);

-- Location: FF_X40_Y4_N21
\C0|CNT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C0|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C0|CNT\(10));

-- Location: LCCOMB_X40_Y4_N22
\C0|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C0|Add0~22_combout\ = (\C0|CNT\(11) & (!\C0|Add0~21\)) # (!\C0|CNT\(11) & ((\C0|Add0~21\) # (GND)))
-- \C0|Add0~23\ = CARRY((!\C0|Add0~21\) # (!\C0|CNT\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C0|CNT\(11),
	datad => VCC,
	cin => \C0|Add0~21\,
	combout => \C0|Add0~22_combout\,
	cout => \C0|Add0~23\);

-- Location: FF_X40_Y4_N23
\C0|CNT[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C0|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C0|CNT\(11));

-- Location: LCCOMB_X40_Y4_N24
\C0|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C0|Add0~24_combout\ = (\C0|CNT\(12) & (\C0|Add0~23\ $ (GND))) # (!\C0|CNT\(12) & (!\C0|Add0~23\ & VCC))
-- \C0|Add0~25\ = CARRY((\C0|CNT\(12) & !\C0|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C0|CNT\(12),
	datad => VCC,
	cin => \C0|Add0~23\,
	combout => \C0|Add0~24_combout\,
	cout => \C0|Add0~25\);

-- Location: FF_X40_Y4_N25
\C0|CNT[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C0|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C0|CNT\(12));

-- Location: LCCOMB_X40_Y4_N26
\C0|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C0|Add0~26_combout\ = (\C0|CNT\(13) & (!\C0|Add0~25\)) # (!\C0|CNT\(13) & ((\C0|Add0~25\) # (GND)))
-- \C0|Add0~27\ = CARRY((!\C0|Add0~25\) # (!\C0|CNT\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C0|CNT\(13),
	datad => VCC,
	cin => \C0|Add0~25\,
	combout => \C0|Add0~26_combout\,
	cout => \C0|Add0~27\);

-- Location: FF_X40_Y4_N27
\C0|CNT[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C0|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C0|CNT\(13));

-- Location: LCCOMB_X40_Y4_N28
\C0|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C0|Add0~28_combout\ = (\C0|CNT\(14) & (\C0|Add0~27\ $ (GND))) # (!\C0|CNT\(14) & (!\C0|Add0~27\ & VCC))
-- \C0|Add0~29\ = CARRY((\C0|CNT\(14) & !\C0|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C0|CNT\(14),
	datad => VCC,
	cin => \C0|Add0~27\,
	combout => \C0|Add0~28_combout\,
	cout => \C0|Add0~29\);

-- Location: FF_X40_Y4_N29
\C0|CNT[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C0|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C0|CNT\(14));

-- Location: LCCOMB_X40_Y4_N30
\C0|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C0|Add0~30_combout\ = (\C0|CNT\(15) & (!\C0|Add0~29\)) # (!\C0|CNT\(15) & ((\C0|Add0~29\) # (GND)))
-- \C0|Add0~31\ = CARRY((!\C0|Add0~29\) # (!\C0|CNT\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C0|CNT\(15),
	datad => VCC,
	cin => \C0|Add0~29\,
	combout => \C0|Add0~30_combout\,
	cout => \C0|Add0~31\);

-- Location: FF_X40_Y4_N31
\C0|CNT[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C0|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C0|CNT\(15));

-- Location: LCCOMB_X40_Y3_N0
\C0|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C0|Add0~32_combout\ = (\C0|CNT\(16) & (\C0|Add0~31\ $ (GND))) # (!\C0|CNT\(16) & (!\C0|Add0~31\ & VCC))
-- \C0|Add0~33\ = CARRY((\C0|CNT\(16) & !\C0|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C0|CNT\(16),
	datad => VCC,
	cin => \C0|Add0~31\,
	combout => \C0|Add0~32_combout\,
	cout => \C0|Add0~33\);

-- Location: FF_X40_Y3_N1
\C0|CNT[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C0|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C0|CNT\(16));

-- Location: LCCOMB_X40_Y3_N2
\C0|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C0|Add0~34_combout\ = (\C0|CNT\(17) & (!\C0|Add0~33\)) # (!\C0|CNT\(17) & ((\C0|Add0~33\) # (GND)))
-- \C0|Add0~35\ = CARRY((!\C0|Add0~33\) # (!\C0|CNT\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C0|CNT\(17),
	datad => VCC,
	cin => \C0|Add0~33\,
	combout => \C0|Add0~34_combout\,
	cout => \C0|Add0~35\);

-- Location: FF_X40_Y3_N3
\C0|CNT[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C0|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C0|CNT\(17));

-- Location: LCCOMB_X40_Y3_N4
\C0|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C0|Add0~36_combout\ = (\C0|CNT\(18) & (\C0|Add0~35\ $ (GND))) # (!\C0|CNT\(18) & (!\C0|Add0~35\ & VCC))
-- \C0|Add0~37\ = CARRY((\C0|CNT\(18) & !\C0|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C0|CNT\(18),
	datad => VCC,
	cin => \C0|Add0~35\,
	combout => \C0|Add0~36_combout\,
	cout => \C0|Add0~37\);

-- Location: FF_X40_Y3_N5
\C0|CNT[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C0|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C0|CNT\(18));

-- Location: LCCOMB_X40_Y3_N6
\C0|Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C0|Add0~38_combout\ = (\C0|CNT\(19) & (!\C0|Add0~37\)) # (!\C0|CNT\(19) & ((\C0|Add0~37\) # (GND)))
-- \C0|Add0~39\ = CARRY((!\C0|Add0~37\) # (!\C0|CNT\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C0|CNT\(19),
	datad => VCC,
	cin => \C0|Add0~37\,
	combout => \C0|Add0~38_combout\,
	cout => \C0|Add0~39\);

-- Location: FF_X40_Y3_N7
\C0|CNT[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C0|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C0|CNT\(19));

-- Location: LCCOMB_X39_Y3_N12
\C0|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C0|Equal0~3_combout\ = (!\C0|CNT\(19) & (!\C0|CNT\(16) & (!\C0|CNT\(18) & !\C0|CNT\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|CNT\(19),
	datab => \C0|CNT\(16),
	datac => \C0|CNT\(18),
	datad => \C0|CNT\(17),
	combout => \C0|Equal0~3_combout\);

-- Location: LCCOMB_X40_Y3_N8
\C0|Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C0|Add0~40_combout\ = (\C0|CNT\(20) & (\C0|Add0~39\ $ (GND))) # (!\C0|CNT\(20) & (!\C0|Add0~39\ & VCC))
-- \C0|Add0~41\ = CARRY((\C0|CNT\(20) & !\C0|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C0|CNT\(20),
	datad => VCC,
	cin => \C0|Add0~39\,
	combout => \C0|Add0~40_combout\,
	cout => \C0|Add0~41\);

-- Location: FF_X40_Y3_N9
\C0|CNT[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C0|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C0|CNT\(20));

-- Location: LCCOMB_X40_Y3_N10
\C0|Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C0|Add0~42_combout\ = (\C0|CNT\(21) & (!\C0|Add0~41\)) # (!\C0|CNT\(21) & ((\C0|Add0~41\) # (GND)))
-- \C0|Add0~43\ = CARRY((!\C0|Add0~41\) # (!\C0|CNT\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C0|CNT\(21),
	datad => VCC,
	cin => \C0|Add0~41\,
	combout => \C0|Add0~42_combout\,
	cout => \C0|Add0~43\);

-- Location: FF_X40_Y3_N11
\C0|CNT[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C0|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C0|CNT\(21));

-- Location: LCCOMB_X40_Y3_N12
\C0|Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C0|Add0~44_combout\ = (\C0|CNT\(22) & (\C0|Add0~43\ $ (GND))) # (!\C0|CNT\(22) & (!\C0|Add0~43\ & VCC))
-- \C0|Add0~45\ = CARRY((\C0|CNT\(22) & !\C0|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C0|CNT\(22),
	datad => VCC,
	cin => \C0|Add0~43\,
	combout => \C0|Add0~44_combout\,
	cout => \C0|Add0~45\);

-- Location: FF_X40_Y3_N13
\C0|CNT[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C0|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C0|CNT\(22));

-- Location: LCCOMB_X40_Y3_N14
\C0|Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C0|Add0~46_combout\ = (\C0|CNT\(23) & (!\C0|Add0~45\)) # (!\C0|CNT\(23) & ((\C0|Add0~45\) # (GND)))
-- \C0|Add0~47\ = CARRY((!\C0|Add0~45\) # (!\C0|CNT\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C0|CNT\(23),
	datad => VCC,
	cin => \C0|Add0~45\,
	combout => \C0|Add0~46_combout\,
	cout => \C0|Add0~47\);

-- Location: FF_X40_Y3_N15
\C0|CNT[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C0|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C0|CNT\(23));

-- Location: LCCOMB_X40_Y3_N16
\C0|Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C0|Add0~48_combout\ = (\C0|CNT\(24) & (\C0|Add0~47\ $ (GND))) # (!\C0|CNT\(24) & (!\C0|Add0~47\ & VCC))
-- \C0|Add0~49\ = CARRY((\C0|CNT\(24) & !\C0|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C0|CNT\(24),
	datad => VCC,
	cin => \C0|Add0~47\,
	combout => \C0|Add0~48_combout\,
	cout => \C0|Add0~49\);

-- Location: FF_X40_Y3_N17
\C0|CNT[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C0|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C0|CNT\(24));

-- Location: LCCOMB_X40_Y3_N18
\C0|Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C0|Add0~50_combout\ = (\C0|CNT\(25) & (!\C0|Add0~49\)) # (!\C0|CNT\(25) & ((\C0|Add0~49\) # (GND)))
-- \C0|Add0~51\ = CARRY((!\C0|Add0~49\) # (!\C0|CNT\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C0|CNT\(25),
	datad => VCC,
	cin => \C0|Add0~49\,
	combout => \C0|Add0~50_combout\,
	cout => \C0|Add0~51\);

-- Location: FF_X40_Y3_N19
\C0|CNT[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C0|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C0|CNT\(25));

-- Location: LCCOMB_X40_Y3_N20
\C0|Add0~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C0|Add0~52_combout\ = (\C0|CNT\(26) & (\C0|Add0~51\ $ (GND))) # (!\C0|CNT\(26) & (!\C0|Add0~51\ & VCC))
-- \C0|Add0~53\ = CARRY((\C0|CNT\(26) & !\C0|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C0|CNT\(26),
	datad => VCC,
	cin => \C0|Add0~51\,
	combout => \C0|Add0~52_combout\,
	cout => \C0|Add0~53\);

-- Location: FF_X40_Y3_N21
\C0|CNT[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C0|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C0|CNT\(26));

-- Location: LCCOMB_X40_Y3_N22
\C0|Add0~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C0|Add0~54_combout\ = (\C0|CNT\(27) & (!\C0|Add0~53\)) # (!\C0|CNT\(27) & ((\C0|Add0~53\) # (GND)))
-- \C0|Add0~55\ = CARRY((!\C0|Add0~53\) # (!\C0|CNT\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C0|CNT\(27),
	datad => VCC,
	cin => \C0|Add0~53\,
	combout => \C0|Add0~54_combout\,
	cout => \C0|Add0~55\);

-- Location: FF_X40_Y3_N23
\C0|CNT[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C0|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C0|CNT\(27));

-- Location: LCCOMB_X39_Y3_N8
\C0|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C0|Equal0~1_combout\ = (!\C0|CNT\(26) & (!\C0|CNT\(25) & (!\C0|CNT\(27) & !\C0|CNT\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|CNT\(26),
	datab => \C0|CNT\(25),
	datac => \C0|CNT\(27),
	datad => \C0|CNT\(24),
	combout => \C0|Equal0~1_combout\);

-- Location: LCCOMB_X40_Y3_N24
\C0|Add0~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C0|Add0~56_combout\ = (\C0|CNT\(28) & (\C0|Add0~55\ $ (GND))) # (!\C0|CNT\(28) & (!\C0|Add0~55\ & VCC))
-- \C0|Add0~57\ = CARRY((\C0|CNT\(28) & !\C0|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C0|CNT\(28),
	datad => VCC,
	cin => \C0|Add0~55\,
	combout => \C0|Add0~56_combout\,
	cout => \C0|Add0~57\);

-- Location: FF_X40_Y3_N25
\C0|CNT[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C0|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C0|CNT\(28));

-- Location: LCCOMB_X40_Y3_N26
\C0|Add0~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C0|Add0~58_combout\ = (\C0|CNT\(29) & (!\C0|Add0~57\)) # (!\C0|CNT\(29) & ((\C0|Add0~57\) # (GND)))
-- \C0|Add0~59\ = CARRY((!\C0|Add0~57\) # (!\C0|CNT\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C0|CNT\(29),
	datad => VCC,
	cin => \C0|Add0~57\,
	combout => \C0|Add0~58_combout\,
	cout => \C0|Add0~59\);

-- Location: FF_X40_Y3_N27
\C0|CNT[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C0|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C0|CNT\(29));

-- Location: LCCOMB_X40_Y3_N28
\C0|Add0~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C0|Add0~60_combout\ = (\C0|CNT\(30) & (\C0|Add0~59\ $ (GND))) # (!\C0|CNT\(30) & (!\C0|Add0~59\ & VCC))
-- \C0|Add0~61\ = CARRY((\C0|CNT\(30) & !\C0|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C0|CNT\(30),
	datad => VCC,
	cin => \C0|Add0~59\,
	combout => \C0|Add0~60_combout\,
	cout => \C0|Add0~61\);

-- Location: FF_X40_Y3_N29
\C0|CNT[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C0|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C0|CNT\(30));

-- Location: LCCOMB_X40_Y3_N30
\C0|Add0~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C0|Add0~62_combout\ = \C0|CNT\(31) $ (\C0|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C0|CNT\(31),
	cin => \C0|Add0~61\,
	combout => \C0|Add0~62_combout\);

-- Location: FF_X40_Y3_N31
\C0|CNT[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C0|Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C0|CNT\(31));

-- Location: LCCOMB_X39_Y3_N4
\C0|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C0|Equal0~0_combout\ = (!\C0|CNT\(31) & (!\C0|CNT\(30) & (!\C0|CNT\(29) & !\C0|CNT\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|CNT\(31),
	datab => \C0|CNT\(30),
	datac => \C0|CNT\(29),
	datad => \C0|CNT\(28),
	combout => \C0|Equal0~0_combout\);

-- Location: LCCOMB_X39_Y3_N10
\C0|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C0|Equal0~2_combout\ = (!\C0|CNT\(20) & (!\C0|CNT\(22) & (!\C0|CNT\(23) & !\C0|CNT\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|CNT\(20),
	datab => \C0|CNT\(22),
	datac => \C0|CNT\(23),
	datad => \C0|CNT\(21),
	combout => \C0|Equal0~2_combout\);

-- Location: LCCOMB_X39_Y3_N0
\C0|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C0|Equal0~4_combout\ = (\C0|Equal0~3_combout\ & (\C0|Equal0~1_combout\ & (\C0|Equal0~0_combout\ & \C0|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|Equal0~3_combout\,
	datab => \C0|Equal0~1_combout\,
	datac => \C0|Equal0~0_combout\,
	datad => \C0|Equal0~2_combout\,
	combout => \C0|Equal0~4_combout\);

-- Location: LCCOMB_X39_Y3_N24
\C0|TEMP~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C0|TEMP~0_combout\ = \C0|TEMP~q\ $ (((\C0|Equal0~4_combout\ & \C0|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C0|Equal0~4_combout\,
	datac => \C0|TEMP~q\,
	datad => \C0|Equal0~9_combout\,
	combout => \C0|TEMP~0_combout\);

-- Location: LCCOMB_X39_Y3_N30
\C0|TEMP~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \C0|TEMP~feeder_combout\ = \C0|TEMP~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C0|TEMP~0_combout\,
	combout => \C0|TEMP~feeder_combout\);

-- Location: FF_X39_Y3_N31
\C0|TEMP\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \C0|TEMP~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C0|TEMP~q\);

-- Location: LCCOMB_X38_Y2_N24
\MX5|U3|O0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MX5|U3|O0~0_combout\ = ((\UP_DN~input_o\ & ((!\A0|F0:0:U0|Q~q\) # (!\A0|F0:3:U0|Q~q\))) # (!\UP_DN~input_o\ & ((\A0|F0:3:U0|Q~q\) # (\A0|F0:0:U0|Q~q\)))) # (!\A0|INV1_DN~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UP_DN~input_o\,
	datab => \A0|F0:3:U0|Q~q\,
	datac => \A0|F0:0:U0|Q~q\,
	datad => \A0|INV1_DN~0_combout\,
	combout => \MX5|U3|O0~0_combout\);

-- Location: FF_X38_Y2_N25
\D2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C0|TEMP~q\,
	d => \MX5|U3|O0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D2|Q~q\);

-- Location: LCCOMB_X37_Y2_N30
CLK6 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLK6~combout\ = LCELL((\A0|MX11|U3|O0~0_combout\ & !\D2|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A0|MX11|U3|O0~0_combout\,
	datad => \D2|Q~q\,
	combout => \CLK6~combout\);

-- Location: LCCOMB_X37_Y2_N18
\A1|F4:2:MX4|U3|O0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A1|F4:2:MX4|U3|O0~0_combout\ = (\UP_DN~input_o\ & ((\A1|F0:1:U0|Q~q\ & (!\A1|F0:2:U0|Q~q\ & \A1|F0:0:U0|Q~q\)) # (!\A1|F0:1:U0|Q~q\ & (\A1|F0:2:U0|Q~q\ & !\A1|F0:0:U0|Q~q\)))) # (!\UP_DN~input_o\ & (\A1|F0:2:U0|Q~q\ $ (((!\A1|F0:1:U0|Q~q\ & 
-- !\A1|F0:0:U0|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100001100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UP_DN~input_o\,
	datab => \A1|F0:1:U0|Q~q\,
	datac => \A1|F0:2:U0|Q~q\,
	datad => \A1|F0:0:U0|Q~q\,
	combout => \A1|F4:2:MX4|U3|O0~0_combout\);

-- Location: FF_X37_Y2_N19
\A1|F0:2:U0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK6~combout\,
	d => \A1|F4:2:MX4|U3|O0~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A1|F0:2:U0|Q~q\);

-- Location: LCCOMB_X37_Y2_N14
\A1|F4:1:MX7|U3|O0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A1|F4:1:MX7|U3|O0~0_combout\ = (\UP_DN~input_o\ & (!\A1|F0:2:U0|Q~q\ & (\A1|F0:0:U0|Q~q\ $ (\A1|F0:1:U0|Q~q\)))) # (!\UP_DN~input_o\ & ((\A1|F0:0:U0|Q~q\ & (\A1|F0:1:U0|Q~q\ & !\A1|F0:2:U0|Q~q\)) # (!\A1|F0:0:U0|Q~q\ & (!\A1|F0:1:U0|Q~q\ & 
-- \A1|F0:2:U0|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UP_DN~input_o\,
	datab => \A1|F0:0:U0|Q~q\,
	datac => \A1|F0:1:U0|Q~q\,
	datad => \A1|F0:2:U0|Q~q\,
	combout => \A1|F4:1:MX7|U3|O0~0_combout\);

-- Location: FF_X37_Y2_N15
\A1|F0:1:U0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK6~combout\,
	d => \A1|F4:1:MX7|U3|O0~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A1|F0:1:U0|Q~q\);

-- Location: LCCOMB_X37_Y2_N28
\A1|F4:0:MX4|U3|O0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A1|F4:0:MX4|U3|O0~0_combout\ = (\A1|F0:1:U0|Q~q\ & ((\A1|F0:2:U0|Q~q\ & (!\UP_DN~input_o\)) # (!\A1|F0:2:U0|Q~q\ & ((!\A1|F0:0:U0|Q~q\))))) # (!\A1|F0:1:U0|Q~q\ & (((!\A1|F0:0:U0|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UP_DN~input_o\,
	datab => \A1|F0:1:U0|Q~q\,
	datac => \A1|F0:0:U0|Q~q\,
	datad => \A1|F0:2:U0|Q~q\,
	combout => \A1|F4:0:MX4|U3|O0~0_combout\);

-- Location: FF_X37_Y2_N29
\A1|F0:0:U0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK6~combout\,
	d => \A1|F4:0:MX4|U3|O0~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A1|F0:0:U0|Q~q\);

-- Location: LCCOMB_X37_Y2_N22
\A1|INV1_UP\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A1|INV1_UP~combout\ = (\RESET~input_o\) # ((\A1|F0:0:U0|Q~q\) # ((\A1|F0:1:U0|Q~q\) # (\A1|F0:2:U0|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datab => \A1|F0:0:U0|Q~q\,
	datac => \A1|F0:1:U0|Q~q\,
	datad => \A1|F0:2:U0|Q~q\,
	combout => \A1|INV1_UP~combout\);

-- Location: LCCOMB_X37_Y2_N16
\A1|INV1_DN\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A1|INV1_DN~combout\ = (\A1|F0:0:U0|Q~q\ & (!\A1|F0:1:U0|Q~q\ & \A1|F0:2:U0|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A1|F0:0:U0|Q~q\,
	datac => \A1|F0:1:U0|Q~q\,
	datad => \A1|F0:2:U0|Q~q\,
	combout => \A1|INV1_DN~combout\);

-- Location: LCCOMB_X37_Y2_N4
\A1|MX11|U3|O0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A1|MX11|U3|O0~0_combout\ = (\UP_DN~input_o\ & (!\A1|INV1_UP~combout\)) # (!\UP_DN~input_o\ & ((\A1|INV1_DN~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UP_DN~input_o\,
	datac => \A1|INV1_UP~combout\,
	datad => \A1|INV1_DN~combout\,
	combout => \A1|MX11|U3|O0~0_combout\);

-- Location: LCCOMB_X37_Y2_N20
\MX3|U3|O0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MX3|U3|O0~1_combout\ = (\A1|F0:1:U0|Q~q\) # ((\UP_DN~input_o\ & ((!\A1|F0:0:U0|Q~q\) # (!\A1|F0:2:U0|Q~q\))) # (!\UP_DN~input_o\ & ((\A1|F0:2:U0|Q~q\) # (\A1|F0:0:U0|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UP_DN~input_o\,
	datab => \A1|F0:2:U0|Q~q\,
	datac => \A1|F0:1:U0|Q~q\,
	datad => \A1|F0:0:U0|Q~q\,
	combout => \MX3|U3|O0~1_combout\);

-- Location: FF_X37_Y2_N21
\D0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C0|TEMP~q\,
	d => \MX3|U3|O0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D0|Q~q\);

-- Location: LCCOMB_X37_Y2_N24
CLK4 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLK4~combout\ = (\A1|MX11|U3|O0~0_combout\ & !\D0|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A1|MX11|U3|O0~0_combout\,
	datad => \D0|Q~q\,
	combout => \CLK4~combout\);

-- Location: LCCOMB_X37_Y2_N0
\MX1|U3|O0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MX1|U3|O0~combout\ = LCELL((\STOP~input_o\ & (\MIN~input_o\)) # (!\STOP~input_o\ & ((\CLK4~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \STOP~input_o\,
	datac => \MIN~input_o\,
	datad => \CLK4~combout\,
	combout => \MX1|U3|O0~combout\);

-- Location: LCCOMB_X38_Y3_N10
\A2|INV_DN~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A2|INV_DN~0_combout\ = (\A2|F0:3:U0|Q~q\ & (((!\A2|F0:2:U0|Q~q\ & !\A2|F0:1:U0|Q~q\)))) # (!\A2|F0:3:U0|Q~q\ & ((\A2|F0:0:U0|Q~q\) # ((\A2|F0:2:U0|Q~q\) # (\A2|F0:1:U0|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2|F0:3:U0|Q~q\,
	datab => \A2|F0:0:U0|Q~q\,
	datac => \A2|F0:2:U0|Q~q\,
	datad => \A2|F0:1:U0|Q~q\,
	combout => \A2|INV_DN~0_combout\);

-- Location: LCCOMB_X38_Y3_N6
\A2|C[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A2|C\(1) = (\UP_DN~input_o\ & ((!\A2|F0:1:U0|Q~q\) # (!\A2|F0:0:U0|Q~q\))) # (!\UP_DN~input_o\ & ((\A2|F0:0:U0|Q~q\) # (\A2|F0:1:U0|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UP_DN~input_o\,
	datac => \A2|F0:0:U0|Q~q\,
	datad => \A2|F0:1:U0|Q~q\,
	combout => \A2|C\(1));

-- Location: LCCOMB_X38_Y3_N2
\A2|QE_XOR[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A2|QE_XOR\(3) = \A2|F0:3:U0|Q~q\ $ (((\A2|C\(1)) # (\UP_DN~input_o\ $ (\A2|F0:2:U0|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UP_DN~input_o\,
	datab => \A2|F0:3:U0|Q~q\,
	datac => \A2|F0:2:U0|Q~q\,
	datad => \A2|C\(1),
	combout => \A2|QE_XOR\(3));

-- Location: LCCOMB_X38_Y3_N20
\A2|F4:3:MX4|U3|O0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A2|F4:3:MX4|U3|O0~0_combout\ = (\UP_DN~input_o\ & (((\A2|INV_UP~combout\ & !\A2|QE_XOR\(3))))) # (!\UP_DN~input_o\ & (((!\A2|QE_XOR\(3))) # (!\A2|INV_DN~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2|INV_DN~0_combout\,
	datab => \UP_DN~input_o\,
	datac => \A2|INV_UP~combout\,
	datad => \A2|QE_XOR\(3),
	combout => \A2|F4:3:MX4|U3|O0~0_combout\);

-- Location: FF_X38_Y3_N21
\A2|F0:3:U0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MX1|U3|O0~combout\,
	d => \A2|F4:3:MX4|U3|O0~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A2|F0:3:U0|Q~q\);

-- Location: LCCOMB_X38_Y3_N26
\A2|INV_UP\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A2|INV_UP~combout\ = ((!\A2|F0:1:U0|Q~q\ & (!\A2|F0:0:U0|Q~q\ & !\A2|F0:2:U0|Q~q\))) # (!\A2|F0:3:U0|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2|F0:1:U0|Q~q\,
	datab => \A2|F0:0:U0|Q~q\,
	datac => \A2|F0:2:U0|Q~q\,
	datad => \A2|F0:3:U0|Q~q\,
	combout => \A2|INV_UP~combout\);

-- Location: LCCOMB_X38_Y3_N4
\A2|F4:0:MX4|U3|O0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A2|F4:0:MX4|U3|O0~0_combout\ = (\UP_DN~input_o\ & (\A2|INV_UP~combout\ & (!\A2|F0:0:U0|Q~q\))) # (!\UP_DN~input_o\ & (((!\A2|INV_DN~0_combout\) # (!\A2|F0:0:U0|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2|INV_UP~combout\,
	datab => \UP_DN~input_o\,
	datac => \A2|F0:0:U0|Q~q\,
	datad => \A2|INV_DN~0_combout\,
	combout => \A2|F4:0:MX4|U3|O0~0_combout\);

-- Location: FF_X38_Y3_N5
\A2|F0:0:U0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MX1|U3|O0~combout\,
	d => \A2|F4:0:MX4|U3|O0~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A2|F0:0:U0|Q~q\);

-- Location: LCCOMB_X38_Y3_N0
\A2|QE_XOR[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A2|QE_XOR\(1) = \UP_DN~input_o\ $ (\A2|F0:1:U0|Q~q\ $ (\A2|F0:0:U0|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UP_DN~input_o\,
	datac => \A2|F0:1:U0|Q~q\,
	datad => \A2|F0:0:U0|Q~q\,
	combout => \A2|QE_XOR\(1));

-- Location: LCCOMB_X38_Y3_N24
\A2|F4:1:MX7|U3|O0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A2|F4:1:MX7|U3|O0~0_combout\ = (!\A2|QE_XOR\(1) & ((\UP_DN~input_o\ & ((\A2|INV_UP~combout\))) # (!\UP_DN~input_o\ & (\A2|INV_DN~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UP_DN~input_o\,
	datab => \A2|QE_XOR\(1),
	datac => \A2|INV_DN~0_combout\,
	datad => \A2|INV_UP~combout\,
	combout => \A2|F4:1:MX7|U3|O0~0_combout\);

-- Location: FF_X38_Y3_N25
\A2|F0:1:U0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MX1|U3|O0~combout\,
	d => \A2|F4:1:MX7|U3|O0~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A2|F0:1:U0|Q~q\);

-- Location: LCCOMB_X38_Y3_N14
\A2|QE_XOR[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A2|QE_XOR\(2) = \A2|F0:2:U0|Q~q\ $ (((\UP_DN~input_o\ & ((!\A2|F0:0:U0|Q~q\) # (!\A2|F0:1:U0|Q~q\))) # (!\UP_DN~input_o\ & ((\A2|F0:1:U0|Q~q\) # (\A2|F0:0:U0|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UP_DN~input_o\,
	datab => \A2|F0:1:U0|Q~q\,
	datac => \A2|F0:2:U0|Q~q\,
	datad => \A2|F0:0:U0|Q~q\,
	combout => \A2|QE_XOR\(2));

-- Location: LCCOMB_X38_Y3_N8
\A2|F4:2:MX7|U3|O0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A2|F4:2:MX7|U3|O0~0_combout\ = (!\A2|QE_XOR\(2) & ((\UP_DN~input_o\ & ((\A2|INV_UP~combout\))) # (!\UP_DN~input_o\ & (\A2|INV_DN~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UP_DN~input_o\,
	datab => \A2|QE_XOR\(2),
	datac => \A2|INV_DN~0_combout\,
	datad => \A2|INV_UP~combout\,
	combout => \A2|F4:2:MX7|U3|O0~0_combout\);

-- Location: FF_X38_Y3_N9
\A2|F0:2:U0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MX1|U3|O0~combout\,
	d => \A2|F4:2:MX7|U3|O0~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A2|F0:2:U0|Q~q\);

-- Location: LCCOMB_X38_Y3_N30
\A2|INV1_UP~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A2|INV1_UP~0_combout\ = (!\A2|F0:2:U0|Q~q\ & (!\A2|F0:3:U0|Q~q\ & (!\A2|F0:0:U0|Q~q\ & !\A2|F0:1:U0|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2|F0:2:U0|Q~q\,
	datab => \A2|F0:3:U0|Q~q\,
	datac => \A2|F0:0:U0|Q~q\,
	datad => \A2|F0:1:U0|Q~q\,
	combout => \A2|INV1_UP~0_combout\);

-- Location: LCCOMB_X39_Y2_N10
\A0|INV1_UP~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A0|INV1_UP~0_combout\ = (!\A0|F0:1:U0|Q~q\ & (!\A0|F0:3:U0|Q~q\ & (!\A0|F0:0:U0|Q~q\ & !\A0|F0:2:U0|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A0|F0:1:U0|Q~q\,
	datab => \A0|F0:3:U0|Q~q\,
	datac => \A0|F0:0:U0|Q~q\,
	datad => \A0|F0:2:U0|Q~q\,
	combout => \A0|INV1_UP~0_combout\);

-- Location: LCCOMB_X37_Y2_N6
\MX3|U3|O0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MX3|U3|O0~0_combout\ = (!\UP_DN~input_o\ & (!\A1|F0:0:U0|Q~q\ & (!\A1|F0:1:U0|Q~q\ & !\A1|F0:2:U0|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UP_DN~input_o\,
	datab => \A1|F0:0:U0|Q~q\,
	datac => \A1|F0:1:U0|Q~q\,
	datad => \A1|F0:2:U0|Q~q\,
	combout => \MX3|U3|O0~0_combout\);

-- Location: IOIBUF_X49_Y0_N15
\HOUR~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_HOUR,
	o => \HOUR~input_o\);

-- Location: LCCOMB_X38_Y3_N12
\A2|INV1_DN~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A2|INV1_DN~0_combout\ = (!\A2|F0:2:U0|Q~q\ & !\A2|F0:1:U0|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A2|F0:2:U0|Q~q\,
	datad => \A2|F0:1:U0|Q~q\,
	combout => \A2|INV1_DN~0_combout\);

-- Location: LCCOMB_X38_Y3_N22
\A2|INV1_UP\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A2|INV1_UP~combout\ = (\RESET~input_o\) # ((\A2|F0:3:U0|Q~q\) # ((\A2|F0:0:U0|Q~q\) # (!\A2|INV1_DN~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datab => \A2|F0:3:U0|Q~q\,
	datac => \A2|F0:0:U0|Q~q\,
	datad => \A2|INV1_DN~0_combout\,
	combout => \A2|INV1_UP~combout\);

-- Location: LCCOMB_X38_Y3_N18
\A2|INV1_DN\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A2|INV1_DN~combout\ = (!\RESET~input_o\ & (\A2|F0:3:U0|Q~q\ & (\A2|F0:0:U0|Q~q\ & \A2|INV1_DN~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datab => \A2|F0:3:U0|Q~q\,
	datac => \A2|F0:0:U0|Q~q\,
	datad => \A2|INV1_DN~0_combout\,
	combout => \A2|INV1_DN~combout\);

-- Location: LCCOMB_X38_Y3_N16
\A2|MX11|U3|O0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A2|MX11|U3|O0~0_combout\ = (\UP_DN~input_o\ & (!\A2|INV1_UP~combout\)) # (!\UP_DN~input_o\ & ((\A2|INV1_DN~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UP_DN~input_o\,
	datac => \A2|INV1_UP~combout\,
	datad => \A2|INV1_DN~combout\,
	combout => \A2|MX11|U3|O0~0_combout\);

-- Location: LCCOMB_X38_Y3_N28
\MX6|U3|O0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MX6|U3|O0~0_combout\ = ((\UP_DN~input_o\ & ((!\A2|F0:0:U0|Q~q\) # (!\A2|F0:3:U0|Q~q\))) # (!\UP_DN~input_o\ & ((\A2|F0:3:U0|Q~q\) # (\A2|F0:0:U0|Q~q\)))) # (!\A2|INV1_DN~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UP_DN~input_o\,
	datab => \A2|F0:3:U0|Q~q\,
	datac => \A2|F0:0:U0|Q~q\,
	datad => \A2|INV1_DN~0_combout\,
	combout => \MX6|U3|O0~0_combout\);

-- Location: FF_X38_Y3_N29
\D3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C0|TEMP~q\,
	d => \MX6|U3|O0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D3|Q~q\);

-- Location: LCCOMB_X37_Y3_N6
CLK7 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLK7~combout\ = LCELL((\A2|MX11|U3|O0~0_combout\ & !\D3|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A2|MX11|U3|O0~0_combout\,
	datad => \D3|Q~q\,
	combout => \CLK7~combout\);

-- Location: LCCOMB_X37_Y3_N18
\A3|F4:0:MX4|U3|O0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A3|F4:0:MX4|U3|O0~0_combout\ = (\A3|F0:1:U0|Q~q\ & ((\A3|F0:2:U0|Q~q\ & (!\UP_DN~input_o\)) # (!\A3|F0:2:U0|Q~q\ & ((!\A3|F0:0:U0|Q~q\))))) # (!\A3|F0:1:U0|Q~q\ & (((!\A3|F0:0:U0|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UP_DN~input_o\,
	datab => \A3|F0:1:U0|Q~q\,
	datac => \A3|F0:0:U0|Q~q\,
	datad => \A3|F0:2:U0|Q~q\,
	combout => \A3|F4:0:MX4|U3|O0~0_combout\);

-- Location: FF_X37_Y3_N19
\A3|F0:0:U0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK7~combout\,
	d => \A3|F4:0:MX4|U3|O0~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A3|F0:0:U0|Q~q\);

-- Location: LCCOMB_X37_Y3_N26
\A3|F4:2:MX4|U3|O0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A3|F4:2:MX4|U3|O0~0_combout\ = (\UP_DN~input_o\ & ((\A3|F0:1:U0|Q~q\ & (!\A3|F0:2:U0|Q~q\ & \A3|F0:0:U0|Q~q\)) # (!\A3|F0:1:U0|Q~q\ & (\A3|F0:2:U0|Q~q\ & !\A3|F0:0:U0|Q~q\)))) # (!\UP_DN~input_o\ & (\A3|F0:2:U0|Q~q\ $ (((!\A3|F0:1:U0|Q~q\ & 
-- !\A3|F0:0:U0|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100001100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UP_DN~input_o\,
	datab => \A3|F0:1:U0|Q~q\,
	datac => \A3|F0:2:U0|Q~q\,
	datad => \A3|F0:0:U0|Q~q\,
	combout => \A3|F4:2:MX4|U3|O0~0_combout\);

-- Location: FF_X37_Y3_N27
\A3|F0:2:U0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK7~combout\,
	d => \A3|F4:2:MX4|U3|O0~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A3|F0:2:U0|Q~q\);

-- Location: LCCOMB_X37_Y3_N28
\A3|F4:1:MX7|U3|O0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A3|F4:1:MX7|U3|O0~0_combout\ = (\A3|F0:2:U0|Q~q\ & (!\UP_DN~input_o\ & (!\A3|F0:1:U0|Q~q\ & !\A3|F0:0:U0|Q~q\))) # (!\A3|F0:2:U0|Q~q\ & ((\UP_DN~input_o\ & (\A3|F0:1:U0|Q~q\ $ (\A3|F0:0:U0|Q~q\))) # (!\UP_DN~input_o\ & (\A3|F0:1:U0|Q~q\ & 
-- \A3|F0:0:U0|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A3|F0:2:U0|Q~q\,
	datab => \UP_DN~input_o\,
	datac => \A3|F0:1:U0|Q~q\,
	datad => \A3|F0:0:U0|Q~q\,
	combout => \A3|F4:1:MX7|U3|O0~0_combout\);

-- Location: FF_X37_Y3_N29
\A3|F0:1:U0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK7~combout\,
	d => \A3|F4:1:MX7|U3|O0~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A3|F0:1:U0|Q~q\);

-- Location: LCCOMB_X37_Y3_N14
\A3|INV1_UP\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A3|INV1_UP~combout\ = (\RESET~input_o\) # ((\A3|F0:1:U0|Q~q\) # ((\A3|F0:2:U0|Q~q\) # (\A3|F0:0:U0|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datab => \A3|F0:1:U0|Q~q\,
	datac => \A3|F0:2:U0|Q~q\,
	datad => \A3|F0:0:U0|Q~q\,
	combout => \A3|INV1_UP~combout\);

-- Location: LCCOMB_X37_Y3_N24
\A3|INV1_DN\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A3|INV1_DN~combout\ = (\A3|F0:0:U0|Q~q\ & (\A3|F0:2:U0|Q~q\ & !\A3|F0:1:U0|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A3|F0:0:U0|Q~q\,
	datac => \A3|F0:2:U0|Q~q\,
	datad => \A3|F0:1:U0|Q~q\,
	combout => \A3|INV1_DN~combout\);

-- Location: LCCOMB_X37_Y3_N8
\A3|MX11|U3|O0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A3|MX11|U3|O0~0_combout\ = (\UP_DN~input_o\ & (!\A3|INV1_UP~combout\)) # (!\UP_DN~input_o\ & ((\A3|INV1_DN~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UP_DN~input_o\,
	datac => \A3|INV1_UP~combout\,
	datad => \A3|INV1_DN~combout\,
	combout => \A3|MX11|U3|O0~0_combout\);

-- Location: LCCOMB_X37_Y3_N20
\MX4|U3|O0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MX4|U3|O0~1_combout\ = (\A3|F0:1:U0|Q~q\) # ((\UP_DN~input_o\ & ((!\A3|F0:2:U0|Q~q\) # (!\A3|F0:0:U0|Q~q\))) # (!\UP_DN~input_o\ & ((\A3|F0:0:U0|Q~q\) # (\A3|F0:2:U0|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UP_DN~input_o\,
	datab => \A3|F0:1:U0|Q~q\,
	datac => \A3|F0:0:U0|Q~q\,
	datad => \A3|F0:2:U0|Q~q\,
	combout => \MX4|U3|O0~1_combout\);

-- Location: FF_X37_Y3_N21
\D1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C0|TEMP~q\,
	d => \MX4|U3|O0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D1|Q~q\);

-- Location: LCCOMB_X37_Y3_N30
CLK5 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLK5~combout\ = (\A3|MX11|U3|O0~0_combout\ & !\D1|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A3|MX11|U3|O0~0_combout\,
	datad => \D1|Q~q\,
	combout => \CLK5~combout\);

-- Location: LCCOMB_X38_Y2_N14
\MX2|U3|O0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MX2|U3|O0~combout\ = LCELL((\STOP~input_o\ & (\HOUR~input_o\)) # (!\STOP~input_o\ & ((\CLK5~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HOUR~input_o\,
	datac => \STOP~input_o\,
	datad => \CLK5~combout\,
	combout => \MX2|U3|O0~combout\);

-- Location: LCCOMB_X38_Y2_N12
\A4|F4:0:MX4|U3|O0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A4|F4:0:MX4|U3|O0~0_combout\ = (\A4|F0:2:U0|Q~q\ & ((\A4|F0:3:U0|Q~q\ & (!\UP_DN~input_o\)) # (!\A4|F0:3:U0|Q~q\ & ((!\A4|F0:0:U0|Q~q\))))) # (!\A4|F0:2:U0|Q~q\ & (((!\A4|F0:0:U0|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UP_DN~input_o\,
	datab => \A4|F0:2:U0|Q~q\,
	datac => \A4|F0:0:U0|Q~q\,
	datad => \A4|F0:3:U0|Q~q\,
	combout => \A4|F4:0:MX4|U3|O0~0_combout\);

-- Location: FF_X38_Y2_N13
\A4|F0:0:U0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MX2|U3|O0~combout\,
	d => \A4|F4:0:MX4|U3|O0~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A4|F0:0:U0|Q~q\);

-- Location: LCCOMB_X38_Y2_N16
\A4|F4:2:MX7|U3|O0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A4|F4:2:MX7|U3|O0~4_combout\ = (\A4|F0:0:U0|Q~q\ & (\UP_DN~input_o\ & (!\A4|F0:3:U0|Q~q\ & \A4|F0:1:U0|Q~q\))) # (!\A4|F0:0:U0|Q~q\ & (\A4|F0:3:U0|Q~q\ $ (((\UP_DN~input_o\) # (\A4|F0:1:U0|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A4|F0:0:U0|Q~q\,
	datab => \UP_DN~input_o\,
	datac => \A4|F0:3:U0|Q~q\,
	datad => \A4|F0:1:U0|Q~q\,
	combout => \A4|F4:2:MX7|U3|O0~4_combout\);

-- Location: LCCOMB_X38_Y2_N0
\A4|F4:2:MX7|U3|O0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A4|F4:2:MX7|U3|O0~5_combout\ = (\A4|F0:0:U0|Q~q\ & (!\A4|F0:3:U0|Q~q\ & (\A4|F0:2:U0|Q~q\ $ (\A4|F4:2:MX7|U3|O0~4_combout\)))) # (!\A4|F0:0:U0|Q~q\ & (\A4|F4:2:MX7|U3|O0~4_combout\ & (\A4|F0:3:U0|Q~q\ $ (\A4|F0:2:U0|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A4|F0:0:U0|Q~q\,
	datab => \A4|F0:3:U0|Q~q\,
	datac => \A4|F0:2:U0|Q~q\,
	datad => \A4|F4:2:MX7|U3|O0~4_combout\,
	combout => \A4|F4:2:MX7|U3|O0~5_combout\);

-- Location: FF_X38_Y2_N1
\A4|F0:2:U0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MX2|U3|O0~combout\,
	d => \A4|F4:2:MX7|U3|O0~5_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A4|F0:2:U0|Q~q\);

-- Location: LCCOMB_X38_Y2_N10
\A4|F4:3:MX4|U3|O0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A4|F4:3:MX4|U3|O0~0_combout\ = (\UP_DN~input_o\ & (\A4|F0:1:U0|Q~q\ & \A4|F0:0:U0|Q~q\)) # (!\UP_DN~input_o\ & ((\A4|F0:1:U0|Q~q\) # (\A4|F0:0:U0|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UP_DN~input_o\,
	datac => \A4|F0:1:U0|Q~q\,
	datad => \A4|F0:0:U0|Q~q\,
	combout => \A4|F4:3:MX4|U3|O0~0_combout\);

-- Location: LCCOMB_X38_Y2_N26
\A4|F4:3:MX4|U3|O0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A4|F4:3:MX4|U3|O0~1_combout\ = (\UP_DN~input_o\ & ((\A4|F0:2:U0|Q~q\ & (!\A4|F0:3:U0|Q~q\ & \A4|F4:3:MX4|U3|O0~0_combout\)) # (!\A4|F0:2:U0|Q~q\ & (\A4|F0:3:U0|Q~q\ & !\A4|F4:3:MX4|U3|O0~0_combout\)))) # (!\UP_DN~input_o\ & (\A4|F0:3:U0|Q~q\ $ 
-- (((!\A4|F0:2:U0|Q~q\ & !\A4|F4:3:MX4|U3|O0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100001100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UP_DN~input_o\,
	datab => \A4|F0:2:U0|Q~q\,
	datac => \A4|F0:3:U0|Q~q\,
	datad => \A4|F4:3:MX4|U3|O0~0_combout\,
	combout => \A4|F4:3:MX4|U3|O0~1_combout\);

-- Location: FF_X38_Y2_N27
\A4|F0:3:U0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MX2|U3|O0~combout\,
	d => \A4|F4:3:MX4|U3|O0~1_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A4|F0:3:U0|Q~q\);

-- Location: LCCOMB_X38_Y2_N6
\A4|F4:1:MX4|U3|O0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A4|F4:1:MX4|U3|O0~2_combout\ = (\A4|F0:3:U0|Q~q\ & ((\A4|F0:2:U0|Q~q\) # (\A4|F0:1:U0|Q~q\ $ (!\A4|F0:0:U0|Q~q\)))) # (!\A4|F0:3:U0|Q~q\ & ((\A4|F0:1:U0|Q~q\ $ (!\A4|F0:0:U0|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A4|F0:3:U0|Q~q\,
	datab => \A4|F0:2:U0|Q~q\,
	datac => \A4|F0:1:U0|Q~q\,
	datad => \A4|F0:0:U0|Q~q\,
	combout => \A4|F4:1:MX4|U3|O0~2_combout\);

-- Location: LCCOMB_X38_Y2_N22
\A4|F4:1:MX4|U3|O0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A4|F4:1:MX4|U3|O0~3_combout\ = \UP_DN~input_o\ $ (\A4|F4:1:MX4|U3|O0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UP_DN~input_o\,
	datad => \A4|F4:1:MX4|U3|O0~2_combout\,
	combout => \A4|F4:1:MX4|U3|O0~3_combout\);

-- Location: FF_X38_Y2_N23
\A4|F0:1:U0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MX2|U3|O0~combout\,
	d => \A4|F4:1:MX4|U3|O0~3_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A4|F0:1:U0|Q~q\);

-- Location: LCCOMB_X38_Y2_N2
\A4|INV_DN~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A4|INV_DN~0_combout\ = (!\A4|F0:1:U0|Q~q\ & (!\A4|F0:0:U0|Q~q\ & (!\A4|F0:3:U0|Q~q\ & !\A4|F0:2:U0|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A4|F0:1:U0|Q~q\,
	datab => \A4|F0:0:U0|Q~q\,
	datac => \A4|F0:3:U0|Q~q\,
	datad => \A4|F0:2:U0|Q~q\,
	combout => \A4|INV_DN~0_combout\);

-- Location: LCCOMB_X38_Y2_N8
\DN_CHK1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DN_CHK1~0_combout\ = (((!\A4|INV_DN~0_combout\) # (!\MX3|U3|O0~0_combout\)) # (!\A0|INV1_UP~0_combout\)) # (!\A2|INV1_UP~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2|INV1_UP~0_combout\,
	datab => \A0|INV1_UP~0_combout\,
	datac => \MX3|U3|O0~0_combout\,
	datad => \A4|INV_DN~0_combout\,
	combout => \DN_CHK1~0_combout\);

-- Location: LCCOMB_X37_Y3_N12
\MX4|U3|O0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MX4|U3|O0~0_combout\ = (!\A3|F0:1:U0|Q~q\ & (!\A3|F0:2:U0|Q~q\ & !\A3|F0:0:U0|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A3|F0:1:U0|Q~q\,
	datac => \A3|F0:2:U0|Q~q\,
	datad => \A3|F0:0:U0|Q~q\,
	combout => \MX4|U3|O0~0_combout\);

-- Location: IOIBUF_X38_Y0_N8
\SEC~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SEC,
	o => \SEC~input_o\);

-- Location: LCCOMB_X38_Y2_N28
\MX0|U3|O0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MX0|U3|O0~0_combout\ = (\STOP~input_o\ & ((\SEC~input_o\))) # (!\STOP~input_o\ & (\C0|TEMP~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \STOP~input_o\,
	datac => \C0|TEMP~q\,
	datad => \SEC~input_o\,
	combout => \MX0|U3|O0~0_combout\);

-- Location: LCCOMB_X38_Y2_N4
CLK_DN : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLK_DN~combout\ = LCELL((\MX0|U3|O0~0_combout\ & ((\DN_CHK1~0_combout\) # (!\MX4|U3|O0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DN_CHK1~0_combout\,
	datac => \MX4|U3|O0~0_combout\,
	datad => \MX0|U3|O0~0_combout\,
	combout => \CLK_DN~combout\);

-- Location: LCCOMB_X39_Y2_N20
\A0|QE_XOR[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A0|QE_XOR\(1) = \UP_DN~input_o\ $ (\A0|F0:1:U0|Q~q\ $ (\A0|F0:0:U0|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UP_DN~input_o\,
	datab => \A0|F0:1:U0|Q~q\,
	datac => \A0|F0:0:U0|Q~q\,
	combout => \A0|QE_XOR\(1));

-- Location: LCCOMB_X39_Y2_N30
\A0|F4:1:MX7|U3|O0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A0|F4:1:MX7|U3|O0~0_combout\ = (!\A0|QE_XOR\(1) & ((\UP_DN~input_o\ & (\A0|INV_UP~combout\)) # (!\UP_DN~input_o\ & ((\A0|INV_DN~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UP_DN~input_o\,
	datab => \A0|INV_UP~combout\,
	datac => \A0|INV_DN~0_combout\,
	datad => \A0|QE_XOR\(1),
	combout => \A0|F4:1:MX7|U3|O0~0_combout\);

-- Location: FF_X39_Y2_N31
\A0|F0:1:U0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_DN~combout\,
	d => \A0|F4:1:MX7|U3|O0~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A0|F0:1:U0|Q~q\);

-- Location: LCCOMB_X39_Y2_N12
\B0|O6|O0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B0|O6|O0~combout\ = (\A0|F0:1:U0|Q~q\ & (((\A0|F0:0:U0|Q~q\ & \A0|F0:2:U0|Q~q\)))) # (!\A0|F0:1:U0|Q~q\ & (!\A0|F0:3:U0|Q~q\ & ((!\A0|F0:2:U0|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A0|F0:1:U0|Q~q\,
	datab => \A0|F0:3:U0|Q~q\,
	datac => \A0|F0:0:U0|Q~q\,
	datad => \A0|F0:2:U0|Q~q\,
	combout => \B0|O6|O0~combout\);

-- Location: LCCOMB_X39_Y2_N26
\B0|O5|O0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B0|O5|O0~0_combout\ = (\A0|F0:1:U0|Q~q\ & ((\A0|F0:0:U0|Q~q\) # ((!\A0|F0:3:U0|Q~q\ & !\A0|F0:2:U0|Q~q\)))) # (!\A0|F0:1:U0|Q~q\ & (!\A0|F0:3:U0|Q~q\ & (\A0|F0:0:U0|Q~q\ & !\A0|F0:2:U0|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A0|F0:1:U0|Q~q\,
	datab => \A0|F0:3:U0|Q~q\,
	datac => \A0|F0:0:U0|Q~q\,
	datad => \A0|F0:2:U0|Q~q\,
	combout => \B0|O5|O0~0_combout\);

-- Location: LCCOMB_X40_Y2_N20
\B0|O3|O0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B0|O3|O0~combout\ = (\A0|F0:0:U0|Q~q\) # ((!\A0|F0:1:U0|Q~q\ & \A0|F0:2:U0|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A0|F0:1:U0|Q~q\,
	datac => \A0|F0:2:U0|Q~q\,
	datad => \A0|F0:0:U0|Q~q\,
	combout => \B0|O3|O0~combout\);

-- Location: LCCOMB_X39_Y2_N8
\B0|O2|O0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B0|O2|O0~combout\ = (\A0|F0:2:U0|Q~q\ & (\A0|F0:1:U0|Q~q\ $ (((!\A0|F0:0:U0|Q~q\))))) # (!\A0|F0:2:U0|Q~q\ & (!\A0|F0:1:U0|Q~q\ & (!\A0|F0:3:U0|Q~q\ & \A0|F0:0:U0|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A0|F0:1:U0|Q~q\,
	datab => \A0|F0:3:U0|Q~q\,
	datac => \A0|F0:0:U0|Q~q\,
	datad => \A0|F0:2:U0|Q~q\,
	combout => \B0|O2|O0~combout\);

-- Location: LCCOMB_X40_Y2_N2
\B0|A9|O0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B0|A9|O0~0_combout\ = (\A0|F0:1:U0|Q~q\ & (!\A0|F0:2:U0|Q~q\ & !\A0|F0:0:U0|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A0|F0:1:U0|Q~q\,
	datac => \A0|F0:2:U0|Q~q\,
	datad => \A0|F0:0:U0|Q~q\,
	combout => \B0|A9|O0~0_combout\);

-- Location: LCCOMB_X40_Y2_N4
\B0|A7|O0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B0|A7|O0~combout\ = (\A0|F0:2:U0|Q~q\ & (\A0|F0:1:U0|Q~q\ $ (\A0|F0:0:U0|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A0|F0:1:U0|Q~q\,
	datac => \A0|F0:2:U0|Q~q\,
	datad => \A0|F0:0:U0|Q~q\,
	combout => \B0|A7|O0~combout\);

-- Location: LCCOMB_X39_Y2_N16
\B0|O1|O0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B0|O1|O0~0_combout\ = (!\A0|F0:1:U0|Q~q\ & ((\A0|F0:0:U0|Q~q\ & (!\A0|F0:3:U0|Q~q\ & !\A0|F0:2:U0|Q~q\)) # (!\A0|F0:0:U0|Q~q\ & ((\A0|F0:2:U0|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A0|F0:1:U0|Q~q\,
	datab => \A0|F0:3:U0|Q~q\,
	datac => \A0|F0:0:U0|Q~q\,
	datad => \A0|F0:2:U0|Q~q\,
	combout => \B0|O1|O0~0_combout\);

-- Location: LCCOMB_X37_Y2_N26
\B1|O6|O0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B1|O6|O0~combout\ = (\A1|F0:2:U0|Q~q\ & (\A1|F0:0:U0|Q~q\ & \A1|F0:1:U0|Q~q\)) # (!\A1|F0:2:U0|Q~q\ & ((!\A1|F0:1:U0|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1|F0:0:U0|Q~q\,
	datac => \A1|F0:2:U0|Q~q\,
	datad => \A1|F0:1:U0|Q~q\,
	combout => \B1|O6|O0~combout\);

-- Location: LCCOMB_X36_Y2_N24
\B1|O5|O0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B1|O5|O0~combout\ = (\A1|F0:0:U0|Q~q\ & ((\A1|F0:1:U0|Q~q\) # (!\A1|F0:2:U0|Q~q\))) # (!\A1|F0:0:U0|Q~q\ & (\A1|F0:1:U0|Q~q\ & !\A1|F0:2:U0|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A1|F0:0:U0|Q~q\,
	datac => \A1|F0:1:U0|Q~q\,
	datad => \A1|F0:2:U0|Q~q\,
	combout => \B1|O5|O0~combout\);

-- Location: LCCOMB_X37_Y2_N2
\B1|O3|O0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B1|O3|O0~combout\ = (\A1|F0:0:U0|Q~q\) # ((\A1|F0:2:U0|Q~q\ & !\A1|F0:1:U0|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1|F0:0:U0|Q~q\,
	datac => \A1|F0:2:U0|Q~q\,
	datad => \A1|F0:1:U0|Q~q\,
	combout => \B1|O3|O0~combout\);

-- Location: LCCOMB_X36_Y2_N14
\B1|O2|O0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B1|O2|O0~combout\ = (\A1|F0:0:U0|Q~q\ & (\A1|F0:1:U0|Q~q\ $ (!\A1|F0:2:U0|Q~q\))) # (!\A1|F0:0:U0|Q~q\ & (!\A1|F0:1:U0|Q~q\ & \A1|F0:2:U0|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A1|F0:0:U0|Q~q\,
	datac => \A1|F0:1:U0|Q~q\,
	datad => \A1|F0:2:U0|Q~q\,
	combout => \B1|O2|O0~combout\);

-- Location: LCCOMB_X37_Y2_N10
\B1|A9|O0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B1|A9|O0~combout\ = (!\A1|F0:0:U0|Q~q\ & (!\A1|F0:2:U0|Q~q\ & \A1|F0:1:U0|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1|F0:0:U0|Q~q\,
	datac => \A1|F0:2:U0|Q~q\,
	datad => \A1|F0:1:U0|Q~q\,
	combout => \B1|A9|O0~combout\);

-- Location: LCCOMB_X37_Y2_N8
\B1|A7|O0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B1|A7|O0~combout\ = (\A1|F0:2:U0|Q~q\ & (\A1|F0:0:U0|Q~q\ $ (\A1|F0:1:U0|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1|F0:0:U0|Q~q\,
	datac => \A1|F0:2:U0|Q~q\,
	datad => \A1|F0:1:U0|Q~q\,
	combout => \B1|A7|O0~combout\);

-- Location: LCCOMB_X37_Y2_N12
\B1|O1|O0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B1|O1|O0~0_combout\ = (!\A1|F0:1:U0|Q~q\ & (\A1|F0:0:U0|Q~q\ $ (\A1|F0:2:U0|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1|F0:0:U0|Q~q\,
	datac => \A1|F0:2:U0|Q~q\,
	datad => \A1|F0:1:U0|Q~q\,
	combout => \B1|O1|O0~0_combout\);

-- Location: LCCOMB_X35_Y3_N0
\B2|O6|O0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B2|O6|O0~combout\ = (\A2|F0:1:U0|Q~q\ & (((\A2|F0:2:U0|Q~q\ & \A2|F0:0:U0|Q~q\)))) # (!\A2|F0:1:U0|Q~q\ & (!\A2|F0:3:U0|Q~q\ & (!\A2|F0:2:U0|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2|F0:3:U0|Q~q\,
	datab => \A2|F0:1:U0|Q~q\,
	datac => \A2|F0:2:U0|Q~q\,
	datad => \A2|F0:0:U0|Q~q\,
	combout => \B2|O6|O0~combout\);

-- Location: LCCOMB_X35_Y3_N14
\B2|O5|O0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B2|O5|O0~0_combout\ = (\A2|F0:1:U0|Q~q\ & ((\A2|F0:0:U0|Q~q\) # ((!\A2|F0:3:U0|Q~q\ & !\A2|F0:2:U0|Q~q\)))) # (!\A2|F0:1:U0|Q~q\ & (!\A2|F0:3:U0|Q~q\ & (!\A2|F0:2:U0|Q~q\ & \A2|F0:0:U0|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2|F0:3:U0|Q~q\,
	datab => \A2|F0:1:U0|Q~q\,
	datac => \A2|F0:2:U0|Q~q\,
	datad => \A2|F0:0:U0|Q~q\,
	combout => \B2|O5|O0~0_combout\);

-- Location: LCCOMB_X35_Y3_N12
\B2|O3|O0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B2|O3|O0~combout\ = (\A2|F0:0:U0|Q~q\) # ((!\A2|F0:1:U0|Q~q\ & \A2|F0:2:U0|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A2|F0:1:U0|Q~q\,
	datac => \A2|F0:2:U0|Q~q\,
	datad => \A2|F0:0:U0|Q~q\,
	combout => \B2|O3|O0~combout\);

-- Location: LCCOMB_X35_Y3_N2
\B2|O2|O0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B2|O2|O0~combout\ = (\A2|F0:2:U0|Q~q\ & ((\A2|F0:1:U0|Q~q\ $ (!\A2|F0:0:U0|Q~q\)))) # (!\A2|F0:2:U0|Q~q\ & (!\A2|F0:3:U0|Q~q\ & (!\A2|F0:1:U0|Q~q\ & \A2|F0:0:U0|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2|F0:3:U0|Q~q\,
	datab => \A2|F0:1:U0|Q~q\,
	datac => \A2|F0:2:U0|Q~q\,
	datad => \A2|F0:0:U0|Q~q\,
	combout => \B2|O2|O0~combout\);

-- Location: LCCOMB_X35_Y3_N24
\B2|A9|O0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B2|A9|O0~0_combout\ = (\A2|F0:1:U0|Q~q\ & (!\A2|F0:2:U0|Q~q\ & !\A2|F0:0:U0|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A2|F0:1:U0|Q~q\,
	datac => \A2|F0:2:U0|Q~q\,
	datad => \A2|F0:0:U0|Q~q\,
	combout => \B2|A9|O0~0_combout\);

-- Location: LCCOMB_X35_Y3_N22
\B2|A7|O0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B2|A7|O0~combout\ = (\A2|F0:2:U0|Q~q\ & (\A2|F0:0:U0|Q~q\ $ (\A2|F0:1:U0|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A2|F0:0:U0|Q~q\,
	datac => \A2|F0:2:U0|Q~q\,
	datad => \A2|F0:1:U0|Q~q\,
	combout => \B2|A7|O0~combout\);

-- Location: LCCOMB_X35_Y3_N8
\B2|O1|O0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B2|O1|O0~0_combout\ = (!\A2|F0:1:U0|Q~q\ & ((\A2|F0:2:U0|Q~q\ & ((!\A2|F0:0:U0|Q~q\))) # (!\A2|F0:2:U0|Q~q\ & (!\A2|F0:3:U0|Q~q\ & \A2|F0:0:U0|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2|F0:3:U0|Q~q\,
	datab => \A2|F0:1:U0|Q~q\,
	datac => \A2|F0:2:U0|Q~q\,
	datad => \A2|F0:0:U0|Q~q\,
	combout => \B2|O1|O0~0_combout\);

-- Location: LCCOMB_X37_Y3_N10
\B3|O6|O0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B3|O6|O0~combout\ = (\A3|F0:1:U0|Q~q\ & (\A3|F0:0:U0|Q~q\ & \A3|F0:2:U0|Q~q\)) # (!\A3|F0:1:U0|Q~q\ & ((!\A3|F0:2:U0|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A3|F0:1:U0|Q~q\,
	datac => \A3|F0:0:U0|Q~q\,
	datad => \A3|F0:2:U0|Q~q\,
	combout => \B3|O6|O0~combout\);

-- Location: LCCOMB_X36_Y3_N8
\B3|O5|O0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B3|O5|O0~combout\ = (\A3|F0:1:U0|Q~q\ & ((\A3|F0:0:U0|Q~q\) # (!\A3|F0:2:U0|Q~q\))) # (!\A3|F0:1:U0|Q~q\ & (!\A3|F0:2:U0|Q~q\ & \A3|F0:0:U0|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A3|F0:1:U0|Q~q\,
	datac => \A3|F0:2:U0|Q~q\,
	datad => \A3|F0:0:U0|Q~q\,
	combout => \B3|O5|O0~combout\);

-- Location: LCCOMB_X36_Y3_N26
\B3|O3|O0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B3|O3|O0~combout\ = (\A3|F0:0:U0|Q~q\) # ((!\A3|F0:1:U0|Q~q\ & \A3|F0:2:U0|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A3|F0:1:U0|Q~q\,
	datac => \A3|F0:2:U0|Q~q\,
	datad => \A3|F0:0:U0|Q~q\,
	combout => \B3|O3|O0~combout\);

-- Location: LCCOMB_X36_Y3_N4
\B3|O2|O0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B3|O2|O0~combout\ = (\A3|F0:1:U0|Q~q\ & (\A3|F0:2:U0|Q~q\ & \A3|F0:0:U0|Q~q\)) # (!\A3|F0:1:U0|Q~q\ & (\A3|F0:2:U0|Q~q\ $ (\A3|F0:0:U0|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A3|F0:1:U0|Q~q\,
	datac => \A3|F0:2:U0|Q~q\,
	datad => \A3|F0:0:U0|Q~q\,
	combout => \B3|O2|O0~combout\);

-- Location: LCCOMB_X37_Y3_N22
\B3|A9|O0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B3|A9|O0~combout\ = (\A3|F0:1:U0|Q~q\ & (!\A3|F0:0:U0|Q~q\ & !\A3|F0:2:U0|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A3|F0:1:U0|Q~q\,
	datac => \A3|F0:0:U0|Q~q\,
	datad => \A3|F0:2:U0|Q~q\,
	combout => \B3|A9|O0~combout\);

-- Location: LCCOMB_X37_Y3_N16
\B3|A7|O0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B3|A7|O0~combout\ = (\A3|F0:2:U0|Q~q\ & (\A3|F0:1:U0|Q~q\ $ (\A3|F0:0:U0|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A3|F0:1:U0|Q~q\,
	datac => \A3|F0:0:U0|Q~q\,
	datad => \A3|F0:2:U0|Q~q\,
	combout => \B3|A7|O0~combout\);

-- Location: LCCOMB_X36_Y3_N10
\B3|O1|O0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B3|O1|O0~0_combout\ = (!\A3|F0:1:U0|Q~q\ & (\A3|F0:2:U0|Q~q\ $ (\A3|F0:0:U0|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A3|F0:1:U0|Q~q\,
	datac => \A3|F0:2:U0|Q~q\,
	datad => \A3|F0:0:U0|Q~q\,
	combout => \B3|O1|O0~0_combout\);

-- Location: LCCOMB_X30_Y2_N16
\B5|O6|O0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B5|O6|O0~combout\ = (\A4|F0:2:U0|Q~q\ & (\A4|F0:1:U0|Q~q\ & (!\A4|F0:3:U0|Q~q\ & \A4|F0:0:U0|Q~q\))) # (!\A4|F0:2:U0|Q~q\ & (\A4|F0:1:U0|Q~q\ $ ((!\A4|F0:3:U0|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A4|F0:1:U0|Q~q\,
	datab => \A4|F0:3:U0|Q~q\,
	datac => \A4|F0:2:U0|Q~q\,
	datad => \A4|F0:0:U0|Q~q\,
	combout => \B5|O6|O0~combout\);

-- Location: LCCOMB_X30_Y2_N22
\B5|O5|O0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B5|O5|O0~0_combout\ = (\A4|F0:1:U0|Q~q\ & ((\A4|F0:3:U0|Q~q\ & (!\A4|F0:2:U0|Q~q\ & \A4|F0:0:U0|Q~q\)) # (!\A4|F0:3:U0|Q~q\ & ((\A4|F0:0:U0|Q~q\) # (!\A4|F0:2:U0|Q~q\))))) # (!\A4|F0:1:U0|Q~q\ & ((\A4|F0:3:U0|Q~q\ & (\A4|F0:2:U0|Q~q\)) # 
-- (!\A4|F0:3:U0|Q~q\ & (!\A4|F0:2:U0|Q~q\ & \A4|F0:0:U0|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A4|F0:1:U0|Q~q\,
	datab => \A4|F0:3:U0|Q~q\,
	datac => \A4|F0:2:U0|Q~q\,
	datad => \A4|F0:0:U0|Q~q\,
	combout => \B5|O5|O0~0_combout\);

-- Location: LCCOMB_X30_Y2_N24
\B5|O3|O0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B5|O3|O0~combout\ = (\A4|F0:0:U0|Q~q\) # ((\A4|F0:2:U0|Q~q\ & (\A4|F0:1:U0|Q~q\ $ (!\A4|F0:3:U0|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A4|F0:1:U0|Q~q\,
	datab => \A4|F0:3:U0|Q~q\,
	datac => \A4|F0:2:U0|Q~q\,
	datad => \A4|F0:0:U0|Q~q\,
	combout => \B5|O3|O0~combout\);

-- Location: LCCOMB_X30_Y2_N6
\B5|O2|O0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B5|O2|O0~combout\ = (\A4|F0:1:U0|Q~q\ & ((\A4|F0:3:U0|Q~q\ & (\A4|F0:2:U0|Q~q\ $ (\A4|F0:0:U0|Q~q\))) # (!\A4|F0:3:U0|Q~q\ & (\A4|F0:2:U0|Q~q\ & \A4|F0:0:U0|Q~q\)))) # (!\A4|F0:1:U0|Q~q\ & (!\A4|F0:3:U0|Q~q\ & (\A4|F0:2:U0|Q~q\ $ (\A4|F0:0:U0|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A4|F0:1:U0|Q~q\,
	datab => \A4|F0:3:U0|Q~q\,
	datac => \A4|F0:2:U0|Q~q\,
	datad => \A4|F0:0:U0|Q~q\,
	combout => \B5|O2|O0~combout\);

-- Location: LCCOMB_X30_Y2_N4
\B5|A9|O0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B5|A9|O0~0_combout\ = (!\A4|F0:0:U0|Q~q\ & ((\A4|F0:1:U0|Q~q\ & (!\A4|F0:3:U0|Q~q\ & !\A4|F0:2:U0|Q~q\)) # (!\A4|F0:1:U0|Q~q\ & (\A4|F0:3:U0|Q~q\ & \A4|F0:2:U0|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A4|F0:1:U0|Q~q\,
	datab => \A4|F0:3:U0|Q~q\,
	datac => \A4|F0:2:U0|Q~q\,
	datad => \A4|F0:0:U0|Q~q\,
	combout => \B5|A9|O0~0_combout\);

-- Location: LCCOMB_X30_Y2_N26
\B5|A7|O0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B5|A7|O0~combout\ = (\A4|F0:2:U0|Q~q\ & ((\A4|F0:1:U0|Q~q\ & (\A4|F0:3:U0|Q~q\ $ (!\A4|F0:0:U0|Q~q\))) # (!\A4|F0:1:U0|Q~q\ & (!\A4|F0:3:U0|Q~q\ & \A4|F0:0:U0|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A4|F0:1:U0|Q~q\,
	datab => \A4|F0:3:U0|Q~q\,
	datac => \A4|F0:2:U0|Q~q\,
	datad => \A4|F0:0:U0|Q~q\,
	combout => \B5|A7|O0~combout\);

-- Location: LCCOMB_X30_Y2_N12
\B5|O1|O0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B5|O1|O0~0_combout\ = (\A4|F0:1:U0|Q~q\ & (\A4|F0:3:U0|Q~q\ & (\A4|F0:2:U0|Q~q\ $ (\A4|F0:0:U0|Q~q\)))) # (!\A4|F0:1:U0|Q~q\ & (!\A4|F0:3:U0|Q~q\ & (\A4|F0:2:U0|Q~q\ $ (\A4|F0:0:U0|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A4|F0:1:U0|Q~q\,
	datab => \A4|F0:3:U0|Q~q\,
	datac => \A4|F0:2:U0|Q~q\,
	datad => \A4|F0:0:U0|Q~q\,
	combout => \B5|O1|O0~0_combout\);

-- Location: LCCOMB_X30_Y2_N10
\H_BCD[4]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \H_BCD[4]~0_combout\ = (\A4|F0:3:U0|Q~q\ & ((\A4|F0:2:U0|Q~q\) # (\A4|F0:1:U0|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A4|F0:2:U0|Q~q\,
	datac => \A4|F0:1:U0|Q~q\,
	datad => \A4|F0:3:U0|Q~q\,
	combout => \H_BCD[4]~0_combout\);

-- Location: IOIBUF_X46_Y0_N1
\SEC0[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SEC0(0),
	o => \SEC0[0]~input_o\);

-- Location: IOIBUF_X49_Y0_N1
\SEC0[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SEC0(1),
	o => \SEC0[1]~input_o\);

-- Location: IOIBUF_X40_Y0_N22
\SEC0[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SEC0(2),
	o => \SEC0[2]~input_o\);

-- Location: IOIBUF_X46_Y0_N8
\SEC0[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SEC0(3),
	o => \SEC0[3]~input_o\);

-- Location: IOIBUF_X49_Y0_N22
\SEC0[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SEC0(4),
	o => \SEC0[4]~input_o\);

-- Location: IOIBUF_X49_Y0_N29
\SEC0[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SEC0(5),
	o => \SEC0[5]~input_o\);

-- Location: IOIBUF_X49_Y0_N8
\SEC0[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SEC0(6),
	o => \SEC0[6]~input_o\);

-- Location: IOIBUF_X40_Y0_N15
\SEC1[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SEC1(0),
	o => \SEC1[0]~input_o\);

-- Location: IOIBUF_X34_Y0_N8
\SEC1[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SEC1(1),
	o => \SEC1[1]~input_o\);

-- Location: IOIBUF_X38_Y0_N22
\SEC1[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SEC1(2),
	o => \SEC1[2]~input_o\);

-- Location: IOIBUF_X34_Y0_N1
\SEC1[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SEC1(3),
	o => \SEC1[3]~input_o\);

-- Location: IOIBUF_X36_Y0_N1
\SEC1[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SEC1(4),
	o => \SEC1[4]~input_o\);

-- Location: IOIBUF_X36_Y0_N8
\SEC1[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SEC1(5),
	o => \SEC1[5]~input_o\);

-- Location: IOIBUF_X38_Y0_N29
\SEC1[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SEC1(6),
	o => \SEC1[6]~input_o\);

-- Location: IOIBUF_X34_Y39_N8
\MIN0[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => MIN0(0),
	o => \MIN0[0]~input_o\);

-- Location: IOIBUF_X26_Y0_N1
\MIN0[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => MIN0(1),
	o => \MIN0[1]~input_o\);

-- Location: IOIBUF_X31_Y0_N29
\MIN0[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => MIN0(2),
	o => \MIN0[2]~input_o\);

-- Location: IOIBUF_X26_Y0_N8
\MIN0[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => MIN0(3),
	o => \MIN0[3]~input_o\);

-- Location: IOIBUF_X34_Y0_N29
\MIN0[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => MIN0(4),
	o => \MIN0[4]~input_o\);

-- Location: IOIBUF_X31_Y0_N22
\MIN0[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => MIN0(5),
	o => \MIN0[5]~input_o\);

-- Location: IOIBUF_X34_Y0_N15
\MIN0[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => MIN0(6),
	o => \MIN0[6]~input_o\);

-- Location: IOIBUF_X36_Y39_N15
\MIN1[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => MIN1(0),
	o => \MIN1[0]~input_o\);

-- Location: IOIBUF_X31_Y0_N1
\MIN1[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => MIN1(1),
	o => \MIN1[1]~input_o\);

-- Location: IOIBUF_X31_Y0_N8
\MIN1[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => MIN1(2),
	o => \MIN1[2]~input_o\);

-- Location: IOIBUF_X29_Y0_N29
\MIN1[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => MIN1(3),
	o => \MIN1[3]~input_o\);

-- Location: IOIBUF_X40_Y0_N29
\MIN1[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => MIN1(4),
	o => \MIN1[4]~input_o\);

-- Location: IOIBUF_X40_Y0_N1
\MIN1[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => MIN1(5),
	o => \MIN1[5]~input_o\);

-- Location: IOIBUF_X31_Y0_N15
\MIN1[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => MIN1(6),
	o => \MIN1[6]~input_o\);

-- Location: IOIBUF_X29_Y0_N22
\HOUR0[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => HOUR0(0),
	o => \HOUR0[0]~input_o\);

-- Location: IOIBUF_X26_Y0_N22
\HOUR0[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => HOUR0(1),
	o => \HOUR0[1]~input_o\);

-- Location: IOIBUF_X26_Y0_N29
\HOUR0[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => HOUR0(2),
	o => \HOUR0[2]~input_o\);

-- Location: IOIBUF_X29_Y0_N8
\HOUR0[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => HOUR0(3),
	o => \HOUR0[3]~input_o\);

-- Location: IOIBUF_X29_Y0_N1
\HOUR0[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => HOUR0(4),
	o => \HOUR0[4]~input_o\);

-- Location: IOIBUF_X26_Y0_N15
\HOUR0[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => HOUR0(5),
	o => \HOUR0[5]~input_o\);

-- Location: IOIBUF_X29_Y0_N15
\HOUR0[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => HOUR0(6),
	o => \HOUR0[6]~input_o\);

-- Location: IOIBUF_X0_Y36_N22
\HOUR1[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => HOUR1(0),
	o => \HOUR1[0]~input_o\);

-- Location: IOIBUF_X24_Y0_N29
\HOUR1[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => HOUR1(1),
	o => \HOUR1[1]~input_o\);

-- Location: IOIBUF_X24_Y0_N8
\HOUR1[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => HOUR1(2),
	o => \HOUR1[2]~input_o\);

-- Location: IOIBUF_X24_Y0_N1
\HOUR1[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => HOUR1(3),
	o => \HOUR1[3]~input_o\);

-- Location: IOIBUF_X78_Y44_N1
\HOUR1[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => HOUR1(4),
	o => \HOUR1[4]~input_o\);

-- Location: IOIBUF_X54_Y54_N22
\HOUR1[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => HOUR1(5),
	o => \HOUR1[5]~input_o\);

-- Location: IOIBUF_X24_Y0_N22
\HOUR1[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => HOUR1(6),
	o => \HOUR1[6]~input_o\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

SEC0(0) <= \SEC0[0]~output_o\;

SEC0(1) <= \SEC0[1]~output_o\;

SEC0(2) <= \SEC0[2]~output_o\;

SEC0(3) <= \SEC0[3]~output_o\;

SEC0(4) <= \SEC0[4]~output_o\;

SEC0(5) <= \SEC0[5]~output_o\;

SEC0(6) <= \SEC0[6]~output_o\;

SEC1(0) <= \SEC1[0]~output_o\;

SEC1(1) <= \SEC1[1]~output_o\;

SEC1(2) <= \SEC1[2]~output_o\;

SEC1(3) <= \SEC1[3]~output_o\;

SEC1(4) <= \SEC1[4]~output_o\;

SEC1(5) <= \SEC1[5]~output_o\;

SEC1(6) <= \SEC1[6]~output_o\;

MIN0(0) <= \MIN0[0]~output_o\;

MIN0(1) <= \MIN0[1]~output_o\;

MIN0(2) <= \MIN0[2]~output_o\;

MIN0(3) <= \MIN0[3]~output_o\;

MIN0(4) <= \MIN0[4]~output_o\;

MIN0(5) <= \MIN0[5]~output_o\;

MIN0(6) <= \MIN0[6]~output_o\;

MIN1(0) <= \MIN1[0]~output_o\;

MIN1(1) <= \MIN1[1]~output_o\;

MIN1(2) <= \MIN1[2]~output_o\;

MIN1(3) <= \MIN1[3]~output_o\;

MIN1(4) <= \MIN1[4]~output_o\;

MIN1(5) <= \MIN1[5]~output_o\;

MIN1(6) <= \MIN1[6]~output_o\;

HOUR0(0) <= \HOUR0[0]~output_o\;

HOUR0(1) <= \HOUR0[1]~output_o\;

HOUR0(2) <= \HOUR0[2]~output_o\;

HOUR0(3) <= \HOUR0[3]~output_o\;

HOUR0(4) <= \HOUR0[4]~output_o\;

HOUR0(5) <= \HOUR0[5]~output_o\;

HOUR0(6) <= \HOUR0[6]~output_o\;

HOUR1(0) <= \HOUR1[0]~output_o\;

HOUR1(1) <= \HOUR1[1]~output_o\;

HOUR1(2) <= \HOUR1[2]~output_o\;

HOUR1(3) <= \HOUR1[3]~output_o\;

HOUR1(4) <= \HOUR1[4]~output_o\;

HOUR1(5) <= \HOUR1[5]~output_o\;

HOUR1(6) <= \HOUR1[6]~output_o\;
END structure;


