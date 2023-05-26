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

-- DATE "05/26/2023 16:36:03"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	RegisterN IS
    PORT (
	Reset : IN std_logic;
	Selector : IN std_logic;
	Start_Stop : IN std_logic;
	Time_adjust : IN std_logic_vector(7 DOWNTO 0);
	clock : IN std_logic;
	Time_extra : BUFFER std_logic_vector(31 DOWNTO 0);
	Time_cozer : BUFFER std_logic_vector(31 DOWNTO 0);
	Time_amassar : BUFFER std_logic_vector(31 DOWNTO 0);
	Time_levedar : BUFFER std_logic_vector(31 DOWNTO 0);
	Start_Stop_o : BUFFER std_logic;
	Mode1 : BUFFER std_logic;
	Mode2 : BUFFER std_logic
	);
END RegisterN;

-- Design Ports Information
-- Start_Stop	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time_adjust[0]	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time_adjust[1]	=>  Location: PIN_P25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time_adjust[2]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time_adjust[3]	=>  Location: PIN_AE5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time_adjust[4]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time_adjust[5]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time_adjust[6]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time_adjust[7]	=>  Location: PIN_AF24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time_extra[0]	=>  Location: PIN_AF2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time_extra[1]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time_extra[2]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time_extra[3]	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time_extra[4]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time_extra[5]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time_extra[6]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time_extra[7]	=>  Location: PIN_AG22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time_extra[8]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time_extra[9]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time_extra[10]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time_extra[11]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time_extra[12]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time_extra[13]	=>  Location: PIN_D24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time_extra[14]	=>  Location: PIN_V26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time_extra[15]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time_extra[16]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time_extra[17]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time_extra[18]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time_extra[19]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time_extra[20]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time_extra[21]	=>  Location: PIN_AF3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time_extra[22]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time_extra[23]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time_extra[24]	=>  Location: PIN_U26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time_extra[25]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time_extra[26]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time_extra[27]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time_extra[28]	=>  Location: PIN_AH4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time_extra[29]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time_extra[30]	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time_extra[31]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time_cozer[0]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time_cozer[1]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time_cozer[2]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time_cozer[3]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time_cozer[4]	=>  Location: PIN_AH10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time_cozer[5]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time_cozer[6]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time_cozer[7]	=>  Location: PIN_AC2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time_cozer[8]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time_cozer[9]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time_cozer[10]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time_cozer[11]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time_cozer[12]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time_cozer[13]	=>  Location: PIN_M26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time_cozer[14]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time_cozer[15]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time_cozer[16]	=>  Location: PIN_V27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time_cozer[17]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time_cozer[18]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time_cozer[19]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time_cozer[20]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time_cozer[21]	=>  Location: PIN_C26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time_cozer[22]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time_cozer[23]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time_cozer[24]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time_cozer[25]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time_cozer[26]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time_cozer[27]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time_cozer[28]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time_cozer[29]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time_cozer[30]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time_cozer[31]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time_amassar[0]	=>  Location: PIN_D4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time_amassar[1]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time_amassar[2]	=>  Location: PIN_AH6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time_amassar[3]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time_amassar[4]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time_amassar[5]	=>  Location: PIN_N25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time_amassar[6]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time_amassar[7]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time_amassar[8]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time_amassar[9]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time_amassar[10]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time_amassar[11]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time_amassar[12]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time_amassar[13]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time_amassar[14]	=>  Location: PIN_R26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time_amassar[15]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time_amassar[16]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time_amassar[17]	=>  Location: PIN_AG4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time_amassar[18]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time_amassar[19]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time_amassar[20]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time_amassar[21]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time_amassar[22]	=>  Location: PIN_U27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time_amassar[23]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time_amassar[24]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time_amassar[25]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time_amassar[26]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time_amassar[27]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time_amassar[28]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time_amassar[29]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time_amassar[30]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time_amassar[31]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time_levedar[0]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time_levedar[1]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time_levedar[2]	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time_levedar[3]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time_levedar[4]	=>  Location: PIN_AG8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time_levedar[5]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time_levedar[6]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time_levedar[7]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time_levedar[8]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time_levedar[9]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time_levedar[10]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time_levedar[11]	=>  Location: PIN_D25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time_levedar[12]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time_levedar[13]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time_levedar[14]	=>  Location: PIN_AF27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time_levedar[15]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time_levedar[16]	=>  Location: PIN_AE25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time_levedar[17]	=>  Location: PIN_AD7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time_levedar[18]	=>  Location: PIN_K3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time_levedar[19]	=>  Location: PIN_AE20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time_levedar[20]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time_levedar[21]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time_levedar[22]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time_levedar[23]	=>  Location: PIN_AH11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time_levedar[24]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time_levedar[25]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time_levedar[26]	=>  Location: PIN_AH26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time_levedar[27]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time_levedar[28]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time_levedar[29]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time_levedar[30]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time_levedar[31]	=>  Location: PIN_E5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Start_Stop_o	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mode1	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mode2	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Selector	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reset	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF RegisterN IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Reset : std_logic;
SIGNAL ww_Selector : std_logic;
SIGNAL ww_Start_Stop : std_logic;
SIGNAL ww_Time_adjust : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_clock : std_logic;
SIGNAL ww_Time_extra : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_Time_cozer : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_Time_amassar : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_Time_levedar : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_Start_Stop_o : std_logic;
SIGNAL ww_Mode1 : std_logic;
SIGNAL ww_Mode2 : std_logic;
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Start_Stop~input_o\ : std_logic;
SIGNAL \Time_adjust[0]~input_o\ : std_logic;
SIGNAL \Time_adjust[1]~input_o\ : std_logic;
SIGNAL \Time_adjust[2]~input_o\ : std_logic;
SIGNAL \Time_adjust[3]~input_o\ : std_logic;
SIGNAL \Time_adjust[4]~input_o\ : std_logic;
SIGNAL \Time_adjust[5]~input_o\ : std_logic;
SIGNAL \Time_adjust[6]~input_o\ : std_logic;
SIGNAL \Time_adjust[7]~input_o\ : std_logic;
SIGNAL \Time_extra[0]~output_o\ : std_logic;
SIGNAL \Time_extra[1]~output_o\ : std_logic;
SIGNAL \Time_extra[2]~output_o\ : std_logic;
SIGNAL \Time_extra[3]~output_o\ : std_logic;
SIGNAL \Time_extra[4]~output_o\ : std_logic;
SIGNAL \Time_extra[5]~output_o\ : std_logic;
SIGNAL \Time_extra[6]~output_o\ : std_logic;
SIGNAL \Time_extra[7]~output_o\ : std_logic;
SIGNAL \Time_extra[8]~output_o\ : std_logic;
SIGNAL \Time_extra[9]~output_o\ : std_logic;
SIGNAL \Time_extra[10]~output_o\ : std_logic;
SIGNAL \Time_extra[11]~output_o\ : std_logic;
SIGNAL \Time_extra[12]~output_o\ : std_logic;
SIGNAL \Time_extra[13]~output_o\ : std_logic;
SIGNAL \Time_extra[14]~output_o\ : std_logic;
SIGNAL \Time_extra[15]~output_o\ : std_logic;
SIGNAL \Time_extra[16]~output_o\ : std_logic;
SIGNAL \Time_extra[17]~output_o\ : std_logic;
SIGNAL \Time_extra[18]~output_o\ : std_logic;
SIGNAL \Time_extra[19]~output_o\ : std_logic;
SIGNAL \Time_extra[20]~output_o\ : std_logic;
SIGNAL \Time_extra[21]~output_o\ : std_logic;
SIGNAL \Time_extra[22]~output_o\ : std_logic;
SIGNAL \Time_extra[23]~output_o\ : std_logic;
SIGNAL \Time_extra[24]~output_o\ : std_logic;
SIGNAL \Time_extra[25]~output_o\ : std_logic;
SIGNAL \Time_extra[26]~output_o\ : std_logic;
SIGNAL \Time_extra[27]~output_o\ : std_logic;
SIGNAL \Time_extra[28]~output_o\ : std_logic;
SIGNAL \Time_extra[29]~output_o\ : std_logic;
SIGNAL \Time_extra[30]~output_o\ : std_logic;
SIGNAL \Time_extra[31]~output_o\ : std_logic;
SIGNAL \Time_cozer[0]~output_o\ : std_logic;
SIGNAL \Time_cozer[1]~output_o\ : std_logic;
SIGNAL \Time_cozer[2]~output_o\ : std_logic;
SIGNAL \Time_cozer[3]~output_o\ : std_logic;
SIGNAL \Time_cozer[4]~output_o\ : std_logic;
SIGNAL \Time_cozer[5]~output_o\ : std_logic;
SIGNAL \Time_cozer[6]~output_o\ : std_logic;
SIGNAL \Time_cozer[7]~output_o\ : std_logic;
SIGNAL \Time_cozer[8]~output_o\ : std_logic;
SIGNAL \Time_cozer[9]~output_o\ : std_logic;
SIGNAL \Time_cozer[10]~output_o\ : std_logic;
SIGNAL \Time_cozer[11]~output_o\ : std_logic;
SIGNAL \Time_cozer[12]~output_o\ : std_logic;
SIGNAL \Time_cozer[13]~output_o\ : std_logic;
SIGNAL \Time_cozer[14]~output_o\ : std_logic;
SIGNAL \Time_cozer[15]~output_o\ : std_logic;
SIGNAL \Time_cozer[16]~output_o\ : std_logic;
SIGNAL \Time_cozer[17]~output_o\ : std_logic;
SIGNAL \Time_cozer[18]~output_o\ : std_logic;
SIGNAL \Time_cozer[19]~output_o\ : std_logic;
SIGNAL \Time_cozer[20]~output_o\ : std_logic;
SIGNAL \Time_cozer[21]~output_o\ : std_logic;
SIGNAL \Time_cozer[22]~output_o\ : std_logic;
SIGNAL \Time_cozer[23]~output_o\ : std_logic;
SIGNAL \Time_cozer[24]~output_o\ : std_logic;
SIGNAL \Time_cozer[25]~output_o\ : std_logic;
SIGNAL \Time_cozer[26]~output_o\ : std_logic;
SIGNAL \Time_cozer[27]~output_o\ : std_logic;
SIGNAL \Time_cozer[28]~output_o\ : std_logic;
SIGNAL \Time_cozer[29]~output_o\ : std_logic;
SIGNAL \Time_cozer[30]~output_o\ : std_logic;
SIGNAL \Time_cozer[31]~output_o\ : std_logic;
SIGNAL \Time_amassar[0]~output_o\ : std_logic;
SIGNAL \Time_amassar[1]~output_o\ : std_logic;
SIGNAL \Time_amassar[2]~output_o\ : std_logic;
SIGNAL \Time_amassar[3]~output_o\ : std_logic;
SIGNAL \Time_amassar[4]~output_o\ : std_logic;
SIGNAL \Time_amassar[5]~output_o\ : std_logic;
SIGNAL \Time_amassar[6]~output_o\ : std_logic;
SIGNAL \Time_amassar[7]~output_o\ : std_logic;
SIGNAL \Time_amassar[8]~output_o\ : std_logic;
SIGNAL \Time_amassar[9]~output_o\ : std_logic;
SIGNAL \Time_amassar[10]~output_o\ : std_logic;
SIGNAL \Time_amassar[11]~output_o\ : std_logic;
SIGNAL \Time_amassar[12]~output_o\ : std_logic;
SIGNAL \Time_amassar[13]~output_o\ : std_logic;
SIGNAL \Time_amassar[14]~output_o\ : std_logic;
SIGNAL \Time_amassar[15]~output_o\ : std_logic;
SIGNAL \Time_amassar[16]~output_o\ : std_logic;
SIGNAL \Time_amassar[17]~output_o\ : std_logic;
SIGNAL \Time_amassar[18]~output_o\ : std_logic;
SIGNAL \Time_amassar[19]~output_o\ : std_logic;
SIGNAL \Time_amassar[20]~output_o\ : std_logic;
SIGNAL \Time_amassar[21]~output_o\ : std_logic;
SIGNAL \Time_amassar[22]~output_o\ : std_logic;
SIGNAL \Time_amassar[23]~output_o\ : std_logic;
SIGNAL \Time_amassar[24]~output_o\ : std_logic;
SIGNAL \Time_amassar[25]~output_o\ : std_logic;
SIGNAL \Time_amassar[26]~output_o\ : std_logic;
SIGNAL \Time_amassar[27]~output_o\ : std_logic;
SIGNAL \Time_amassar[28]~output_o\ : std_logic;
SIGNAL \Time_amassar[29]~output_o\ : std_logic;
SIGNAL \Time_amassar[30]~output_o\ : std_logic;
SIGNAL \Time_amassar[31]~output_o\ : std_logic;
SIGNAL \Time_levedar[0]~output_o\ : std_logic;
SIGNAL \Time_levedar[1]~output_o\ : std_logic;
SIGNAL \Time_levedar[2]~output_o\ : std_logic;
SIGNAL \Time_levedar[3]~output_o\ : std_logic;
SIGNAL \Time_levedar[4]~output_o\ : std_logic;
SIGNAL \Time_levedar[5]~output_o\ : std_logic;
SIGNAL \Time_levedar[6]~output_o\ : std_logic;
SIGNAL \Time_levedar[7]~output_o\ : std_logic;
SIGNAL \Time_levedar[8]~output_o\ : std_logic;
SIGNAL \Time_levedar[9]~output_o\ : std_logic;
SIGNAL \Time_levedar[10]~output_o\ : std_logic;
SIGNAL \Time_levedar[11]~output_o\ : std_logic;
SIGNAL \Time_levedar[12]~output_o\ : std_logic;
SIGNAL \Time_levedar[13]~output_o\ : std_logic;
SIGNAL \Time_levedar[14]~output_o\ : std_logic;
SIGNAL \Time_levedar[15]~output_o\ : std_logic;
SIGNAL \Time_levedar[16]~output_o\ : std_logic;
SIGNAL \Time_levedar[17]~output_o\ : std_logic;
SIGNAL \Time_levedar[18]~output_o\ : std_logic;
SIGNAL \Time_levedar[19]~output_o\ : std_logic;
SIGNAL \Time_levedar[20]~output_o\ : std_logic;
SIGNAL \Time_levedar[21]~output_o\ : std_logic;
SIGNAL \Time_levedar[22]~output_o\ : std_logic;
SIGNAL \Time_levedar[23]~output_o\ : std_logic;
SIGNAL \Time_levedar[24]~output_o\ : std_logic;
SIGNAL \Time_levedar[25]~output_o\ : std_logic;
SIGNAL \Time_levedar[26]~output_o\ : std_logic;
SIGNAL \Time_levedar[27]~output_o\ : std_logic;
SIGNAL \Time_levedar[28]~output_o\ : std_logic;
SIGNAL \Time_levedar[29]~output_o\ : std_logic;
SIGNAL \Time_levedar[30]~output_o\ : std_logic;
SIGNAL \Time_levedar[31]~output_o\ : std_logic;
SIGNAL \Start_Stop_o~output_o\ : std_logic;
SIGNAL \Mode1~output_o\ : std_logic;
SIGNAL \Mode2~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \Selector~input_o\ : std_logic;
SIGNAL \Time_cozer[0]~0_combout\ : std_logic;
SIGNAL \Reset~input_o\ : std_logic;
SIGNAL \Time_cozer[0]~reg0_q\ : std_logic;
SIGNAL \Time_cozer[1]~reg0feeder_combout\ : std_logic;
SIGNAL \Time_cozer[1]~reg0_q\ : std_logic;
SIGNAL \Time_cozer[2]~reg0feeder_combout\ : std_logic;
SIGNAL \Time_cozer[2]~reg0_q\ : std_logic;
SIGNAL \Time_cozer[3]~reg0feeder_combout\ : std_logic;
SIGNAL \Time_cozer[3]~reg0_q\ : std_logic;
SIGNAL \Time_cozer[31]~reg0feeder_combout\ : std_logic;
SIGNAL \Time_cozer[31]~reg0_q\ : std_logic;
SIGNAL \Time_amassar[0]~reg0feeder_combout\ : std_logic;
SIGNAL \Time_amassar[0]~reg0_q\ : std_logic;
SIGNAL \Time_amassar[1]~0_combout\ : std_logic;
SIGNAL \Time_amassar[1]~reg0_q\ : std_logic;
SIGNAL \Time_amassar[3]~reg0feeder_combout\ : std_logic;
SIGNAL \Time_amassar[3]~reg0_q\ : std_logic;
SIGNAL \Time_amassar[31]~reg0feeder_combout\ : std_logic;
SIGNAL \Time_amassar[31]~reg0_q\ : std_logic;
SIGNAL \Time_levedar[0]~reg0feeder_combout\ : std_logic;
SIGNAL \Time_levedar[0]~reg0_q\ : std_logic;
SIGNAL \Time_levedar[1]~reg0feeder_combout\ : std_logic;
SIGNAL \Time_levedar[1]~reg0_q\ : std_logic;
SIGNAL \Time_levedar[2]~0_combout\ : std_logic;
SIGNAL \Time_levedar[2]~reg0_q\ : std_logic;
SIGNAL \Time_levedar[3]~reg0feeder_combout\ : std_logic;
SIGNAL \Time_levedar[3]~reg0_q\ : std_logic;
SIGNAL \Time_levedar[31]~reg0feeder_combout\ : std_logic;
SIGNAL \Time_levedar[31]~reg0_q\ : std_logic;
SIGNAL \Mode1~0_combout\ : std_logic;
SIGNAL \Mode1~reg0_q\ : std_logic;
SIGNAL \Mode2~0_combout\ : std_logic;
SIGNAL \Mode2~reg0_q\ : std_logic;
SIGNAL \ALT_INV_Time_levedar[31]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_Time_levedar[0]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_Time_amassar[31]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_Time_amassar[0]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_Time_cozer[31]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_Time_cozer[0]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_Reset~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_Reset <= Reset;
ww_Selector <= Selector;
ww_Start_Stop <= Start_Stop;
ww_Time_adjust <= Time_adjust;
ww_clock <= clock;
Time_extra <= ww_Time_extra;
Time_cozer <= ww_Time_cozer;
Time_amassar <= ww_Time_amassar;
Time_levedar <= ww_Time_levedar;
Start_Stop_o <= ww_Start_Stop_o;
Mode1 <= ww_Mode1;
Mode2 <= ww_Mode2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);
\ALT_INV_Time_levedar[31]~reg0_q\ <= NOT \Time_levedar[31]~reg0_q\;
\ALT_INV_Time_levedar[0]~reg0_q\ <= NOT \Time_levedar[0]~reg0_q\;
\ALT_INV_Time_amassar[31]~reg0_q\ <= NOT \Time_amassar[31]~reg0_q\;
\ALT_INV_Time_amassar[0]~reg0_q\ <= NOT \Time_amassar[0]~reg0_q\;
\ALT_INV_Time_cozer[31]~reg0_q\ <= NOT \Time_cozer[31]~reg0_q\;
\ALT_INV_Time_cozer[0]~reg0_q\ <= NOT \Time_cozer[0]~reg0_q\;
\ALT_INV_Reset~input_o\ <= NOT \Reset~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y6_N2
\Time_extra[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \Time_extra[0]~output_o\);

-- Location: IOOBUF_X16_Y73_N16
\Time_extra[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Time_extra[1]~output_o\);

-- Location: IOOBUF_X0_Y47_N2
\Time_extra[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Time_extra[2]~output_o\);

-- Location: IOOBUF_X100_Y0_N23
\Time_extra[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Time_extra[3]~output_o\);

-- Location: IOOBUF_X115_Y23_N2
\Time_extra[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Time_extra[4]~output_o\);

-- Location: IOOBUF_X11_Y73_N16
\Time_extra[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Time_extra[5]~output_o\);

-- Location: IOOBUF_X98_Y0_N16
\Time_extra[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Time_extra[6]~output_o\);

-- Location: IOOBUF_X79_Y0_N9
\Time_extra[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Time_extra[7]~output_o\);

-- Location: IOOBUF_X67_Y73_N2
\Time_extra[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Time_extra[8]~output_o\);

-- Location: IOOBUF_X115_Y15_N9
\Time_extra[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Time_extra[9]~output_o\);

-- Location: IOOBUF_X0_Y14_N2
\Time_extra[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Time_extra[10]~output_o\);

-- Location: IOOBUF_X72_Y73_N16
\Time_extra[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Time_extra[11]~output_o\);

-- Location: IOOBUF_X20_Y73_N16
\Time_extra[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Time_extra[12]~output_o\);

-- Location: IOOBUF_X98_Y73_N23
\Time_extra[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Time_extra[13]~output_o\);

-- Location: IOOBUF_X115_Y23_N9
\Time_extra[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Time_extra[14]~output_o\);

-- Location: IOOBUF_X0_Y29_N16
\Time_extra[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Time_extra[15]~output_o\);

-- Location: IOOBUF_X45_Y73_N2
\Time_extra[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Time_extra[16]~output_o\);

-- Location: IOOBUF_X56_Y0_N2
\Time_extra[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Time_extra[17]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\Time_extra[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Time_extra[18]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\Time_extra[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Time_extra[19]~output_o\);

-- Location: IOOBUF_X0_Y30_N2
\Time_extra[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Time_extra[20]~output_o\);

-- Location: IOOBUF_X7_Y0_N23
\Time_extra[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Time_extra[21]~output_o\);

-- Location: IOOBUF_X115_Y4_N23
\Time_extra[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Time_extra[22]~output_o\);

-- Location: IOOBUF_X72_Y73_N23
\Time_extra[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Time_extra[23]~output_o\);

-- Location: IOOBUF_X115_Y27_N9
\Time_extra[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Time_extra[24]~output_o\);

-- Location: IOOBUF_X0_Y67_N16
\Time_extra[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Time_extra[25]~output_o\);

-- Location: IOOBUF_X79_Y73_N9
\Time_extra[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Time_extra[26]~output_o\);

-- Location: IOOBUF_X111_Y73_N9
\Time_extra[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Time_extra[27]~output_o\);

-- Location: IOOBUF_X9_Y0_N16
\Time_extra[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Time_extra[28]~output_o\);

-- Location: IOOBUF_X0_Y32_N23
\Time_extra[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Time_extra[29]~output_o\);

-- Location: IOOBUF_X60_Y0_N16
\Time_extra[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Time_extra[30]~output_o\);

-- Location: IOOBUF_X89_Y0_N23
\Time_extra[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \Time_extra[31]~output_o\);

-- Location: IOOBUF_X0_Y68_N9
\Time_cozer[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Time_cozer[0]~reg0_q\,
	devoe => ww_devoe,
	o => \Time_cozer[0]~output_o\);

-- Location: IOOBUF_X5_Y73_N23
\Time_cozer[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Time_cozer[1]~reg0_q\,
	devoe => ww_devoe,
	o => \Time_cozer[1]~output_o\);

-- Location: IOOBUF_X1_Y73_N9
\Time_cozer[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Time_cozer[2]~reg0_q\,
	devoe => ww_devoe,
	o => \Time_cozer[2]~output_o\);

-- Location: IOOBUF_X3_Y73_N23
\Time_cozer[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Time_cozer[3]~reg0_q\,
	devoe => ww_devoe,
	o => \Time_cozer[3]~output_o\);

-- Location: IOOBUF_X31_Y0_N2
\Time_cozer[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Time_cozer[4]~output_o\);

-- Location: IOOBUF_X87_Y73_N2
\Time_cozer[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Time_cozer[5]~output_o\);

-- Location: IOOBUF_X0_Y52_N2
\Time_cozer[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Time_cozer[6]~output_o\);

-- Location: IOOBUF_X0_Y24_N23
\Time_cozer[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Time_cozer[7]~output_o\);

-- Location: IOOBUF_X89_Y73_N23
\Time_cozer[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Time_cozer[8]~output_o\);

-- Location: IOOBUF_X105_Y0_N2
\Time_cozer[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Time_cozer[9]~output_o\);

-- Location: IOOBUF_X67_Y73_N16
\Time_cozer[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Time_cozer[10]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\Time_cozer[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Time_cozer[11]~output_o\);

-- Location: IOOBUF_X35_Y0_N23
\Time_cozer[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Time_cozer[12]~output_o\);

-- Location: IOOBUF_X115_Y46_N2
\Time_cozer[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Time_cozer[13]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\Time_cozer[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Time_cozer[14]~output_o\);

-- Location: IOOBUF_X40_Y73_N9
\Time_cozer[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Time_cozer[15]~output_o\);

-- Location: IOOBUF_X115_Y22_N16
\Time_cozer[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Time_cozer[16]~output_o\);

-- Location: IOOBUF_X13_Y73_N16
\Time_cozer[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Time_cozer[17]~output_o\);

-- Location: IOOBUF_X79_Y73_N2
\Time_cozer[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Time_cozer[18]~output_o\);

-- Location: IOOBUF_X115_Y42_N16
\Time_cozer[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Time_cozer[19]~output_o\);

-- Location: IOOBUF_X0_Y55_N16
\Time_cozer[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Time_cozer[20]~output_o\);

-- Location: IOOBUF_X113_Y73_N2
\Time_cozer[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Time_cozer[21]~output_o\);

-- Location: IOOBUF_X52_Y73_N2
\Time_cozer[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Time_cozer[22]~output_o\);

-- Location: IOOBUF_X0_Y42_N2
\Time_cozer[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Time_cozer[23]~output_o\);

-- Location: IOOBUF_X54_Y0_N16
\Time_cozer[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Time_cozer[24]~output_o\);

-- Location: IOOBUF_X111_Y0_N2
\Time_cozer[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Time_cozer[25]~output_o\);

-- Location: IOOBUF_X0_Y11_N16
\Time_cozer[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Time_cozer[26]~output_o\);

-- Location: IOOBUF_X45_Y0_N16
\Time_cozer[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Time_cozer[27]~output_o\);

-- Location: IOOBUF_X115_Y26_N16
\Time_cozer[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Time_cozer[28]~output_o\);

-- Location: IOOBUF_X0_Y33_N16
\Time_cozer[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Time_cozer[29]~output_o\);

-- Location: IOOBUF_X0_Y44_N23
\Time_cozer[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Time_cozer[30]~output_o\);

-- Location: IOOBUF_X3_Y73_N2
\Time_cozer[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Time_cozer[31]~reg0_q\,
	devoe => ww_devoe,
	o => \Time_cozer[31]~output_o\);

-- Location: IOOBUF_X1_Y73_N2
\Time_amassar[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Time_amassar[0]~reg0_q\,
	devoe => ww_devoe,
	o => \Time_amassar[0]~output_o\);

-- Location: IOOBUF_X7_Y73_N16
\Time_amassar[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Time_amassar[1]~reg0_q\,
	devoe => ww_devoe,
	o => \Time_amassar[1]~output_o\);

-- Location: IOOBUF_X11_Y0_N16
\Time_amassar[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Time_amassar[2]~output_o\);

-- Location: IOOBUF_X9_Y73_N9
\Time_amassar[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Time_amassar[3]~reg0_q\,
	devoe => ww_devoe,
	o => \Time_amassar[3]~output_o\);

-- Location: IOOBUF_X20_Y73_N23
\Time_amassar[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Time_amassar[4]~output_o\);

-- Location: IOOBUF_X115_Y45_N23
\Time_amassar[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Time_amassar[5]~output_o\);

-- Location: IOOBUF_X65_Y73_N23
\Time_amassar[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Time_amassar[6]~output_o\);

-- Location: IOOBUF_X31_Y73_N2
\Time_amassar[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Time_amassar[7]~output_o\);

-- Location: IOOBUF_X52_Y73_N9
\Time_amassar[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Time_amassar[8]~output_o\);

-- Location: IOOBUF_X13_Y0_N23
\Time_amassar[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Time_amassar[9]~output_o\);

-- Location: IOOBUF_X0_Y66_N23
\Time_amassar[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Time_amassar[10]~output_o\);

-- Location: IOOBUF_X81_Y73_N23
\Time_amassar[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Time_amassar[11]~output_o\);

-- Location: IOOBUF_X49_Y73_N23
\Time_amassar[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Time_amassar[12]~output_o\);

-- Location: IOOBUF_X115_Y62_N16
\Time_amassar[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Time_amassar[13]~output_o\);

-- Location: IOOBUF_X115_Y33_N9
\Time_amassar[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Time_amassar[14]~output_o\);

-- Location: IOOBUF_X33_Y73_N2
\Time_amassar[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Time_amassar[15]~output_o\);

-- Location: IOOBUF_X0_Y51_N16
\Time_amassar[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Time_amassar[16]~output_o\);

-- Location: IOOBUF_X9_Y0_N23
\Time_amassar[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Time_amassar[17]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\Time_amassar[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Time_amassar[18]~output_o\);

-- Location: IOOBUF_X0_Y52_N23
\Time_amassar[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Time_amassar[19]~output_o\);

-- Location: IOOBUF_X115_Y13_N9
\Time_amassar[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Time_amassar[20]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\Time_amassar[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Time_amassar[21]~output_o\);

-- Location: IOOBUF_X115_Y29_N9
\Time_amassar[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Time_amassar[22]~output_o\);

-- Location: IOOBUF_X74_Y0_N16
\Time_amassar[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Time_amassar[23]~output_o\);

-- Location: IOOBUF_X18_Y73_N23
\Time_amassar[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Time_amassar[24]~output_o\);

-- Location: IOOBUF_X0_Y55_N9
\Time_amassar[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Time_amassar[25]~output_o\);

-- Location: IOOBUF_X52_Y73_N23
\Time_amassar[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Time_amassar[26]~output_o\);

-- Location: IOOBUF_X81_Y73_N16
\Time_amassar[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Time_amassar[27]~output_o\);

-- Location: IOOBUF_X0_Y43_N16
\Time_amassar[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Time_amassar[28]~output_o\);

-- Location: IOOBUF_X0_Y55_N23
\Time_amassar[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Time_amassar[29]~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\Time_amassar[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Time_amassar[30]~output_o\);

-- Location: IOOBUF_X1_Y73_N23
\Time_amassar[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Time_amassar[31]~reg0_q\,
	devoe => ww_devoe,
	o => \Time_amassar[31]~output_o\);

-- Location: IOOBUF_X3_Y73_N9
\Time_levedar[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Time_levedar[0]~reg0_q\,
	devoe => ww_devoe,
	o => \Time_levedar[0]~output_o\);

-- Location: IOOBUF_X7_Y73_N23
\Time_levedar[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Time_levedar[1]~reg0_q\,
	devoe => ww_devoe,
	o => \Time_levedar[1]~output_o\);

-- Location: IOOBUF_X9_Y73_N2
\Time_levedar[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Time_levedar[2]~reg0_q\,
	devoe => ww_devoe,
	o => \Time_levedar[2]~output_o\);

-- Location: IOOBUF_X0_Y69_N9
\Time_levedar[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Time_levedar[3]~reg0_q\,
	devoe => ww_devoe,
	o => \Time_levedar[3]~output_o\);

-- Location: IOOBUF_X18_Y0_N2
\Time_levedar[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Time_levedar[4]~output_o\);

-- Location: IOOBUF_X7_Y0_N16
\Time_levedar[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Time_levedar[5]~output_o\);

-- Location: IOOBUF_X52_Y73_N16
\Time_levedar[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Time_levedar[6]~output_o\);

-- Location: IOOBUF_X0_Y48_N9
\Time_levedar[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Time_levedar[7]~output_o\);

-- Location: IOOBUF_X0_Y53_N2
\Time_levedar[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Time_levedar[8]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\Time_levedar[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Time_levedar[9]~output_o\);

-- Location: IOOBUF_X58_Y73_N23
\Time_levedar[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Time_levedar[10]~output_o\);

-- Location: IOOBUF_X105_Y73_N2
\Time_levedar[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Time_levedar[11]~output_o\);

-- Location: IOOBUF_X45_Y73_N9
\Time_levedar[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Time_levedar[12]~output_o\);

-- Location: IOOBUF_X0_Y35_N2
\Time_levedar[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Time_levedar[13]~output_o\);

-- Location: IOOBUF_X115_Y8_N23
\Time_levedar[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Time_levedar[14]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\Time_levedar[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Time_levedar[15]~output_o\);

-- Location: IOOBUF_X89_Y0_N9
\Time_levedar[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Time_levedar[16]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\Time_levedar[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Time_levedar[17]~output_o\);

-- Location: IOOBUF_X0_Y53_N9
\Time_levedar[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Time_levedar[18]~output_o\);

-- Location: IOOBUF_X85_Y0_N23
\Time_levedar[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Time_levedar[19]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\Time_levedar[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Time_levedar[20]~output_o\);

-- Location: IOOBUF_X115_Y14_N2
\Time_levedar[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Time_levedar[21]~output_o\);

-- Location: IOOBUF_X29_Y0_N16
\Time_levedar[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Time_levedar[22]~output_o\);

-- Location: IOOBUF_X40_Y0_N16
\Time_levedar[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Time_levedar[23]~output_o\);

-- Location: IOOBUF_X115_Y29_N2
\Time_levedar[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Time_levedar[24]~output_o\);

-- Location: IOOBUF_X87_Y73_N23
\Time_levedar[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Time_levedar[25]~output_o\);

-- Location: IOOBUF_X113_Y0_N2
\Time_levedar[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Time_levedar[26]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\Time_levedar[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Time_levedar[27]~output_o\);

-- Location: IOOBUF_X49_Y0_N23
\Time_levedar[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Time_levedar[28]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\Time_levedar[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Time_levedar[29]~output_o\);

-- Location: IOOBUF_X54_Y73_N9
\Time_levedar[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Time_levedar[30]~output_o\);

-- Location: IOOBUF_X1_Y73_N16
\Time_levedar[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Time_levedar[31]~reg0_q\,
	devoe => ww_devoe,
	o => \Time_levedar[31]~output_o\);

-- Location: IOOBUF_X0_Y30_N9
\Start_Stop_o~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Start_Stop_o~output_o\);

-- Location: IOOBUF_X11_Y73_N23
\Mode1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mode1~reg0_q\,
	devoe => ww_devoe,
	o => \Mode1~output_o\);

-- Location: IOOBUF_X0_Y68_N2
\Mode2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mode2~reg0_q\,
	devoe => ww_devoe,
	o => \Mode2~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\clock~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G2
\clock~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~inputclkctrl_outclk\);

-- Location: IOIBUF_X5_Y73_N8
\Selector~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Selector,
	o => \Selector~input_o\);

-- Location: LCCOMB_X4_Y72_N8
\Time_cozer[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Time_cozer[0]~0_combout\ = !\Selector~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector~input_o\,
	combout => \Time_cozer[0]~0_combout\);

-- Location: IOIBUF_X5_Y73_N1
\Reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Reset,
	o => \Reset~input_o\);

-- Location: FF_X4_Y72_N9
\Time_cozer[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Time_cozer[0]~0_combout\,
	ena => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Time_cozer[0]~reg0_q\);

-- Location: LCCOMB_X4_Y72_N2
\Time_cozer[1]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Time_cozer[1]~reg0feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \Time_cozer[1]~reg0feeder_combout\);

-- Location: FF_X4_Y72_N3
\Time_cozer[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Time_cozer[1]~reg0feeder_combout\,
	ena => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Time_cozer[1]~reg0_q\);

-- Location: LCCOMB_X4_Y72_N28
\Time_cozer[2]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Time_cozer[2]~reg0feeder_combout\ = \Selector~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector~input_o\,
	combout => \Time_cozer[2]~reg0feeder_combout\);

-- Location: FF_X4_Y72_N29
\Time_cozer[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Time_cozer[2]~reg0feeder_combout\,
	ena => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Time_cozer[2]~reg0_q\);

-- Location: LCCOMB_X4_Y72_N10
\Time_cozer[3]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Time_cozer[3]~reg0feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \Time_cozer[3]~reg0feeder_combout\);

-- Location: FF_X4_Y72_N11
\Time_cozer[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Time_cozer[3]~reg0feeder_combout\,
	ena => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Time_cozer[3]~reg0_q\);

-- Location: LCCOMB_X4_Y72_N0
\Time_cozer[31]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Time_cozer[31]~reg0feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \Time_cozer[31]~reg0feeder_combout\);

-- Location: FF_X4_Y72_N1
\Time_cozer[31]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Time_cozer[31]~reg0feeder_combout\,
	ena => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Time_cozer[31]~reg0_q\);

-- Location: LCCOMB_X4_Y72_N22
\Time_amassar[0]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Time_amassar[0]~reg0feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \Time_amassar[0]~reg0feeder_combout\);

-- Location: FF_X4_Y72_N23
\Time_amassar[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Time_amassar[0]~reg0feeder_combout\,
	ena => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Time_amassar[0]~reg0_q\);

-- Location: LCCOMB_X4_Y72_N12
\Time_amassar[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Time_amassar[1]~0_combout\ = !\Selector~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector~input_o\,
	combout => \Time_amassar[1]~0_combout\);

-- Location: FF_X4_Y72_N13
\Time_amassar[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Time_amassar[1]~0_combout\,
	ena => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Time_amassar[1]~reg0_q\);

-- Location: LCCOMB_X4_Y72_N18
\Time_amassar[3]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Time_amassar[3]~reg0feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \Time_amassar[3]~reg0feeder_combout\);

-- Location: FF_X4_Y72_N19
\Time_amassar[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Time_amassar[3]~reg0feeder_combout\,
	ena => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Time_amassar[3]~reg0_q\);

-- Location: LCCOMB_X4_Y72_N4
\Time_amassar[31]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Time_amassar[31]~reg0feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \Time_amassar[31]~reg0feeder_combout\);

-- Location: FF_X4_Y72_N5
\Time_amassar[31]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Time_amassar[31]~reg0feeder_combout\,
	ena => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Time_amassar[31]~reg0_q\);

-- Location: LCCOMB_X4_Y72_N26
\Time_levedar[0]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Time_levedar[0]~reg0feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \Time_levedar[0]~reg0feeder_combout\);

-- Location: FF_X4_Y72_N27
\Time_levedar[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Time_levedar[0]~reg0feeder_combout\,
	ena => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Time_levedar[0]~reg0_q\);

-- Location: LCCOMB_X4_Y72_N24
\Time_levedar[1]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Time_levedar[1]~reg0feeder_combout\ = \Selector~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector~input_o\,
	combout => \Time_levedar[1]~reg0feeder_combout\);

-- Location: FF_X4_Y72_N25
\Time_levedar[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Time_levedar[1]~reg0feeder_combout\,
	ena => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Time_levedar[1]~reg0_q\);

-- Location: LCCOMB_X4_Y72_N6
\Time_levedar[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Time_levedar[2]~0_combout\ = !\Selector~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector~input_o\,
	combout => \Time_levedar[2]~0_combout\);

-- Location: FF_X4_Y72_N7
\Time_levedar[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Time_levedar[2]~0_combout\,
	ena => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Time_levedar[2]~reg0_q\);

-- Location: LCCOMB_X4_Y72_N16
\Time_levedar[3]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Time_levedar[3]~reg0feeder_combout\ = \Selector~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector~input_o\,
	combout => \Time_levedar[3]~reg0feeder_combout\);

-- Location: FF_X4_Y72_N17
\Time_levedar[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Time_levedar[3]~reg0feeder_combout\,
	ena => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Time_levedar[3]~reg0_q\);

-- Location: LCCOMB_X4_Y72_N14
\Time_levedar[31]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Time_levedar[31]~reg0feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \Time_levedar[31]~reg0feeder_combout\);

-- Location: FF_X4_Y72_N15
\Time_levedar[31]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Time_levedar[31]~reg0feeder_combout\,
	ena => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Time_levedar[31]~reg0_q\);

-- Location: LCCOMB_X4_Y72_N20
\Mode1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mode1~0_combout\ = (\Mode1~reg0_q\) # (!\Selector~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mode1~reg0_q\,
	datad => \Selector~input_o\,
	combout => \Mode1~0_combout\);

-- Location: FF_X4_Y72_N21
\Mode1~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Mode1~0_combout\,
	sclr => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mode1~reg0_q\);

-- Location: LCCOMB_X4_Y72_N30
\Mode2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mode2~0_combout\ = (\Mode2~reg0_q\) # (\Selector~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mode2~reg0_q\,
	datad => \Selector~input_o\,
	combout => \Mode2~0_combout\);

-- Location: FF_X4_Y72_N31
\Mode2~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Mode2~0_combout\,
	sclr => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Mode2~reg0_q\);

-- Location: IOIBUF_X11_Y73_N1
\Start_Stop~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Start_Stop,
	o => \Start_Stop~input_o\);

-- Location: IOIBUF_X79_Y0_N1
\Time_adjust[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Time_adjust(0),
	o => \Time_adjust[0]~input_o\);

-- Location: IOIBUF_X115_Y41_N8
\Time_adjust[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Time_adjust(1),
	o => \Time_adjust[1]~input_o\);

-- Location: IOIBUF_X65_Y0_N8
\Time_adjust[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Time_adjust(2),
	o => \Time_adjust[2]~input_o\);

-- Location: IOIBUF_X5_Y0_N22
\Time_adjust[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Time_adjust(3),
	o => \Time_adjust[3]~input_o\);

-- Location: IOIBUF_X27_Y73_N22
\Time_adjust[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Time_adjust(4),
	o => \Time_adjust[4]~input_o\);

-- Location: IOIBUF_X83_Y73_N22
\Time_adjust[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Time_adjust(5),
	o => \Time_adjust[5]~input_o\);

-- Location: IOIBUF_X45_Y0_N22
\Time_adjust[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Time_adjust(6),
	o => \Time_adjust[6]~input_o\);

-- Location: IOIBUF_X83_Y0_N8
\Time_adjust[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Time_adjust(7),
	o => \Time_adjust[7]~input_o\);

ww_Time_extra(0) <= \Time_extra[0]~output_o\;

ww_Time_extra(1) <= \Time_extra[1]~output_o\;

ww_Time_extra(2) <= \Time_extra[2]~output_o\;

ww_Time_extra(3) <= \Time_extra[3]~output_o\;

ww_Time_extra(4) <= \Time_extra[4]~output_o\;

ww_Time_extra(5) <= \Time_extra[5]~output_o\;

ww_Time_extra(6) <= \Time_extra[6]~output_o\;

ww_Time_extra(7) <= \Time_extra[7]~output_o\;

ww_Time_extra(8) <= \Time_extra[8]~output_o\;

ww_Time_extra(9) <= \Time_extra[9]~output_o\;

ww_Time_extra(10) <= \Time_extra[10]~output_o\;

ww_Time_extra(11) <= \Time_extra[11]~output_o\;

ww_Time_extra(12) <= \Time_extra[12]~output_o\;

ww_Time_extra(13) <= \Time_extra[13]~output_o\;

ww_Time_extra(14) <= \Time_extra[14]~output_o\;

ww_Time_extra(15) <= \Time_extra[15]~output_o\;

ww_Time_extra(16) <= \Time_extra[16]~output_o\;

ww_Time_extra(17) <= \Time_extra[17]~output_o\;

ww_Time_extra(18) <= \Time_extra[18]~output_o\;

ww_Time_extra(19) <= \Time_extra[19]~output_o\;

ww_Time_extra(20) <= \Time_extra[20]~output_o\;

ww_Time_extra(21) <= \Time_extra[21]~output_o\;

ww_Time_extra(22) <= \Time_extra[22]~output_o\;

ww_Time_extra(23) <= \Time_extra[23]~output_o\;

ww_Time_extra(24) <= \Time_extra[24]~output_o\;

ww_Time_extra(25) <= \Time_extra[25]~output_o\;

ww_Time_extra(26) <= \Time_extra[26]~output_o\;

ww_Time_extra(27) <= \Time_extra[27]~output_o\;

ww_Time_extra(28) <= \Time_extra[28]~output_o\;

ww_Time_extra(29) <= \Time_extra[29]~output_o\;

ww_Time_extra(30) <= \Time_extra[30]~output_o\;

ww_Time_extra(31) <= \Time_extra[31]~output_o\;

ww_Time_cozer(0) <= \Time_cozer[0]~output_o\;

ww_Time_cozer(1) <= \Time_cozer[1]~output_o\;

ww_Time_cozer(2) <= \Time_cozer[2]~output_o\;

ww_Time_cozer(3) <= \Time_cozer[3]~output_o\;

ww_Time_cozer(4) <= \Time_cozer[4]~output_o\;

ww_Time_cozer(5) <= \Time_cozer[5]~output_o\;

ww_Time_cozer(6) <= \Time_cozer[6]~output_o\;

ww_Time_cozer(7) <= \Time_cozer[7]~output_o\;

ww_Time_cozer(8) <= \Time_cozer[8]~output_o\;

ww_Time_cozer(9) <= \Time_cozer[9]~output_o\;

ww_Time_cozer(10) <= \Time_cozer[10]~output_o\;

ww_Time_cozer(11) <= \Time_cozer[11]~output_o\;

ww_Time_cozer(12) <= \Time_cozer[12]~output_o\;

ww_Time_cozer(13) <= \Time_cozer[13]~output_o\;

ww_Time_cozer(14) <= \Time_cozer[14]~output_o\;

ww_Time_cozer(15) <= \Time_cozer[15]~output_o\;

ww_Time_cozer(16) <= \Time_cozer[16]~output_o\;

ww_Time_cozer(17) <= \Time_cozer[17]~output_o\;

ww_Time_cozer(18) <= \Time_cozer[18]~output_o\;

ww_Time_cozer(19) <= \Time_cozer[19]~output_o\;

ww_Time_cozer(20) <= \Time_cozer[20]~output_o\;

ww_Time_cozer(21) <= \Time_cozer[21]~output_o\;

ww_Time_cozer(22) <= \Time_cozer[22]~output_o\;

ww_Time_cozer(23) <= \Time_cozer[23]~output_o\;

ww_Time_cozer(24) <= \Time_cozer[24]~output_o\;

ww_Time_cozer(25) <= \Time_cozer[25]~output_o\;

ww_Time_cozer(26) <= \Time_cozer[26]~output_o\;

ww_Time_cozer(27) <= \Time_cozer[27]~output_o\;

ww_Time_cozer(28) <= \Time_cozer[28]~output_o\;

ww_Time_cozer(29) <= \Time_cozer[29]~output_o\;

ww_Time_cozer(30) <= \Time_cozer[30]~output_o\;

ww_Time_cozer(31) <= \Time_cozer[31]~output_o\;

ww_Time_amassar(0) <= \Time_amassar[0]~output_o\;

ww_Time_amassar(1) <= \Time_amassar[1]~output_o\;

ww_Time_amassar(2) <= \Time_amassar[2]~output_o\;

ww_Time_amassar(3) <= \Time_amassar[3]~output_o\;

ww_Time_amassar(4) <= \Time_amassar[4]~output_o\;

ww_Time_amassar(5) <= \Time_amassar[5]~output_o\;

ww_Time_amassar(6) <= \Time_amassar[6]~output_o\;

ww_Time_amassar(7) <= \Time_amassar[7]~output_o\;

ww_Time_amassar(8) <= \Time_amassar[8]~output_o\;

ww_Time_amassar(9) <= \Time_amassar[9]~output_o\;

ww_Time_amassar(10) <= \Time_amassar[10]~output_o\;

ww_Time_amassar(11) <= \Time_amassar[11]~output_o\;

ww_Time_amassar(12) <= \Time_amassar[12]~output_o\;

ww_Time_amassar(13) <= \Time_amassar[13]~output_o\;

ww_Time_amassar(14) <= \Time_amassar[14]~output_o\;

ww_Time_amassar(15) <= \Time_amassar[15]~output_o\;

ww_Time_amassar(16) <= \Time_amassar[16]~output_o\;

ww_Time_amassar(17) <= \Time_amassar[17]~output_o\;

ww_Time_amassar(18) <= \Time_amassar[18]~output_o\;

ww_Time_amassar(19) <= \Time_amassar[19]~output_o\;

ww_Time_amassar(20) <= \Time_amassar[20]~output_o\;

ww_Time_amassar(21) <= \Time_amassar[21]~output_o\;

ww_Time_amassar(22) <= \Time_amassar[22]~output_o\;

ww_Time_amassar(23) <= \Time_amassar[23]~output_o\;

ww_Time_amassar(24) <= \Time_amassar[24]~output_o\;

ww_Time_amassar(25) <= \Time_amassar[25]~output_o\;

ww_Time_amassar(26) <= \Time_amassar[26]~output_o\;

ww_Time_amassar(27) <= \Time_amassar[27]~output_o\;

ww_Time_amassar(28) <= \Time_amassar[28]~output_o\;

ww_Time_amassar(29) <= \Time_amassar[29]~output_o\;

ww_Time_amassar(30) <= \Time_amassar[30]~output_o\;

ww_Time_amassar(31) <= \Time_amassar[31]~output_o\;

ww_Time_levedar(0) <= \Time_levedar[0]~output_o\;

ww_Time_levedar(1) <= \Time_levedar[1]~output_o\;

ww_Time_levedar(2) <= \Time_levedar[2]~output_o\;

ww_Time_levedar(3) <= \Time_levedar[3]~output_o\;

ww_Time_levedar(4) <= \Time_levedar[4]~output_o\;

ww_Time_levedar(5) <= \Time_levedar[5]~output_o\;

ww_Time_levedar(6) <= \Time_levedar[6]~output_o\;

ww_Time_levedar(7) <= \Time_levedar[7]~output_o\;

ww_Time_levedar(8) <= \Time_levedar[8]~output_o\;

ww_Time_levedar(9) <= \Time_levedar[9]~output_o\;

ww_Time_levedar(10) <= \Time_levedar[10]~output_o\;

ww_Time_levedar(11) <= \Time_levedar[11]~output_o\;

ww_Time_levedar(12) <= \Time_levedar[12]~output_o\;

ww_Time_levedar(13) <= \Time_levedar[13]~output_o\;

ww_Time_levedar(14) <= \Time_levedar[14]~output_o\;

ww_Time_levedar(15) <= \Time_levedar[15]~output_o\;

ww_Time_levedar(16) <= \Time_levedar[16]~output_o\;

ww_Time_levedar(17) <= \Time_levedar[17]~output_o\;

ww_Time_levedar(18) <= \Time_levedar[18]~output_o\;

ww_Time_levedar(19) <= \Time_levedar[19]~output_o\;

ww_Time_levedar(20) <= \Time_levedar[20]~output_o\;

ww_Time_levedar(21) <= \Time_levedar[21]~output_o\;

ww_Time_levedar(22) <= \Time_levedar[22]~output_o\;

ww_Time_levedar(23) <= \Time_levedar[23]~output_o\;

ww_Time_levedar(24) <= \Time_levedar[24]~output_o\;

ww_Time_levedar(25) <= \Time_levedar[25]~output_o\;

ww_Time_levedar(26) <= \Time_levedar[26]~output_o\;

ww_Time_levedar(27) <= \Time_levedar[27]~output_o\;

ww_Time_levedar(28) <= \Time_levedar[28]~output_o\;

ww_Time_levedar(29) <= \Time_levedar[29]~output_o\;

ww_Time_levedar(30) <= \Time_levedar[30]~output_o\;

ww_Time_levedar(31) <= \Time_levedar[31]~output_o\;

ww_Start_Stop_o <= \Start_Stop_o~output_o\;

ww_Mode1 <= \Mode1~output_o\;

ww_Mode2 <= \Mode2~output_o\;
END structure;


