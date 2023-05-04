-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Full Version"

-- DATE "05/03/2023 20:49:49"

-- 
-- Device: Altera EP3C40F780C8 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	exp5 IS
    PORT (
	clk : IN std_logic;
	RA : IN std_logic_vector(1 DOWNTO 0);
	wr : IN std_logic;
	rd : IN std_logic;
	M : IN std_logic_vector(1 DOWNTO 0);
	clr : IN std_logic;
	DATA_INPUT : IN std_logic_vector(7 DOWNTO 0);
	R0 : OUT std_logic_vector(7 DOWNTO 0);
	R1 : OUT std_logic_vector(7 DOWNTO 0);
	R2 : OUT std_logic_vector(7 DOWNTO 0);
	R3 : OUT std_logic_vector(7 DOWNTO 0);
	PC : OUT std_logic_vector(7 DOWNTO 0);
	N : OUT std_logic_vector(31 DOWNTO 0);
	codeout : OUT std_logic_vector(7 DOWNTO 0)
	);
END exp5;

-- Design Ports Information
-- R0[0]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R0[1]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R0[3]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R0[4]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R0[5]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R0[6]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R0[7]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1[0]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1[1]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1[2]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1[3]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1[4]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1[5]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1[6]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1[7]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2[0]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2[1]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2[2]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2[3]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2[4]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2[5]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2[6]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2[7]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R3[0]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R3[1]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R3[2]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R3[3]	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R3[4]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R3[5]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R3[6]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R3[7]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[0]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[1]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[2]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[3]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[4]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[5]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[6]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[7]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[0]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[1]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[2]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[3]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[4]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[5]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[6]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[7]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[8]	=>  Location: PIN_AC4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[9]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[10]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[11]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[12]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[13]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[14]	=>  Location: PIN_AH8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[15]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[16]	=>  Location: PIN_M27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[17]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[18]	=>  Location: PIN_AG4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[19]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[20]	=>  Location: PIN_T25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[21]	=>  Location: PIN_AE21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[22]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[23]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[24]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[25]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[26]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[27]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[28]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[29]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[30]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[31]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- codeout[0]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- codeout[1]	=>  Location: PIN_AC19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- codeout[2]	=>  Location: PIN_AE22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- codeout[3]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- codeout[4]	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- codeout[5]	=>  Location: PIN_AF21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- codeout[6]	=>  Location: PIN_V28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- codeout[7]	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_INPUT[0]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RA[1]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RA[0]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wr	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_INPUT[1]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_INPUT[2]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_INPUT[3]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_INPUT[4]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_INPUT[5]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_INPUT[6]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_INPUT[7]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[1]	=>  Location: PIN_G27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M[0]	=>  Location: PIN_AG11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clr	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF exp5 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_RA : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_wr : std_logic;
SIGNAL ww_rd : std_logic;
SIGNAL ww_M : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_clr : std_logic;
SIGNAL ww_DATA_INPUT : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_R0 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_R1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_R2 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_R3 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_PC : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_N : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_codeout : std_logic_vector(7 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clr~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \R0[0]~output_o\ : std_logic;
SIGNAL \R0[1]~output_o\ : std_logic;
SIGNAL \R0[2]~output_o\ : std_logic;
SIGNAL \R0[3]~output_o\ : std_logic;
SIGNAL \R0[4]~output_o\ : std_logic;
SIGNAL \R0[5]~output_o\ : std_logic;
SIGNAL \R0[6]~output_o\ : std_logic;
SIGNAL \R0[7]~output_o\ : std_logic;
SIGNAL \R1[0]~output_o\ : std_logic;
SIGNAL \R1[1]~output_o\ : std_logic;
SIGNAL \R1[2]~output_o\ : std_logic;
SIGNAL \R1[3]~output_o\ : std_logic;
SIGNAL \R1[4]~output_o\ : std_logic;
SIGNAL \R1[5]~output_o\ : std_logic;
SIGNAL \R1[6]~output_o\ : std_logic;
SIGNAL \R1[7]~output_o\ : std_logic;
SIGNAL \R2[0]~output_o\ : std_logic;
SIGNAL \R2[1]~output_o\ : std_logic;
SIGNAL \R2[2]~output_o\ : std_logic;
SIGNAL \R2[3]~output_o\ : std_logic;
SIGNAL \R2[4]~output_o\ : std_logic;
SIGNAL \R2[5]~output_o\ : std_logic;
SIGNAL \R2[6]~output_o\ : std_logic;
SIGNAL \R2[7]~output_o\ : std_logic;
SIGNAL \R3[0]~output_o\ : std_logic;
SIGNAL \R3[1]~output_o\ : std_logic;
SIGNAL \R3[2]~output_o\ : std_logic;
SIGNAL \R3[3]~output_o\ : std_logic;
SIGNAL \R3[4]~output_o\ : std_logic;
SIGNAL \R3[5]~output_o\ : std_logic;
SIGNAL \R3[6]~output_o\ : std_logic;
SIGNAL \R3[7]~output_o\ : std_logic;
SIGNAL \PC[0]~output_o\ : std_logic;
SIGNAL \PC[1]~output_o\ : std_logic;
SIGNAL \PC[2]~output_o\ : std_logic;
SIGNAL \PC[3]~output_o\ : std_logic;
SIGNAL \PC[4]~output_o\ : std_logic;
SIGNAL \PC[5]~output_o\ : std_logic;
SIGNAL \PC[6]~output_o\ : std_logic;
SIGNAL \PC[7]~output_o\ : std_logic;
SIGNAL \N[0]~output_o\ : std_logic;
SIGNAL \N[1]~output_o\ : std_logic;
SIGNAL \N[2]~output_o\ : std_logic;
SIGNAL \N[3]~output_o\ : std_logic;
SIGNAL \N[4]~output_o\ : std_logic;
SIGNAL \N[5]~output_o\ : std_logic;
SIGNAL \N[6]~output_o\ : std_logic;
SIGNAL \N[7]~output_o\ : std_logic;
SIGNAL \N[8]~output_o\ : std_logic;
SIGNAL \N[9]~output_o\ : std_logic;
SIGNAL \N[10]~output_o\ : std_logic;
SIGNAL \N[11]~output_o\ : std_logic;
SIGNAL \N[12]~output_o\ : std_logic;
SIGNAL \N[13]~output_o\ : std_logic;
SIGNAL \N[14]~output_o\ : std_logic;
SIGNAL \N[15]~output_o\ : std_logic;
SIGNAL \N[16]~output_o\ : std_logic;
SIGNAL \N[17]~output_o\ : std_logic;
SIGNAL \N[18]~output_o\ : std_logic;
SIGNAL \N[19]~output_o\ : std_logic;
SIGNAL \N[20]~output_o\ : std_logic;
SIGNAL \N[21]~output_o\ : std_logic;
SIGNAL \N[22]~output_o\ : std_logic;
SIGNAL \N[23]~output_o\ : std_logic;
SIGNAL \N[24]~output_o\ : std_logic;
SIGNAL \N[25]~output_o\ : std_logic;
SIGNAL \N[26]~output_o\ : std_logic;
SIGNAL \N[27]~output_o\ : std_logic;
SIGNAL \N[28]~output_o\ : std_logic;
SIGNAL \N[29]~output_o\ : std_logic;
SIGNAL \N[30]~output_o\ : std_logic;
SIGNAL \N[31]~output_o\ : std_logic;
SIGNAL \codeout[0]~output_o\ : std_logic;
SIGNAL \codeout[1]~output_o\ : std_logic;
SIGNAL \codeout[2]~output_o\ : std_logic;
SIGNAL \codeout[3]~output_o\ : std_logic;
SIGNAL \codeout[4]~output_o\ : std_logic;
SIGNAL \codeout[5]~output_o\ : std_logic;
SIGNAL \codeout[6]~output_o\ : std_logic;
SIGNAL \codeout[7]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \DATA_INPUT[0]~input_o\ : std_logic;
SIGNAL \RA[0]~input_o\ : std_logic;
SIGNAL \RA[1]~input_o\ : std_logic;
SIGNAL \rd~input_o\ : std_logic;
SIGNAL \wr~input_o\ : std_logic;
SIGNAL \Decoder0~0_combout\ : std_logic;
SIGNAL \R0[0]~reg0_q\ : std_logic;
SIGNAL \DATA_INPUT[1]~input_o\ : std_logic;
SIGNAL \R0[1]~reg0_q\ : std_logic;
SIGNAL \DATA_INPUT[2]~input_o\ : std_logic;
SIGNAL \R0[2]~reg0_q\ : std_logic;
SIGNAL \DATA_INPUT[3]~input_o\ : std_logic;
SIGNAL \R0[3]~reg0_q\ : std_logic;
SIGNAL \DATA_INPUT[4]~input_o\ : std_logic;
SIGNAL \R0[4]~reg0_q\ : std_logic;
SIGNAL \DATA_INPUT[5]~input_o\ : std_logic;
SIGNAL \R0[5]~reg0_q\ : std_logic;
SIGNAL \DATA_INPUT[6]~input_o\ : std_logic;
SIGNAL \R0[6]~reg0_q\ : std_logic;
SIGNAL \DATA_INPUT[7]~input_o\ : std_logic;
SIGNAL \R0[7]~reg0_q\ : std_logic;
SIGNAL \R1[0]~reg0feeder_combout\ : std_logic;
SIGNAL \Decoder0~1_combout\ : std_logic;
SIGNAL \R1[0]~reg0_q\ : std_logic;
SIGNAL \R1[1]~reg0_q\ : std_logic;
SIGNAL \R1[2]~reg0feeder_combout\ : std_logic;
SIGNAL \R1[2]~reg0_q\ : std_logic;
SIGNAL \R1[3]~reg0feeder_combout\ : std_logic;
SIGNAL \R1[3]~reg0_q\ : std_logic;
SIGNAL \R1[4]~reg0feeder_combout\ : std_logic;
SIGNAL \R1[4]~reg0_q\ : std_logic;
SIGNAL \R1[5]~reg0feeder_combout\ : std_logic;
SIGNAL \R1[5]~reg0_q\ : std_logic;
SIGNAL \R1[6]~reg0feeder_combout\ : std_logic;
SIGNAL \R1[6]~reg0_q\ : std_logic;
SIGNAL \R1[7]~reg0_q\ : std_logic;
SIGNAL \Decoder0~2_combout\ : std_logic;
SIGNAL \R2[0]~reg0_q\ : std_logic;
SIGNAL \R2[1]~reg0feeder_combout\ : std_logic;
SIGNAL \R2[1]~reg0_q\ : std_logic;
SIGNAL \R2[2]~reg0feeder_combout\ : std_logic;
SIGNAL \R2[2]~reg0_q\ : std_logic;
SIGNAL \R2[3]~reg0feeder_combout\ : std_logic;
SIGNAL \R2[3]~reg0_q\ : std_logic;
SIGNAL \R2[4]~reg0feeder_combout\ : std_logic;
SIGNAL \R2[4]~reg0_q\ : std_logic;
SIGNAL \R2[5]~reg0_q\ : std_logic;
SIGNAL \R2[6]~reg0feeder_combout\ : std_logic;
SIGNAL \R2[6]~reg0_q\ : std_logic;
SIGNAL \R2[7]~reg0feeder_combout\ : std_logic;
SIGNAL \R2[7]~reg0_q\ : std_logic;
SIGNAL \R3[0]~reg0feeder_combout\ : std_logic;
SIGNAL \Decoder0~3_combout\ : std_logic;
SIGNAL \R3[0]~reg0_q\ : std_logic;
SIGNAL \R3[1]~reg0_q\ : std_logic;
SIGNAL \R3[2]~reg0feeder_combout\ : std_logic;
SIGNAL \R3[2]~reg0_q\ : std_logic;
SIGNAL \R3[3]~reg0feeder_combout\ : std_logic;
SIGNAL \R3[3]~reg0_q\ : std_logic;
SIGNAL \R3[4]~reg0feeder_combout\ : std_logic;
SIGNAL \R3[4]~reg0_q\ : std_logic;
SIGNAL \R3[5]~reg0feeder_combout\ : std_logic;
SIGNAL \R3[5]~reg0_q\ : std_logic;
SIGNAL \R3[6]~reg0feeder_combout\ : std_logic;
SIGNAL \R3[6]~reg0_q\ : std_logic;
SIGNAL \R3[7]~reg0_q\ : std_logic;
SIGNAL \M[0]~input_o\ : std_logic;
SIGNAL \M[1]~input_o\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \PC[0]~8_combout\ : std_logic;
SIGNAL \clr~input_o\ : std_logic;
SIGNAL \clr~inputclkctrl_outclk\ : std_logic;
SIGNAL \PC[0]~reg0_q\ : std_logic;
SIGNAL \Add1~1_combout\ : std_logic;
SIGNAL \PC[0]~9\ : std_logic;
SIGNAL \PC[1]~10_combout\ : std_logic;
SIGNAL \PC[1]~reg0_q\ : std_logic;
SIGNAL \PC[1]~11\ : std_logic;
SIGNAL \PC[2]~12_combout\ : std_logic;
SIGNAL \PC[2]~reg0_q\ : std_logic;
SIGNAL \PC[2]~13\ : std_logic;
SIGNAL \PC[3]~14_combout\ : std_logic;
SIGNAL \PC[3]~reg0_q\ : std_logic;
SIGNAL \PC[3]~15\ : std_logic;
SIGNAL \PC[4]~16_combout\ : std_logic;
SIGNAL \PC[4]~reg0_q\ : std_logic;
SIGNAL \PC[4]~17\ : std_logic;
SIGNAL \PC[5]~18_combout\ : std_logic;
SIGNAL \PC[5]~reg0_q\ : std_logic;
SIGNAL \PC[5]~19\ : std_logic;
SIGNAL \PC[6]~20_combout\ : std_logic;
SIGNAL \PC[6]~reg0_q\ : std_logic;
SIGNAL \PC[6]~21\ : std_logic;
SIGNAL \PC[7]~22_combout\ : std_logic;
SIGNAL \PC[7]~reg0_q\ : std_logic;
SIGNAL \Y[0]~feeder_combout\ : std_logic;
SIGNAL \Y[1]~feeder_combout\ : std_logic;
SIGNAL \Y[2]~feeder_combout\ : std_logic;
SIGNAL \Y[3]~feeder_combout\ : std_logic;
SIGNAL \Y[4]~feeder_combout\ : std_logic;
SIGNAL \Y[5]~feeder_combout\ : std_logic;
SIGNAL \Y[6]~feeder_combout\ : std_logic;
SIGNAL \Y[7]~feeder_combout\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Mux15~1_combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \Mux14~1_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux13~1_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux12~1_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux11~1_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux10~1_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux9~1_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux8~1_combout\ : std_logic;
SIGNAL Y : std_logic_vector(7 DOWNTO 0);
SIGNAL X : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_clr~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_clr~input_o\ : std_logic;

BEGIN

ww_clk <= clk;
ww_RA <= RA;
ww_wr <= wr;
ww_rd <= rd;
ww_M <= M;
ww_clr <= clr;
ww_DATA_INPUT <= DATA_INPUT;
R0 <= ww_R0;
R1 <= ww_R1;
R2 <= ww_R2;
R3 <= ww_R3;
PC <= ww_PC;
N <= ww_N;
codeout <= ww_codeout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\clr~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clr~input_o\);
\ALT_INV_clr~inputclkctrl_outclk\ <= NOT \clr~inputclkctrl_outclk\;
\ALT_INV_clk~inputclkctrl_outclk\ <= NOT \clk~inputclkctrl_outclk\;
\ALT_INV_clr~input_o\ <= NOT \clr~input_o\;

-- Location: IOOBUF_X36_Y43_N9
\R0[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R0[0]~reg0_q\,
	devoe => ww_devoe,
	o => \R0[0]~output_o\);

-- Location: IOOBUF_X36_Y43_N16
\R0[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R0[1]~reg0_q\,
	devoe => ww_devoe,
	o => \R0[1]~output_o\);

-- Location: IOOBUF_X43_Y43_N2
\R0[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R0[2]~reg0_q\,
	devoe => ww_devoe,
	o => \R0[2]~output_o\);

-- Location: IOOBUF_X45_Y43_N30
\R0[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R0[3]~reg0_q\,
	devoe => ww_devoe,
	o => \R0[3]~output_o\);

-- Location: IOOBUF_X45_Y43_N23
\R0[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R0[4]~reg0_q\,
	devoe => ww_devoe,
	o => \R0[4]~output_o\);

-- Location: IOOBUF_X18_Y43_N2
\R0[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R0[5]~reg0_q\,
	devoe => ww_devoe,
	o => \R0[5]~output_o\);

-- Location: IOOBUF_X45_Y43_N2
\R0[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R0[6]~reg0_q\,
	devoe => ww_devoe,
	o => \R0[6]~output_o\);

-- Location: IOOBUF_X45_Y43_N9
\R0[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R0[7]~reg0_q\,
	devoe => ww_devoe,
	o => \R0[7]~output_o\);

-- Location: IOOBUF_X27_Y43_N23
\R1[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R1[0]~reg0_q\,
	devoe => ww_devoe,
	o => \R1[0]~output_o\);

-- Location: IOOBUF_X43_Y43_N23
\R1[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R1[1]~reg0_q\,
	devoe => ww_devoe,
	o => \R1[1]~output_o\);

-- Location: IOOBUF_X43_Y43_N30
\R1[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R1[2]~reg0_q\,
	devoe => ww_devoe,
	o => \R1[2]~output_o\);

-- Location: IOOBUF_X41_Y43_N2
\R1[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R1[3]~reg0_q\,
	devoe => ww_devoe,
	o => \R1[3]~output_o\);

-- Location: IOOBUF_X29_Y43_N23
\R1[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R1[4]~reg0_q\,
	devoe => ww_devoe,
	o => \R1[4]~output_o\);

-- Location: IOOBUF_X20_Y43_N23
\R1[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R1[5]~reg0_q\,
	devoe => ww_devoe,
	o => \R1[5]~output_o\);

-- Location: IOOBUF_X11_Y43_N2
\R1[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R1[6]~reg0_q\,
	devoe => ww_devoe,
	o => \R1[6]~output_o\);

-- Location: IOOBUF_X41_Y43_N16
\R1[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R1[7]~reg0_q\,
	devoe => ww_devoe,
	o => \R1[7]~output_o\);

-- Location: IOOBUF_X29_Y43_N2
\R2[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R2[0]~reg0_q\,
	devoe => ww_devoe,
	o => \R2[0]~output_o\);

-- Location: IOOBUF_X38_Y43_N30
\R2[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R2[1]~reg0_q\,
	devoe => ww_devoe,
	o => \R2[1]~output_o\);

-- Location: IOOBUF_X38_Y43_N23
\R2[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R2[2]~reg0_q\,
	devoe => ww_devoe,
	o => \R2[2]~output_o\);

-- Location: IOOBUF_X36_Y43_N23
\R2[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R2[3]~reg0_q\,
	devoe => ww_devoe,
	o => \R2[3]~output_o\);

-- Location: IOOBUF_X29_Y43_N16
\R2[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R2[4]~reg0_q\,
	devoe => ww_devoe,
	o => \R2[4]~output_o\);

-- Location: IOOBUF_X22_Y43_N2
\R2[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R2[5]~reg0_q\,
	devoe => ww_devoe,
	o => \R2[5]~output_o\);

-- Location: IOOBUF_X22_Y43_N16
\R2[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R2[6]~reg0_q\,
	devoe => ww_devoe,
	o => \R2[6]~output_o\);

-- Location: IOOBUF_X38_Y43_N2
\R2[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R2[7]~reg0_q\,
	devoe => ww_devoe,
	o => \R2[7]~output_o\);

-- Location: IOOBUF_X32_Y43_N23
\R3[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R3[0]~reg0_q\,
	devoe => ww_devoe,
	o => \R3[0]~output_o\);

-- Location: IOOBUF_X27_Y43_N9
\R3[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R3[1]~reg0_q\,
	devoe => ww_devoe,
	o => \R3[1]~output_o\);

-- Location: IOOBUF_X27_Y43_N16
\R3[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R3[2]~reg0_q\,
	devoe => ww_devoe,
	o => \R3[2]~output_o\);

-- Location: IOOBUF_X27_Y43_N2
\R3[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R3[3]~reg0_q\,
	devoe => ww_devoe,
	o => \R3[3]~output_o\);

-- Location: IOOBUF_X38_Y43_N16
\R3[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R3[4]~reg0_q\,
	devoe => ww_devoe,
	o => \R3[4]~output_o\);

-- Location: IOOBUF_X27_Y43_N30
\R3[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R3[5]~reg0_q\,
	devoe => ww_devoe,
	o => \R3[5]~output_o\);

-- Location: IOOBUF_X11_Y43_N16
\R3[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R3[6]~reg0_q\,
	devoe => ww_devoe,
	o => \R3[6]~output_o\);

-- Location: IOOBUF_X32_Y43_N30
\R3[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R3[7]~reg0_q\,
	devoe => ww_devoe,
	o => \R3[7]~output_o\);

-- Location: IOOBUF_X18_Y43_N30
\PC[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC[0]~reg0_q\,
	devoe => ww_devoe,
	o => \PC[0]~output_o\);

-- Location: IOOBUF_X14_Y43_N23
\PC[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC[1]~reg0_q\,
	devoe => ww_devoe,
	o => \PC[1]~output_o\);

-- Location: IOOBUF_X20_Y43_N9
\PC[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC[2]~reg0_q\,
	devoe => ww_devoe,
	o => \PC[2]~output_o\);

-- Location: IOOBUF_X14_Y43_N30
\PC[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC[3]~reg0_q\,
	devoe => ww_devoe,
	o => \PC[3]~output_o\);

-- Location: IOOBUF_X22_Y43_N23
\PC[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC[4]~reg0_q\,
	devoe => ww_devoe,
	o => \PC[4]~output_o\);

-- Location: IOOBUF_X16_Y43_N9
\PC[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC[5]~reg0_q\,
	devoe => ww_devoe,
	o => \PC[5]~output_o\);

-- Location: IOOBUF_X20_Y43_N30
\PC[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC[6]~reg0_q\,
	devoe => ww_devoe,
	o => \PC[6]~output_o\);

-- Location: IOOBUF_X16_Y43_N2
\PC[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC[7]~reg0_q\,
	devoe => ww_devoe,
	o => \PC[7]~output_o\);

-- Location: IOOBUF_X14_Y43_N16
\N[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Y(0),
	devoe => ww_devoe,
	o => \N[0]~output_o\);

-- Location: IOOBUF_X11_Y43_N30
\N[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Y(1),
	devoe => ww_devoe,
	o => \N[1]~output_o\);

-- Location: IOOBUF_X20_Y43_N2
\N[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Y(2),
	devoe => ww_devoe,
	o => \N[2]~output_o\);

-- Location: IOOBUF_X20_Y43_N16
\N[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Y(3),
	devoe => ww_devoe,
	o => \N[3]~output_o\);

-- Location: IOOBUF_X16_Y43_N16
\N[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Y(4),
	devoe => ww_devoe,
	o => \N[4]~output_o\);

-- Location: IOOBUF_X11_Y43_N9
\N[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Y(5),
	devoe => ww_devoe,
	o => \N[5]~output_o\);

-- Location: IOOBUF_X14_Y43_N9
\N[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Y(6),
	devoe => ww_devoe,
	o => \N[6]~output_o\);

-- Location: IOOBUF_X48_Y43_N9
\N[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Y(7),
	devoe => ww_devoe,
	o => \N[7]~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\N[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \N[8]~output_o\);

-- Location: IOOBUF_X65_Y0_N16
\N[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \N[9]~output_o\);

-- Location: IOOBUF_X65_Y43_N2
\N[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \N[10]~output_o\);

-- Location: IOOBUF_X41_Y0_N30
\N[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \N[11]~output_o\);

-- Location: IOOBUF_X9_Y0_N30
\N[12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \N[12]~output_o\);

-- Location: IOOBUF_X0_Y19_N2
\N[13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \N[13]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\N[14]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \N[14]~output_o\);

-- Location: IOOBUF_X0_Y3_N2
\N[15]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \N[15]~output_o\);

-- Location: IOOBUF_X67_Y29_N23
\N[16]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \N[16]~output_o\);

-- Location: IOOBUF_X48_Y43_N16
\N[17]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \N[17]~output_o\);

-- Location: IOOBUF_X3_Y0_N9
\N[18]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \N[18]~output_o\);

-- Location: IOOBUF_X48_Y0_N30
\N[19]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \N[19]~output_o\);

-- Location: IOOBUF_X67_Y17_N16
\N[20]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \N[20]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\N[21]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \N[21]~output_o\);

-- Location: IOOBUF_X9_Y43_N16
\N[22]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \N[22]~output_o\);

-- Location: IOOBUF_X61_Y43_N30
\N[23]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \N[23]~output_o\);

-- Location: IOOBUF_X32_Y43_N16
\N[24]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => X(0),
	devoe => ww_devoe,
	o => \N[24]~output_o\);

-- Location: IOOBUF_X32_Y43_N2
\N[25]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => X(1),
	devoe => ww_devoe,
	o => \N[25]~output_o\);

-- Location: IOOBUF_X48_Y43_N23
\N[26]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => X(2),
	devoe => ww_devoe,
	o => \N[26]~output_o\);

-- Location: IOOBUF_X45_Y43_N16
\N[27]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => X(3),
	devoe => ww_devoe,
	o => \N[27]~output_o\);

-- Location: IOOBUF_X36_Y43_N2
\N[28]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => X(4),
	devoe => ww_devoe,
	o => \N[28]~output_o\);

-- Location: IOOBUF_X22_Y43_N9
\N[29]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => X(5),
	devoe => ww_devoe,
	o => \N[29]~output_o\);

-- Location: IOOBUF_X0_Y35_N9
\N[30]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => X(6),
	devoe => ww_devoe,
	o => \N[30]~output_o\);

-- Location: IOOBUF_X43_Y43_N9
\N[31]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => X(7),
	devoe => ww_devoe,
	o => \N[31]~output_o\);

-- Location: IOOBUF_X52_Y43_N9
\codeout[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \codeout[0]~output_o\);

-- Location: IOOBUF_X56_Y0_N16
\codeout[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \codeout[1]~output_o\);

-- Location: IOOBUF_X65_Y0_N23
\codeout[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \codeout[2]~output_o\);

-- Location: IOOBUF_X3_Y0_N23
\codeout[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \codeout[3]~output_o\);

-- Location: IOOBUF_X11_Y0_N16
\codeout[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \codeout[4]~output_o\);

-- Location: IOOBUF_X59_Y0_N16
\codeout[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \codeout[5]~output_o\);

-- Location: IOOBUF_X67_Y13_N16
\codeout[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \codeout[6]~output_o\);

-- Location: IOOBUF_X25_Y0_N23
\codeout[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \codeout[7]~output_o\);

-- Location: IOIBUF_X0_Y21_N1
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G4
\clk~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X29_Y43_N8
\DATA_INPUT[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_INPUT(0),
	o => \DATA_INPUT[0]~input_o\);

-- Location: IOIBUF_X38_Y43_N8
\RA[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RA(0),
	o => \RA[0]~input_o\);

-- Location: IOIBUF_X43_Y43_N15
\RA[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RA(1),
	o => \RA[1]~input_o\);

-- Location: IOIBUF_X48_Y43_N1
\rd~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rd,
	o => \rd~input_o\);

-- Location: IOIBUF_X41_Y43_N8
\wr~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wr,
	o => \wr~input_o\);

-- Location: LCCOMB_X29_Y35_N24
\Decoder0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~0_combout\ = (!\RA[0]~input_o\ & (!\RA[1]~input_o\ & (\rd~input_o\ & !\wr~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[0]~input_o\,
	datab => \RA[1]~input_o\,
	datac => \rd~input_o\,
	datad => \wr~input_o\,
	combout => \Decoder0~0_combout\);

-- Location: FF_X29_Y35_N17
\R0[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DATA_INPUT[0]~input_o\,
	sload => VCC,
	ena => \Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R0[0]~reg0_q\);

-- Location: IOIBUF_X25_Y43_N1
\DATA_INPUT[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_INPUT(1),
	o => \DATA_INPUT[1]~input_o\);

-- Location: FF_X29_Y35_N11
\R0[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DATA_INPUT[1]~input_o\,
	sload => VCC,
	ena => \Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R0[1]~reg0_q\);

-- Location: IOIBUF_X22_Y43_N29
\DATA_INPUT[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_INPUT(2),
	o => \DATA_INPUT[2]~input_o\);

-- Location: FF_X29_Y35_N29
\R0[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DATA_INPUT[2]~input_o\,
	sload => VCC,
	ena => \Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R0[2]~reg0_q\);

-- Location: IOIBUF_X25_Y43_N8
\DATA_INPUT[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_INPUT(3),
	o => \DATA_INPUT[3]~input_o\);

-- Location: FF_X29_Y35_N19
\R0[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DATA_INPUT[3]~input_o\,
	sload => VCC,
	ena => \Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R0[3]~reg0_q\);

-- Location: IOIBUF_X25_Y43_N22
\DATA_INPUT[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_INPUT(4),
	o => \DATA_INPUT[4]~input_o\);

-- Location: FF_X29_Y35_N1
\R0[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DATA_INPUT[4]~input_o\,
	sload => VCC,
	ena => \Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R0[4]~reg0_q\);

-- Location: IOIBUF_X25_Y43_N29
\DATA_INPUT[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_INPUT(5),
	o => \DATA_INPUT[5]~input_o\);

-- Location: FF_X27_Y35_N9
\R0[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DATA_INPUT[5]~input_o\,
	sload => VCC,
	ena => \Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R0[5]~reg0_q\);

-- Location: IOIBUF_X25_Y43_N15
\DATA_INPUT[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_INPUT(6),
	o => \DATA_INPUT[6]~input_o\);

-- Location: FF_X27_Y35_N27
\R0[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DATA_INPUT[6]~input_o\,
	sload => VCC,
	ena => \Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R0[6]~reg0_q\);

-- Location: IOIBUF_X32_Y43_N8
\DATA_INPUT[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_INPUT(7),
	o => \DATA_INPUT[7]~input_o\);

-- Location: FF_X29_Y35_N3
\R0[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DATA_INPUT[7]~input_o\,
	sload => VCC,
	ena => \Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R0[7]~reg0_q\);

-- Location: LCCOMB_X28_Y35_N20
\R1[0]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R1[0]~reg0feeder_combout\ = \DATA_INPUT[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DATA_INPUT[0]~input_o\,
	combout => \R1[0]~reg0feeder_combout\);

-- Location: LCCOMB_X29_Y35_N6
\Decoder0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~1_combout\ = (\RA[0]~input_o\ & (!\RA[1]~input_o\ & (\rd~input_o\ & !\wr~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[0]~input_o\,
	datab => \RA[1]~input_o\,
	datac => \rd~input_o\,
	datad => \wr~input_o\,
	combout => \Decoder0~1_combout\);

-- Location: FF_X28_Y35_N21
\R1[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \R1[0]~reg0feeder_combout\,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1[0]~reg0_q\);

-- Location: FF_X28_Y35_N7
\R1[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DATA_INPUT[1]~input_o\,
	sload => VCC,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1[1]~reg0_q\);

-- Location: LCCOMB_X28_Y35_N8
\R1[2]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R1[2]~reg0feeder_combout\ = \DATA_INPUT[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DATA_INPUT[2]~input_o\,
	combout => \R1[2]~reg0feeder_combout\);

-- Location: FF_X28_Y35_N9
\R1[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \R1[2]~reg0feeder_combout\,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1[2]~reg0_q\);

-- Location: LCCOMB_X28_Y35_N18
\R1[3]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R1[3]~reg0feeder_combout\ = \DATA_INPUT[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DATA_INPUT[3]~input_o\,
	combout => \R1[3]~reg0feeder_combout\);

-- Location: FF_X28_Y35_N19
\R1[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \R1[3]~reg0feeder_combout\,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1[3]~reg0_q\);

-- Location: LCCOMB_X28_Y35_N12
\R1[4]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R1[4]~reg0feeder_combout\ = \DATA_INPUT[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DATA_INPUT[4]~input_o\,
	combout => \R1[4]~reg0feeder_combout\);

-- Location: FF_X28_Y35_N13
\R1[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \R1[4]~reg0feeder_combout\,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1[4]~reg0_q\);

-- Location: LCCOMB_X28_Y35_N10
\R1[5]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R1[5]~reg0feeder_combout\ = \DATA_INPUT[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DATA_INPUT[5]~input_o\,
	combout => \R1[5]~reg0feeder_combout\);

-- Location: FF_X28_Y35_N11
\R1[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \R1[5]~reg0feeder_combout\,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1[5]~reg0_q\);

-- Location: LCCOMB_X28_Y35_N4
\R1[6]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R1[6]~reg0feeder_combout\ = \DATA_INPUT[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DATA_INPUT[6]~input_o\,
	combout => \R1[6]~reg0feeder_combout\);

-- Location: FF_X28_Y35_N5
\R1[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \R1[6]~reg0feeder_combout\,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1[6]~reg0_q\);

-- Location: FF_X28_Y35_N15
\R1[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DATA_INPUT[7]~input_o\,
	sload => VCC,
	ena => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1[7]~reg0_q\);

-- Location: LCCOMB_X29_Y35_N12
\Decoder0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~2_combout\ = (!\RA[0]~input_o\ & (\RA[1]~input_o\ & (\rd~input_o\ & !\wr~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[0]~input_o\,
	datab => \RA[1]~input_o\,
	datac => \rd~input_o\,
	datad => \wr~input_o\,
	combout => \Decoder0~2_combout\);

-- Location: FF_X30_Y35_N17
\R2[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DATA_INPUT[0]~input_o\,
	sload => VCC,
	ena => \Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R2[0]~reg0_q\);

-- Location: LCCOMB_X30_Y35_N2
\R2[1]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R2[1]~reg0feeder_combout\ = \DATA_INPUT[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DATA_INPUT[1]~input_o\,
	combout => \R2[1]~reg0feeder_combout\);

-- Location: FF_X30_Y35_N3
\R2[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \R2[1]~reg0feeder_combout\,
	ena => \Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R2[1]~reg0_q\);

-- Location: LCCOMB_X30_Y35_N4
\R2[2]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R2[2]~reg0feeder_combout\ = \DATA_INPUT[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DATA_INPUT[2]~input_o\,
	combout => \R2[2]~reg0feeder_combout\);

-- Location: FF_X30_Y35_N5
\R2[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \R2[2]~reg0feeder_combout\,
	ena => \Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R2[2]~reg0_q\);

-- Location: LCCOMB_X30_Y35_N26
\R2[3]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R2[3]~reg0feeder_combout\ = \DATA_INPUT[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DATA_INPUT[3]~input_o\,
	combout => \R2[3]~reg0feeder_combout\);

-- Location: FF_X30_Y35_N27
\R2[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \R2[3]~reg0feeder_combout\,
	ena => \Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R2[3]~reg0_q\);

-- Location: LCCOMB_X30_Y35_N28
\R2[4]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R2[4]~reg0feeder_combout\ = \DATA_INPUT[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DATA_INPUT[4]~input_o\,
	combout => \R2[4]~reg0feeder_combout\);

-- Location: FF_X30_Y35_N29
\R2[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \R2[4]~reg0feeder_combout\,
	ena => \Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R2[4]~reg0_q\);

-- Location: FF_X26_Y35_N29
\R2[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DATA_INPUT[5]~input_o\,
	sload => VCC,
	ena => \Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R2[5]~reg0_q\);

-- Location: LCCOMB_X26_Y35_N26
\R2[6]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R2[6]~reg0feeder_combout\ = \DATA_INPUT[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DATA_INPUT[6]~input_o\,
	combout => \R2[6]~reg0feeder_combout\);

-- Location: FF_X26_Y35_N27
\R2[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \R2[6]~reg0feeder_combout\,
	ena => \Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R2[6]~reg0_q\);

-- Location: LCCOMB_X30_Y35_N18
\R2[7]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R2[7]~reg0feeder_combout\ = \DATA_INPUT[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DATA_INPUT[7]~input_o\,
	combout => \R2[7]~reg0feeder_combout\);

-- Location: FF_X30_Y35_N19
\R2[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \R2[7]~reg0feeder_combout\,
	ena => \Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R2[7]~reg0_q\);

-- Location: LCCOMB_X28_Y35_N0
\R3[0]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R3[0]~reg0feeder_combout\ = \DATA_INPUT[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DATA_INPUT[0]~input_o\,
	combout => \R3[0]~reg0feeder_combout\);

-- Location: LCCOMB_X29_Y35_N22
\Decoder0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~3_combout\ = (\RA[0]~input_o\ & (\RA[1]~input_o\ & (\rd~input_o\ & !\wr~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[0]~input_o\,
	datab => \RA[1]~input_o\,
	datac => \rd~input_o\,
	datad => \wr~input_o\,
	combout => \Decoder0~3_combout\);

-- Location: FF_X28_Y35_N1
\R3[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \R3[0]~reg0feeder_combout\,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R3[0]~reg0_q\);

-- Location: FF_X28_Y35_N23
\R3[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DATA_INPUT[1]~input_o\,
	sload => VCC,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R3[1]~reg0_q\);

-- Location: LCCOMB_X28_Y35_N24
\R3[2]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R3[2]~reg0feeder_combout\ = \DATA_INPUT[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DATA_INPUT[2]~input_o\,
	combout => \R3[2]~reg0feeder_combout\);

-- Location: FF_X28_Y35_N25
\R3[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \R3[2]~reg0feeder_combout\,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R3[2]~reg0_q\);

-- Location: LCCOMB_X28_Y35_N30
\R3[3]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R3[3]~reg0feeder_combout\ = \DATA_INPUT[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DATA_INPUT[3]~input_o\,
	combout => \R3[3]~reg0feeder_combout\);

-- Location: FF_X28_Y35_N31
\R3[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \R3[3]~reg0feeder_combout\,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R3[3]~reg0_q\);

-- Location: LCCOMB_X28_Y35_N16
\R3[4]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R3[4]~reg0feeder_combout\ = \DATA_INPUT[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DATA_INPUT[4]~input_o\,
	combout => \R3[4]~reg0feeder_combout\);

-- Location: FF_X28_Y35_N17
\R3[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \R3[4]~reg0feeder_combout\,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R3[4]~reg0_q\);

-- Location: LCCOMB_X28_Y35_N2
\R3[5]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R3[5]~reg0feeder_combout\ = \DATA_INPUT[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DATA_INPUT[5]~input_o\,
	combout => \R3[5]~reg0feeder_combout\);

-- Location: FF_X28_Y35_N3
\R3[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \R3[5]~reg0feeder_combout\,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R3[5]~reg0_q\);

-- Location: LCCOMB_X28_Y35_N28
\R3[6]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R3[6]~reg0feeder_combout\ = \DATA_INPUT[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DATA_INPUT[6]~input_o\,
	combout => \R3[6]~reg0feeder_combout\);

-- Location: FF_X28_Y35_N29
\R3[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \R3[6]~reg0feeder_combout\,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R3[6]~reg0_q\);

-- Location: FF_X28_Y35_N27
\R3[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DATA_INPUT[7]~input_o\,
	sload => VCC,
	ena => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R3[7]~reg0_q\);

-- Location: IOIBUF_X29_Y0_N1
\M[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_M(0),
	o => \M[0]~input_o\);

-- Location: IOIBUF_X67_Y34_N1
\M[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_M(1),
	o => \M[1]~input_o\);

-- Location: LCCOMB_X29_Y34_N4
\Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = (!\M[0]~input_o\ & \M[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \M[0]~input_o\,
	datad => \M[1]~input_o\,
	combout => \Add1~0_combout\);

-- Location: LCCOMB_X25_Y42_N12
\PC[0]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PC[0]~8_combout\ = (\PC[0]~reg0_q\ & (\Add1~0_combout\ $ (GND))) # (!\PC[0]~reg0_q\ & (!\Add1~0_combout\ & VCC))
-- \PC[0]~9\ = CARRY((\PC[0]~reg0_q\ & !\Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[0]~reg0_q\,
	datab => \Add1~0_combout\,
	datad => VCC,
	combout => \PC[0]~8_combout\,
	cout => \PC[0]~9\);

-- Location: IOIBUF_X0_Y21_N8
\clr~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clr,
	o => \clr~input_o\);

-- Location: CLKCTRL_G2
\clr~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clr~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clr~inputclkctrl_outclk\);

-- Location: FF_X25_Y42_N13
\PC[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \PC[0]~8_combout\,
	asdata => \DATA_INPUT[0]~input_o\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => \Add1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC[0]~reg0_q\);

-- Location: LCCOMB_X29_Y34_N26
\Add1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~1_combout\ = (\M[0]~input_o\ & !\M[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \M[0]~input_o\,
	datad => \M[1]~input_o\,
	combout => \Add1~1_combout\);

-- Location: LCCOMB_X25_Y42_N14
\PC[1]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PC[1]~10_combout\ = (\Add1~1_combout\ & ((\PC[1]~reg0_q\ & (\PC[0]~9\ & VCC)) # (!\PC[1]~reg0_q\ & (!\PC[0]~9\)))) # (!\Add1~1_combout\ & ((\PC[1]~reg0_q\ & (!\PC[0]~9\)) # (!\PC[1]~reg0_q\ & ((\PC[0]~9\) # (GND)))))
-- \PC[1]~11\ = CARRY((\Add1~1_combout\ & (!\PC[1]~reg0_q\ & !\PC[0]~9\)) # (!\Add1~1_combout\ & ((!\PC[0]~9\) # (!\PC[1]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~1_combout\,
	datab => \PC[1]~reg0_q\,
	datad => VCC,
	cin => \PC[0]~9\,
	combout => \PC[1]~10_combout\,
	cout => \PC[1]~11\);

-- Location: FF_X25_Y42_N15
\PC[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \PC[1]~10_combout\,
	asdata => \DATA_INPUT[1]~input_o\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => \Add1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC[1]~reg0_q\);

-- Location: LCCOMB_X25_Y42_N16
\PC[2]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PC[2]~12_combout\ = ((\Add1~1_combout\ $ (\PC[2]~reg0_q\ $ (!\PC[1]~11\)))) # (GND)
-- \PC[2]~13\ = CARRY((\Add1~1_combout\ & ((\PC[2]~reg0_q\) # (!\PC[1]~11\))) # (!\Add1~1_combout\ & (\PC[2]~reg0_q\ & !\PC[1]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~1_combout\,
	datab => \PC[2]~reg0_q\,
	datad => VCC,
	cin => \PC[1]~11\,
	combout => \PC[2]~12_combout\,
	cout => \PC[2]~13\);

-- Location: FF_X25_Y42_N17
\PC[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \PC[2]~12_combout\,
	asdata => \DATA_INPUT[2]~input_o\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => \Add1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC[2]~reg0_q\);

-- Location: LCCOMB_X25_Y42_N18
\PC[3]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PC[3]~14_combout\ = (\Add1~1_combout\ & ((\PC[3]~reg0_q\ & (\PC[2]~13\ & VCC)) # (!\PC[3]~reg0_q\ & (!\PC[2]~13\)))) # (!\Add1~1_combout\ & ((\PC[3]~reg0_q\ & (!\PC[2]~13\)) # (!\PC[3]~reg0_q\ & ((\PC[2]~13\) # (GND)))))
-- \PC[3]~15\ = CARRY((\Add1~1_combout\ & (!\PC[3]~reg0_q\ & !\PC[2]~13\)) # (!\Add1~1_combout\ & ((!\PC[2]~13\) # (!\PC[3]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~1_combout\,
	datab => \PC[3]~reg0_q\,
	datad => VCC,
	cin => \PC[2]~13\,
	combout => \PC[3]~14_combout\,
	cout => \PC[3]~15\);

-- Location: FF_X25_Y42_N19
\PC[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \PC[3]~14_combout\,
	asdata => \DATA_INPUT[3]~input_o\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => \Add1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC[3]~reg0_q\);

-- Location: LCCOMB_X25_Y42_N20
\PC[4]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PC[4]~16_combout\ = ((\Add1~1_combout\ $ (\PC[4]~reg0_q\ $ (!\PC[3]~15\)))) # (GND)
-- \PC[4]~17\ = CARRY((\Add1~1_combout\ & ((\PC[4]~reg0_q\) # (!\PC[3]~15\))) # (!\Add1~1_combout\ & (\PC[4]~reg0_q\ & !\PC[3]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~1_combout\,
	datab => \PC[4]~reg0_q\,
	datad => VCC,
	cin => \PC[3]~15\,
	combout => \PC[4]~16_combout\,
	cout => \PC[4]~17\);

-- Location: FF_X25_Y42_N21
\PC[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \PC[4]~16_combout\,
	asdata => \DATA_INPUT[4]~input_o\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => \Add1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC[4]~reg0_q\);

-- Location: LCCOMB_X25_Y42_N22
\PC[5]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PC[5]~18_combout\ = (\PC[5]~reg0_q\ & ((\Add1~1_combout\ & (\PC[4]~17\ & VCC)) # (!\Add1~1_combout\ & (!\PC[4]~17\)))) # (!\PC[5]~reg0_q\ & ((\Add1~1_combout\ & (!\PC[4]~17\)) # (!\Add1~1_combout\ & ((\PC[4]~17\) # (GND)))))
-- \PC[5]~19\ = CARRY((\PC[5]~reg0_q\ & (!\Add1~1_combout\ & !\PC[4]~17\)) # (!\PC[5]~reg0_q\ & ((!\PC[4]~17\) # (!\Add1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC[5]~reg0_q\,
	datab => \Add1~1_combout\,
	datad => VCC,
	cin => \PC[4]~17\,
	combout => \PC[5]~18_combout\,
	cout => \PC[5]~19\);

-- Location: FF_X25_Y42_N23
\PC[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \PC[5]~18_combout\,
	asdata => \DATA_INPUT[5]~input_o\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => \Add1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC[5]~reg0_q\);

-- Location: LCCOMB_X25_Y42_N24
\PC[6]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PC[6]~20_combout\ = ((\Add1~1_combout\ $ (\PC[6]~reg0_q\ $ (!\PC[5]~19\)))) # (GND)
-- \PC[6]~21\ = CARRY((\Add1~1_combout\ & ((\PC[6]~reg0_q\) # (!\PC[5]~19\))) # (!\Add1~1_combout\ & (\PC[6]~reg0_q\ & !\PC[5]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~1_combout\,
	datab => \PC[6]~reg0_q\,
	datad => VCC,
	cin => \PC[5]~19\,
	combout => \PC[6]~20_combout\,
	cout => \PC[6]~21\);

-- Location: FF_X25_Y42_N25
\PC[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \PC[6]~20_combout\,
	asdata => \DATA_INPUT[6]~input_o\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => \Add1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC[6]~reg0_q\);

-- Location: LCCOMB_X25_Y42_N26
\PC[7]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PC[7]~22_combout\ = \PC[7]~reg0_q\ $ (\PC[6]~21\ $ (\Add1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC[7]~reg0_q\,
	datad => \Add1~1_combout\,
	cin => \PC[6]~21\,
	combout => \PC[7]~22_combout\);

-- Location: FF_X25_Y42_N27
\PC[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \PC[7]~22_combout\,
	asdata => \DATA_INPUT[7]~input_o\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => \Add1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC[7]~reg0_q\);

-- Location: LCCOMB_X20_Y42_N12
\Y[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Y[0]~feeder_combout\ = \PC[0]~reg0_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PC[0]~reg0_q\,
	combout => \Y[0]~feeder_combout\);

-- Location: FF_X20_Y42_N13
\Y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Y[0]~feeder_combout\,
	ena => \ALT_INV_clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Y(0));

-- Location: LCCOMB_X20_Y42_N22
\Y[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Y[1]~feeder_combout\ = \PC[1]~reg0_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PC[1]~reg0_q\,
	combout => \Y[1]~feeder_combout\);

-- Location: FF_X20_Y42_N23
\Y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Y[1]~feeder_combout\,
	ena => \ALT_INV_clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Y(1));

-- Location: LCCOMB_X25_Y42_N28
\Y[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Y[2]~feeder_combout\ = \PC[2]~reg0_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PC[2]~reg0_q\,
	combout => \Y[2]~feeder_combout\);

-- Location: FF_X25_Y42_N29
\Y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Y[2]~feeder_combout\,
	ena => \ALT_INV_clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Y(2));

-- Location: LCCOMB_X20_Y42_N0
\Y[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Y[3]~feeder_combout\ = \PC[3]~reg0_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PC[3]~reg0_q\,
	combout => \Y[3]~feeder_combout\);

-- Location: FF_X20_Y42_N1
\Y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Y[3]~feeder_combout\,
	ena => \ALT_INV_clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Y(3));

-- Location: LCCOMB_X20_Y42_N14
\Y[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Y[4]~feeder_combout\ = \PC[4]~reg0_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PC[4]~reg0_q\,
	combout => \Y[4]~feeder_combout\);

-- Location: FF_X20_Y42_N15
\Y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Y[4]~feeder_combout\,
	ena => \ALT_INV_clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Y(4));

-- Location: LCCOMB_X20_Y42_N24
\Y[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Y[5]~feeder_combout\ = \PC[5]~reg0_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PC[5]~reg0_q\,
	combout => \Y[5]~feeder_combout\);

-- Location: FF_X20_Y42_N25
\Y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Y[5]~feeder_combout\,
	ena => \ALT_INV_clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Y(5));

-- Location: LCCOMB_X20_Y42_N30
\Y[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Y[6]~feeder_combout\ = \PC[6]~reg0_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PC[6]~reg0_q\,
	combout => \Y[6]~feeder_combout\);

-- Location: FF_X20_Y42_N31
\Y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Y[6]~feeder_combout\,
	ena => \ALT_INV_clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Y(6));

-- Location: LCCOMB_X25_Y42_N6
\Y[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Y[7]~feeder_combout\ = \PC[7]~reg0_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PC[7]~reg0_q\,
	combout => \Y[7]~feeder_combout\);

-- Location: FF_X25_Y42_N7
\Y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Y[7]~feeder_combout\,
	ena => \ALT_INV_clr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Y(7));

-- Location: LCCOMB_X29_Y35_N16
\Mux15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (\RA[0]~input_o\ & ((\RA[1]~input_o\) # ((\R1[0]~reg0_q\)))) # (!\RA[0]~input_o\ & (!\RA[1]~input_o\ & (\R0[0]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[0]~input_o\,
	datab => \RA[1]~input_o\,
	datac => \R0[0]~reg0_q\,
	datad => \R1[0]~reg0_q\,
	combout => \Mux15~0_combout\);

-- Location: LCCOMB_X29_Y35_N20
\Mux15~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux15~1_combout\ = (\RA[1]~input_o\ & ((\Mux15~0_combout\ & (\R3[0]~reg0_q\)) # (!\Mux15~0_combout\ & ((\R2[0]~reg0_q\))))) # (!\RA[1]~input_o\ & (((\Mux15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R3[0]~reg0_q\,
	datab => \R2[0]~reg0_q\,
	datac => \RA[1]~input_o\,
	datad => \Mux15~0_combout\,
	combout => \Mux15~1_combout\);

-- Location: FF_X29_Y35_N21
\X[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Mux15~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => X(0));

-- Location: LCCOMB_X29_Y35_N10
\Mux14~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (\RA[0]~input_o\ & (\RA[1]~input_o\)) # (!\RA[0]~input_o\ & ((\RA[1]~input_o\ & ((\R2[1]~reg0_q\))) # (!\RA[1]~input_o\ & (\R0[1]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[0]~input_o\,
	datab => \RA[1]~input_o\,
	datac => \R0[1]~reg0_q\,
	datad => \R2[1]~reg0_q\,
	combout => \Mux14~0_combout\);

-- Location: LCCOMB_X29_Y35_N26
\Mux14~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux14~1_combout\ = (\RA[0]~input_o\ & ((\Mux14~0_combout\ & (\R3[1]~reg0_q\)) # (!\Mux14~0_combout\ & ((\R1[1]~reg0_q\))))) # (!\RA[0]~input_o\ & (((\Mux14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[0]~input_o\,
	datab => \R3[1]~reg0_q\,
	datac => \R1[1]~reg0_q\,
	datad => \Mux14~0_combout\,
	combout => \Mux14~1_combout\);

-- Location: FF_X29_Y35_N27
\X[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Mux14~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => X(1));

-- Location: LCCOMB_X29_Y35_N28
\Mux13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (\RA[0]~input_o\ & ((\RA[1]~input_o\) # ((\R1[2]~reg0_q\)))) # (!\RA[0]~input_o\ & (!\RA[1]~input_o\ & (\R0[2]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[0]~input_o\,
	datab => \RA[1]~input_o\,
	datac => \R0[2]~reg0_q\,
	datad => \R1[2]~reg0_q\,
	combout => \Mux13~0_combout\);

-- Location: LCCOMB_X29_Y35_N4
\Mux13~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux13~1_combout\ = (\RA[1]~input_o\ & ((\Mux13~0_combout\ & ((\R3[2]~reg0_q\))) # (!\Mux13~0_combout\ & (\R2[2]~reg0_q\)))) # (!\RA[1]~input_o\ & (((\Mux13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R2[2]~reg0_q\,
	datab => \R3[2]~reg0_q\,
	datac => \RA[1]~input_o\,
	datad => \Mux13~0_combout\,
	combout => \Mux13~1_combout\);

-- Location: FF_X29_Y35_N5
\X[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Mux13~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => X(2));

-- Location: LCCOMB_X29_Y35_N18
\Mux12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (\RA[0]~input_o\ & (\RA[1]~input_o\)) # (!\RA[0]~input_o\ & ((\RA[1]~input_o\ & ((\R2[3]~reg0_q\))) # (!\RA[1]~input_o\ & (\R0[3]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[0]~input_o\,
	datab => \RA[1]~input_o\,
	datac => \R0[3]~reg0_q\,
	datad => \R2[3]~reg0_q\,
	combout => \Mux12~0_combout\);

-- Location: LCCOMB_X29_Y35_N14
\Mux12~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux12~1_combout\ = (\RA[0]~input_o\ & ((\Mux12~0_combout\ & (\R3[3]~reg0_q\)) # (!\Mux12~0_combout\ & ((\R1[3]~reg0_q\))))) # (!\RA[0]~input_o\ & (((\Mux12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[0]~input_o\,
	datab => \R3[3]~reg0_q\,
	datac => \R1[3]~reg0_q\,
	datad => \Mux12~0_combout\,
	combout => \Mux12~1_combout\);

-- Location: FF_X29_Y35_N15
\X[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Mux12~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => X(3));

-- Location: LCCOMB_X29_Y35_N0
\Mux11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (\RA[0]~input_o\ & ((\RA[1]~input_o\) # ((\R1[4]~reg0_q\)))) # (!\RA[0]~input_o\ & (!\RA[1]~input_o\ & (\R0[4]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[0]~input_o\,
	datab => \RA[1]~input_o\,
	datac => \R0[4]~reg0_q\,
	datad => \R1[4]~reg0_q\,
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X29_Y35_N8
\Mux11~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux11~1_combout\ = (\RA[1]~input_o\ & ((\Mux11~0_combout\ & (\R3[4]~reg0_q\)) # (!\Mux11~0_combout\ & ((\R2[4]~reg0_q\))))) # (!\RA[1]~input_o\ & (((\Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R3[4]~reg0_q\,
	datab => \R2[4]~reg0_q\,
	datac => \RA[1]~input_o\,
	datad => \Mux11~0_combout\,
	combout => \Mux11~1_combout\);

-- Location: FF_X29_Y35_N9
\X[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Mux11~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => X(4));

-- Location: LCCOMB_X27_Y35_N28
\Mux10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (\RA[1]~input_o\ & ((\RA[0]~input_o\) # ((\R2[5]~reg0_q\)))) # (!\RA[1]~input_o\ & (!\RA[0]~input_o\ & (\R0[5]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[1]~input_o\,
	datab => \RA[0]~input_o\,
	datac => \R0[5]~reg0_q\,
	datad => \R2[5]~reg0_q\,
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X27_Y35_N0
\Mux10~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux10~1_combout\ = (\RA[0]~input_o\ & ((\Mux10~0_combout\ & (\R3[5]~reg0_q\)) # (!\Mux10~0_combout\ & ((\R1[5]~reg0_q\))))) # (!\RA[0]~input_o\ & (((\Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R3[5]~reg0_q\,
	datab => \RA[0]~input_o\,
	datac => \R1[5]~reg0_q\,
	datad => \Mux10~0_combout\,
	combout => \Mux10~1_combout\);

-- Location: FF_X27_Y35_N1
\X[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Mux10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => X(5));

-- Location: LCCOMB_X27_Y35_N18
\Mux9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (\RA[1]~input_o\ & (\RA[0]~input_o\)) # (!\RA[1]~input_o\ & ((\RA[0]~input_o\ & ((\R1[6]~reg0_q\))) # (!\RA[0]~input_o\ & (\R0[6]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[1]~input_o\,
	datab => \RA[0]~input_o\,
	datac => \R0[6]~reg0_q\,
	datad => \R1[6]~reg0_q\,
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X27_Y35_N22
\Mux9~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux9~1_combout\ = (\RA[1]~input_o\ & ((\Mux9~0_combout\ & (\R3[6]~reg0_q\)) # (!\Mux9~0_combout\ & ((\R2[6]~reg0_q\))))) # (!\RA[1]~input_o\ & (((\Mux9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[1]~input_o\,
	datab => \R3[6]~reg0_q\,
	datac => \R2[6]~reg0_q\,
	datad => \Mux9~0_combout\,
	combout => \Mux9~1_combout\);

-- Location: FF_X27_Y35_N23
\X[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Mux9~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => X(6));

-- Location: LCCOMB_X29_Y35_N2
\Mux8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (\RA[0]~input_o\ & (\RA[1]~input_o\)) # (!\RA[0]~input_o\ & ((\RA[1]~input_o\ & ((\R2[7]~reg0_q\))) # (!\RA[1]~input_o\ & (\R0[7]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[0]~input_o\,
	datab => \RA[1]~input_o\,
	datac => \R0[7]~reg0_q\,
	datad => \R2[7]~reg0_q\,
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X29_Y35_N30
\Mux8~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux8~1_combout\ = (\RA[0]~input_o\ & ((\Mux8~0_combout\ & ((\R3[7]~reg0_q\))) # (!\Mux8~0_combout\ & (\R1[7]~reg0_q\)))) # (!\RA[0]~input_o\ & (((\Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R1[7]~reg0_q\,
	datab => \RA[0]~input_o\,
	datac => \R3[7]~reg0_q\,
	datad => \Mux8~0_combout\,
	combout => \Mux8~1_combout\);

-- Location: FF_X29_Y35_N31
\X[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \Mux8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => X(7));

ww_R0(0) <= \R0[0]~output_o\;

ww_R0(1) <= \R0[1]~output_o\;

ww_R0(2) <= \R0[2]~output_o\;

ww_R0(3) <= \R0[3]~output_o\;

ww_R0(4) <= \R0[4]~output_o\;

ww_R0(5) <= \R0[5]~output_o\;

ww_R0(6) <= \R0[6]~output_o\;

ww_R0(7) <= \R0[7]~output_o\;

ww_R1(0) <= \R1[0]~output_o\;

ww_R1(1) <= \R1[1]~output_o\;

ww_R1(2) <= \R1[2]~output_o\;

ww_R1(3) <= \R1[3]~output_o\;

ww_R1(4) <= \R1[4]~output_o\;

ww_R1(5) <= \R1[5]~output_o\;

ww_R1(6) <= \R1[6]~output_o\;

ww_R1(7) <= \R1[7]~output_o\;

ww_R2(0) <= \R2[0]~output_o\;

ww_R2(1) <= \R2[1]~output_o\;

ww_R2(2) <= \R2[2]~output_o\;

ww_R2(3) <= \R2[3]~output_o\;

ww_R2(4) <= \R2[4]~output_o\;

ww_R2(5) <= \R2[5]~output_o\;

ww_R2(6) <= \R2[6]~output_o\;

ww_R2(7) <= \R2[7]~output_o\;

ww_R3(0) <= \R3[0]~output_o\;

ww_R3(1) <= \R3[1]~output_o\;

ww_R3(2) <= \R3[2]~output_o\;

ww_R3(3) <= \R3[3]~output_o\;

ww_R3(4) <= \R3[4]~output_o\;

ww_R3(5) <= \R3[5]~output_o\;

ww_R3(6) <= \R3[6]~output_o\;

ww_R3(7) <= \R3[7]~output_o\;

ww_PC(0) <= \PC[0]~output_o\;

ww_PC(1) <= \PC[1]~output_o\;

ww_PC(2) <= \PC[2]~output_o\;

ww_PC(3) <= \PC[3]~output_o\;

ww_PC(4) <= \PC[4]~output_o\;

ww_PC(5) <= \PC[5]~output_o\;

ww_PC(6) <= \PC[6]~output_o\;

ww_PC(7) <= \PC[7]~output_o\;

ww_N(0) <= \N[0]~output_o\;

ww_N(1) <= \N[1]~output_o\;

ww_N(2) <= \N[2]~output_o\;

ww_N(3) <= \N[3]~output_o\;

ww_N(4) <= \N[4]~output_o\;

ww_N(5) <= \N[5]~output_o\;

ww_N(6) <= \N[6]~output_o\;

ww_N(7) <= \N[7]~output_o\;

ww_N(8) <= \N[8]~output_o\;

ww_N(9) <= \N[9]~output_o\;

ww_N(10) <= \N[10]~output_o\;

ww_N(11) <= \N[11]~output_o\;

ww_N(12) <= \N[12]~output_o\;

ww_N(13) <= \N[13]~output_o\;

ww_N(14) <= \N[14]~output_o\;

ww_N(15) <= \N[15]~output_o\;

ww_N(16) <= \N[16]~output_o\;

ww_N(17) <= \N[17]~output_o\;

ww_N(18) <= \N[18]~output_o\;

ww_N(19) <= \N[19]~output_o\;

ww_N(20) <= \N[20]~output_o\;

ww_N(21) <= \N[21]~output_o\;

ww_N(22) <= \N[22]~output_o\;

ww_N(23) <= \N[23]~output_o\;

ww_N(24) <= \N[24]~output_o\;

ww_N(25) <= \N[25]~output_o\;

ww_N(26) <= \N[26]~output_o\;

ww_N(27) <= \N[27]~output_o\;

ww_N(28) <= \N[28]~output_o\;

ww_N(29) <= \N[29]~output_o\;

ww_N(30) <= \N[30]~output_o\;

ww_N(31) <= \N[31]~output_o\;

ww_codeout(0) <= \codeout[0]~output_o\;

ww_codeout(1) <= \codeout[1]~output_o\;

ww_codeout(2) <= \codeout[2]~output_o\;

ww_codeout(3) <= \codeout[3]~output_o\;

ww_codeout(4) <= \codeout[4]~output_o\;

ww_codeout(5) <= \codeout[5]~output_o\;

ww_codeout(6) <= \codeout[6]~output_o\;

ww_codeout(7) <= \codeout[7]~output_o\;
END structure;


