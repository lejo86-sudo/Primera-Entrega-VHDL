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
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "09/20/2026 18:39:12"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
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

ENTITY 	SystemAlfa IS
    PORT (
	Clock : IN std_logic;
	Reset : IN std_logic;
	SW_Modo : IN std_logic_vector(1 DOWNTO 0);
	SW_Color : IN std_logic_vector(1 DOWNTO 0);
	SW_Tamano : IN std_logic;
	BTN_Contar : IN std_logic;
	SW_Vista : IN std_logic_vector(1 DOWNTO 0);
	HEX0 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX1 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX2 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX3 : BUFFER std_logic_vector(6 DOWNTO 0);
	DP0 : BUFFER std_logic;
	DP1 : BUFFER std_logic;
	DP2 : BUFFER std_logic;
	DP3 : BUFFER std_logic;
	LEDG : BUFFER std_logic_vector(9 DOWNTO 0);
	BTN_FrecUp : IN std_logic;
	BTN_FrecDown : IN std_logic
	);
END SystemAlfa;

-- Design Ports Information
-- HEX0[0]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DP0	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DP1	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DP2	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DP3	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[0]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[1]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[2]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[3]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[4]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[5]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[6]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[7]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[8]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[9]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW_Modo[0]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW_Vista[0]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW_Vista[1]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW_Color[0]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW_Color[1]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW_Modo[1]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW_Tamano	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reset	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clock	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BTN_Contar	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BTN_FrecUp	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BTN_FrecDown	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF SystemAlfa IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Clock : std_logic;
SIGNAL ww_Reset : std_logic;
SIGNAL ww_SW_Modo : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_SW_Color : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_SW_Tamano : std_logic;
SIGNAL ww_BTN_Contar : std_logic;
SIGNAL ww_SW_Vista : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_DP0 : std_logic;
SIGNAL ww_DP1 : std_logic;
SIGNAL ww_DP2 : std_logic;
SIGNAL ww_DP3 : std_logic;
SIGNAL ww_LEDG : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_BTN_FrecUp : std_logic;
SIGNAL ww_BTN_FrecDown : std_logic;
SIGNAL \Clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \DP0~output_o\ : std_logic;
SIGNAL \DP1~output_o\ : std_logic;
SIGNAL \DP2~output_o\ : std_logic;
SIGNAL \DP3~output_o\ : std_logic;
SIGNAL \LEDG[0]~output_o\ : std_logic;
SIGNAL \LEDG[1]~output_o\ : std_logic;
SIGNAL \LEDG[2]~output_o\ : std_logic;
SIGNAL \LEDG[3]~output_o\ : std_logic;
SIGNAL \LEDG[4]~output_o\ : std_logic;
SIGNAL \LEDG[5]~output_o\ : std_logic;
SIGNAL \LEDG[6]~output_o\ : std_logic;
SIGNAL \LEDG[7]~output_o\ : std_logic;
SIGNAL \LEDG[8]~output_o\ : std_logic;
SIGNAL \LEDG[9]~output_o\ : std_logic;
SIGNAL \SW_Modo[0]~input_o\ : std_logic;
SIGNAL \SW_Modo[1]~input_o\ : std_logic;
SIGNAL \SW_Vista[0]~input_o\ : std_logic;
SIGNAL \SW_Vista[1]~input_o\ : std_logic;
SIGNAL \MODULO_VISTAS|mux_hex0~0_combout\ : std_logic;
SIGNAL \SW_Color[0]~input_o\ : std_logic;
SIGNAL \SW_Color[1]~input_o\ : std_logic;
SIGNAL \MODULO_VISTAS|Mux15~1_combout\ : std_logic;
SIGNAL \MODULO_VISTAS|Mux15~2_combout\ : std_logic;
SIGNAL \Clock~input_o\ : std_logic;
SIGNAL \Clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \Reset~input_o\ : std_logic;
SIGNAL \BTN_Contar~input_o\ : std_logic;
SIGNAL \BOTON_PIEZAS|sync[0]~0_combout\ : std_logic;
SIGNAL \MODULO_TIEMPOS|Add0~0_combout\ : std_logic;
SIGNAL \MODULO_TIEMPOS|div_10ms~3_combout\ : std_logic;
SIGNAL \MODULO_TIEMPOS|Add0~1\ : std_logic;
SIGNAL \MODULO_TIEMPOS|Add0~2_combout\ : std_logic;
SIGNAL \MODULO_TIEMPOS|Add0~3\ : std_logic;
SIGNAL \MODULO_TIEMPOS|Add0~4_combout\ : std_logic;
SIGNAL \MODULO_TIEMPOS|Add0~5\ : std_logic;
SIGNAL \MODULO_TIEMPOS|Add0~6_combout\ : std_logic;
SIGNAL \MODULO_TIEMPOS|Add0~7\ : std_logic;
SIGNAL \MODULO_TIEMPOS|Add0~8_combout\ : std_logic;
SIGNAL \MODULO_TIEMPOS|Add0~9\ : std_logic;
SIGNAL \MODULO_TIEMPOS|Add0~10_combout\ : std_logic;
SIGNAL \MODULO_TIEMPOS|div_10ms~4_combout\ : std_logic;
SIGNAL \MODULO_TIEMPOS|Add0~11\ : std_logic;
SIGNAL \MODULO_TIEMPOS|Add0~12_combout\ : std_logic;
SIGNAL \MODULO_TIEMPOS|Add0~13\ : std_logic;
SIGNAL \MODULO_TIEMPOS|Add0~14_combout\ : std_logic;
SIGNAL \MODULO_TIEMPOS|Add0~15\ : std_logic;
SIGNAL \MODULO_TIEMPOS|Add0~16_combout\ : std_logic;
SIGNAL \MODULO_TIEMPOS|div_10ms~5_combout\ : std_logic;
SIGNAL \MODULO_TIEMPOS|Add0~17\ : std_logic;
SIGNAL \MODULO_TIEMPOS|Add0~18_combout\ : std_logic;
SIGNAL \MODULO_TIEMPOS|Add0~19\ : std_logic;
SIGNAL \MODULO_TIEMPOS|Add0~20_combout\ : std_logic;
SIGNAL \MODULO_TIEMPOS|Add0~21\ : std_logic;
SIGNAL \MODULO_TIEMPOS|Add0~22_combout\ : std_logic;
SIGNAL \MODULO_TIEMPOS|Add0~23\ : std_logic;
SIGNAL \MODULO_TIEMPOS|Add0~24_combout\ : std_logic;
SIGNAL \MODULO_TIEMPOS|Add0~25\ : std_logic;
SIGNAL \MODULO_TIEMPOS|Add0~26_combout\ : std_logic;
SIGNAL \MODULO_TIEMPOS|div_10ms~6_combout\ : std_logic;
SIGNAL \MODULO_TIEMPOS|Add0~27\ : std_logic;
SIGNAL \MODULO_TIEMPOS|Add0~28_combout\ : std_logic;
SIGNAL \MODULO_TIEMPOS|Add0~29\ : std_logic;
SIGNAL \MODULO_TIEMPOS|Add0~30_combout\ : std_logic;
SIGNAL \MODULO_TIEMPOS|div_10ms~7_combout\ : std_logic;
SIGNAL \MODULO_TIEMPOS|Add0~31\ : std_logic;
SIGNAL \MODULO_TIEMPOS|Add0~32_combout\ : std_logic;
SIGNAL \MODULO_TIEMPOS|div_10ms~0_combout\ : std_logic;
SIGNAL \MODULO_TIEMPOS|Add0~33\ : std_logic;
SIGNAL \MODULO_TIEMPOS|Add0~34_combout\ : std_logic;
SIGNAL \MODULO_TIEMPOS|div_10ms~1_combout\ : std_logic;
SIGNAL \MODULO_TIEMPOS|Add0~35\ : std_logic;
SIGNAL \MODULO_TIEMPOS|Add0~36_combout\ : std_logic;
SIGNAL \MODULO_TIEMPOS|div_10ms~2_combout\ : std_logic;
SIGNAL \MODULO_TIEMPOS|Equal0~1_combout\ : std_logic;
SIGNAL \MODULO_TIEMPOS|Equal0~0_combout\ : std_logic;
SIGNAL \MODULO_TIEMPOS|Equal0~3_combout\ : std_logic;
SIGNAL \MODULO_TIEMPOS|Equal0~2_combout\ : std_logic;
SIGNAL \MODULO_TIEMPOS|Equal0~4_combout\ : std_logic;
SIGNAL \MODULO_TIEMPOS|Equal0~5_combout\ : std_logic;
SIGNAL \MODULO_TIEMPOS|t_10ms~feeder_combout\ : std_logic;
SIGNAL \MODULO_TIEMPOS|t_10ms~q\ : std_logic;
SIGNAL \BOTON_PIEZAS|stable~q\ : std_logic;
SIGNAL \BOTON_PIEZAS|last_stable~q\ : std_logic;
SIGNAL \MODULO_VISTAS|Mux1~0_combout\ : std_logic;
SIGNAL \MODULO_ENRUTADOR|pulse_tot~0_combout\ : std_logic;
SIGNAL \MODULO_VISTAS|Mux15~0_combout\ : std_logic;
SIGNAL \MODULO_VISTAS|Mux10~0_combout\ : std_logic;
SIGNAL \MODULO_VISTAS|Mux15~3_combout\ : std_logic;
SIGNAL \SW_Tamano~input_o\ : std_logic;
SIGNAL \MODULO_VISTAS|Mux18~2_combout\ : std_logic;
SIGNAL \MODULO_VISTAS|Mux18~4_combout\ : std_logic;
SIGNAL \MODULO_VISTAS|Mux18~24_combout\ : std_logic;
SIGNAL \BANCO_VERDE|C_P|CNT_int[0]~3_combout\ : std_logic;
SIGNAL \MODULO_LEDS|LEDG[4]~24_combout\ : std_logic;
SIGNAL \BANCO_VERDE|p_tot~0_combout\ : std_logic;
SIGNAL \BANCO_VERDE|p_peq~0_combout\ : std_logic;
SIGNAL \BANCO_VERDE|C_P|CNT_int[2]~1_combout\ : std_logic;
SIGNAL \BANCO_VERDE|C_P|CNT_int~2_combout\ : std_logic;
SIGNAL \BANCO_VERDE|C_P|CNT_int~0_combout\ : std_logic;
SIGNAL \MODULO_VISTAS|Mux18~3_combout\ : std_logic;
SIGNAL \MODULO_VISTAS|Mux18~5_combout\ : std_logic;
SIGNAL \BANCO_ROJO|C_P|CNT_int[0]~3_combout\ : std_logic;
SIGNAL \MODULO_LEDS|LEDG[2]~26_combout\ : std_logic;
SIGNAL \BANCO_ROJO|p_tot~0_combout\ : std_logic;
SIGNAL \BANCO_ROJO|p_peq~0_combout\ : std_logic;
SIGNAL \BANCO_ROJO|C_P|CNT_int[2]~1_combout\ : std_logic;
SIGNAL \BANCO_ROJO|C_P|CNT_int~2_combout\ : std_logic;
SIGNAL \BANCO_ROJO|C_P|CNT_int~0_combout\ : std_logic;
SIGNAL \BANCO_ROJO|R_P|Reg_Out[1]~feeder_combout\ : std_logic;
SIGNAL \BANCO_VERDE|C_G|CNT_int[0]~3_combout\ : std_logic;
SIGNAL \BANCO_VERDE|p_gra~0_combout\ : std_logic;
SIGNAL \BANCO_VERDE|C_G|CNT_int[2]~1_combout\ : std_logic;
SIGNAL \BANCO_VERDE|C_G|CNT_int~2_combout\ : std_logic;
SIGNAL \BANCO_VERDE|C_G|CNT_int~0_combout\ : std_logic;
SIGNAL \BANCO_ROJO|C_G|CNT_int[0]~3_combout\ : std_logic;
SIGNAL \BANCO_ROJO|p_gra~0_combout\ : std_logic;
SIGNAL \BANCO_ROJO|C_G|CNT_int[2]~1_combout\ : std_logic;
SIGNAL \BANCO_ROJO|C_G|CNT_int~2_combout\ : std_logic;
SIGNAL \BANCO_ROJO|C_G|CNT_int~0_combout\ : std_logic;
SIGNAL \BANCO_ROJO|R_G|Reg_Out[1]~feeder_combout\ : std_logic;
SIGNAL \MODULO_VISTAS|Mux18~6_combout\ : std_logic;
SIGNAL \MODULO_VISTAS|Mux18~7_combout\ : std_logic;
SIGNAL \MODULO_VISTAS|Equal6~0_combout\ : std_logic;
SIGNAL \MODULO_VISTAS|Mux18~9_combout\ : std_logic;
SIGNAL \MODULO_VISTAS|Mux18~8_combout\ : std_logic;
SIGNAL \C_TT_U|CNT_int[0]~3_combout\ : std_logic;
SIGNAL \C_TT_U|CNT_int[2]~1_combout\ : std_logic;
SIGNAL \C_TT_U|CNT_int~2_combout\ : std_logic;
SIGNAL \C_TT_U|CNT_int~0_combout\ : std_logic;
SIGNAL \MODULO_VISTAS|Mux18~11_combout\ : std_logic;
SIGNAL \BANCO_AZUL|C_T|CNT_int[0]~3_combout\ : std_logic;
SIGNAL \MODULO_ENRUTADOR|Equal1~0_combout\ : std_logic;
SIGNAL \BANCO_AZUL|p_tot~0_combout\ : std_logic;
SIGNAL \BANCO_AZUL|C_T|CNT_int[2]~1_combout\ : std_logic;
SIGNAL \BANCO_AZUL|C_T|CNT_int~2_combout\ : std_logic;
SIGNAL \BANCO_AZUL|C_T|CNT_int~0_combout\ : std_logic;
SIGNAL \BANCO_VERDE|C_T|CNT_int[0]~3_combout\ : std_logic;
SIGNAL \BANCO_VERDE|C_T|CNT_int[2]~1_combout\ : std_logic;
SIGNAL \BANCO_VERDE|C_T|CNT_int~2_combout\ : std_logic;
SIGNAL \BANCO_VERDE|C_T|CNT_int~0_combout\ : std_logic;
SIGNAL \MODULO_VISTAS|Mux18~10_combout\ : std_logic;
SIGNAL \MODULO_VISTAS|Mux18~12_combout\ : std_logic;
SIGNAL \MODULO_VISTAS|Mux18~13_combout\ : std_logic;
SIGNAL \BANCO_AZUL|C_G|CNT_int[0]~3_combout\ : std_logic;
SIGNAL \BANCO_AZUL|p_gra~0_combout\ : std_logic;
SIGNAL \BANCO_AZUL|C_G|CNT_int[2]~1_combout\ : std_logic;
SIGNAL \BANCO_AZUL|C_G|CNT_int~2_combout\ : std_logic;
SIGNAL \BANCO_AZUL|C_G|CNT_int~0_combout\ : std_logic;
SIGNAL \MODULO_VISTAS|Mux18~14_combout\ : std_logic;
SIGNAL \MODULO_VISTAS|Mux18~15_combout\ : std_logic;
SIGNAL \MODULO_VISTAS|Mux18~16_combout\ : std_logic;
SIGNAL \BANCO_ROJO|C_T|CNT_int[0]~3_combout\ : std_logic;
SIGNAL \BANCO_ROJO|C_T|CNT_int[2]~1_combout\ : std_logic;
SIGNAL \BANCO_ROJO|C_T|CNT_int~2_combout\ : std_logic;
SIGNAL \BANCO_ROJO|C_T|CNT_int~0_combout\ : std_logic;
SIGNAL \MODULO_VISTAS|Mux18~17_combout\ : std_logic;
SIGNAL \MODULO_VISTAS|Mux18~18_combout\ : std_logic;
SIGNAL \BANCO_AZUL|p_peq~0_combout\ : std_logic;
SIGNAL \BANCO_AZUL|C_P|CNT_int[0]~3_combout\ : std_logic;
SIGNAL \BANCO_AZUL|C_P|CNT_int[2]~1_combout\ : std_logic;
SIGNAL \BANCO_AZUL|C_P|CNT_int~2_combout\ : std_logic;
SIGNAL \BANCO_AZUL|C_P|CNT_int~0_combout\ : std_logic;
SIGNAL \MODULO_VISTAS|Mux18~19_combout\ : std_logic;
SIGNAL \MODULO_VISTAS|Mux18~20_combout\ : std_logic;
SIGNAL \MODULO_VISTAS|Mux18~21_combout\ : std_logic;
SIGNAL \MODULO_VISTAS|Mux18~22_combout\ : std_logic;
SIGNAL \MODULO_VISTAS|Mux18~23_combout\ : std_logic;
SIGNAL \MODULO_VISTAS|Mux16~5_combout\ : std_logic;
SIGNAL \MODULO_VISTAS|Mux16~2_combout\ : std_logic;
SIGNAL \MODULO_VISTAS|Mux16~3_combout\ : std_logic;
SIGNAL \MODULO_VISTAS|Mux16~4_combout\ : std_logic;
SIGNAL \MODULO_VISTAS|Mux16~6_combout\ : std_logic;
SIGNAL \MODULO_VISTAS|Mux16~10_combout\ : std_logic;
SIGNAL \MODULO_VISTAS|Mux16~7_combout\ : std_logic;
SIGNAL \MODULO_VISTAS|Mux16~8_combout\ : std_logic;
SIGNAL \BANCO_ROJO|R_P|Reg_Out[2]~feeder_combout\ : std_logic;
SIGNAL \MODULO_VISTAS|Mux17~6_combout\ : std_logic;
SIGNAL \BANCO_AZUL|R_T|Reg_Out[2]~feeder_combout\ : std_logic;
SIGNAL \MODULO_VISTAS|Mux17~0_combout\ : std_logic;
SIGNAL \MODULO_VISTAS|Mux17~1_combout\ : std_logic;
SIGNAL \MODULO_VISTAS|Mux17~2_combout\ : std_logic;
SIGNAL \MODULO_VISTAS|Mux17~3_combout\ : std_logic;
SIGNAL \MODULO_VISTAS|Mux17~4_combout\ : std_logic;
SIGNAL \MODULO_VISTAS|Mux17~5_combout\ : std_logic;
SIGNAL \MODULO_VISTAS|Mux17~7_combout\ : std_logic;
SIGNAL \MODULO_VISTAS|Mux17~8_combout\ : std_logic;
SIGNAL \DECO_0|Mux6~1_combout\ : std_logic;
SIGNAL \MODULO_VISTAS|Mux16~9_combout\ : std_logic;
SIGNAL \BANCO_ROJO|R_G|Reg_Out[0]~feeder_combout\ : std_logic;
SIGNAL \MODULO_VISTAS|Mux19~4_combout\ : std_logic;
SIGNAL \MODULO_VISTAS|Mux19~5_combout\ : std_logic;
SIGNAL \BANCO_VERDE|R_T|Reg_Out[0]~feeder_combout\ : std_logic;
SIGNAL \MODULO_VISTAS|Mux19~3_combout\ : std_logic;
SIGNAL \MODULO_VISTAS|Mux19~6_combout\ : std_logic;
SIGNAL \R_TT_U|Reg_Out[0]~feeder_combout\ : std_logic;
SIGNAL \BANCO_ROJO|R_P|Reg_Out[0]~feeder_combout\ : std_logic;
SIGNAL \MODULO_VISTAS|Mux19~0_combout\ : std_logic;
SIGNAL \MODULO_VISTAS|Mux19~1_combout\ : std_logic;
SIGNAL \MODULO_VISTAS|Mux19~2_combout\ : std_logic;
SIGNAL \MODULO_VISTAS|Mux19~7_combout\ : std_logic;
SIGNAL \MODULO_ENRUTADOR|last_size_reg~q\ : std_logic;
SIGNAL \MODULO_VISTAS|Mux19~8_combout\ : std_logic;
SIGNAL \MODULO_VISTAS|Mux19~9_combout\ : std_logic;
SIGNAL \MODULO_VISTAS|Mux19~10_combout\ : std_logic;
SIGNAL \MODULO_VISTAS|Mux19~11_combout\ : std_logic;
SIGNAL \MODULO_VISTAS|Mux19~12_combout\ : std_logic;
SIGNAL \MODULO_VISTAS|Mux19~13_combout\ : std_logic;
SIGNAL \MODULO_VISTAS|Mux19~14_combout\ : std_logic;
SIGNAL \DECO_0|Mux6~0_combout\ : std_logic;
SIGNAL \DECO_0|Mux6~2_combout\ : std_logic;
SIGNAL \DECO_0|Mux5~0_combout\ : std_logic;
SIGNAL \DECO_0|Mux5~1_combout\ : std_logic;
SIGNAL \DECO_0|Mux5~2_combout\ : std_logic;
SIGNAL \DECO_0|Mux4~0_combout\ : std_logic;
SIGNAL \DECO_0|Mux4~1_combout\ : std_logic;
SIGNAL \DECO_0|Mux3~1_combout\ : std_logic;
SIGNAL \DECO_0|Mux3~0_combout\ : std_logic;
SIGNAL \DECO_0|Mux3~2_combout\ : std_logic;
SIGNAL \DECO_0|Mux2~0_combout\ : std_logic;
SIGNAL \DECO_0|Mux2~1_combout\ : std_logic;
SIGNAL \DECO_0|Mux1~0_combout\ : std_logic;
SIGNAL \DECO_0|Mux1~1_combout\ : std_logic;
SIGNAL \DECO_0|Mux0~3_combout\ : std_logic;
SIGNAL \DECO_0|Mux0~2_combout\ : std_logic;
SIGNAL \MODULO_VISTAS|Mux10~2_combout\ : std_logic;
SIGNAL \MODULO_VISTAS|Mux14~1_combout\ : std_logic;
SIGNAL \MODULO_VISTAS|Mux7~2_combout\ : std_logic;
SIGNAL \MODULO_VISTAS|Mux10~1_combout\ : std_logic;
SIGNAL \MODULO_VISTAS|Mux10~3_combout\ : std_logic;
SIGNAL \MODULO_VISTAS|mux_hex3~0_combout\ : std_logic;
SIGNAL \C_TT_D|CNT_int[0]~3_combout\ : std_logic;
SIGNAL \C_TT_U|Equal0~0_combout\ : std_logic;
SIGNAL \MODULO_ENRUTADOR|pulse_tot_d~combout\ : std_logic;
SIGNAL \C_TT_D|CNT_int~2_combout\ : std_logic;
SIGNAL \C_TT_D|CNT_int~0_combout\ : std_logic;
SIGNAL \C_TT_D|CNT_int[2]~1_combout\ : std_logic;
SIGNAL \R_TT_D|Reg_Out[2]~feeder_combout\ : std_logic;
SIGNAL \MODULO_TIEMPOS|process_1~1_combout\ : std_logic;
SIGNAL \MODULO_TIEMPOS|c_t[0]~3_combout\ : std_logic;
SIGNAL \MODULO_TIEMPOS|Add1~0_combout\ : std_logic;
SIGNAL \MODULO_TIEMPOS|div_1hz~0_combout\ : std_logic;
SIGNAL \MODULO_TIEMPOS|Add1~1\ : std_logic;
SIGNAL \MODULO_TIEMPOS|Add1~2_combout\ : std_logic;
SIGNAL \MODULO_TIEMPOS|Add1~3\ : std_logic;
SIGNAL \MODULO_TIEMPOS|Add1~4_combout\ : std_logic;
SIGNAL \MODULO_TIEMPOS|Add1~5\ : std_logic;
SIGNAL \MODULO_TIEMPOS|Add1~6_combout\ : std_logic;
SIGNAL \MODULO_TIEMPOS|Add1~7\ : std_logic;
SIGNAL \MODULO_TIEMPOS|Add1~8_combout\ : std_logic;
SIGNAL \MODULO_TIEMPOS|Add1~9\ : std_logic;
SIGNAL \MODULO_TIEMPOS|Add1~10_combout\ : std_logic;
SIGNAL \MODULO_TIEMPOS|Add1~11\ : std_logic;
SIGNAL \MODULO_TIEMPOS|Add1~12_combout\ : std_logic;
SIGNAL \MODULO_TIEMPOS|Add1~13\ : std_logic;
SIGNAL \MODULO_TIEMPOS|Add1~14_combout\ : std_logic;
SIGNAL \MODULO_TIEMPOS|div_1hz~1_combout\ : std_logic;
SIGNAL \MODULO_TIEMPOS|Add1~15\ : std_logic;
SIGNAL \MODULO_TIEMPOS|Add1~16_combout\ : std_logic;
SIGNAL \MODULO_TIEMPOS|Add1~17\ : std_logic;
SIGNAL \MODULO_TIEMPOS|Add1~18_combout\ : std_logic;
SIGNAL \MODULO_TIEMPOS|Add1~19\ : std_logic;
SIGNAL \MODULO_TIEMPOS|Add1~20_combout\ : std_logic;
SIGNAL \MODULO_TIEMPOS|Add1~21\ : std_logic;
SIGNAL \MODULO_TIEMPOS|Add1~22_combout\ : std_logic;
SIGNAL \MODULO_TIEMPOS|Add1~23\ : std_logic;
SIGNAL \MODULO_TIEMPOS|Add1~24_combout\ : std_logic;
SIGNAL \MODULO_TIEMPOS|div_1hz~2_combout\ : std_logic;
SIGNAL \MODULO_TIEMPOS|Add1~25\ : std_logic;
SIGNAL \MODULO_TIEMPOS|Add1~26_combout\ : std_logic;
SIGNAL \MODULO_TIEMPOS|div_1hz~3_combout\ : std_logic;
SIGNAL \MODULO_TIEMPOS|Add1~27\ : std_logic;
SIGNAL \MODULO_TIEMPOS|Add1~28_combout\ : std_logic;
SIGNAL \MODULO_TIEMPOS|div_1hz~4_combout\ : std_logic;
SIGNAL \MODULO_TIEMPOS|Add1~29\ : std_logic;
SIGNAL \MODULO_TIEMPOS|Add1~30_combout\ : std_logic;
SIGNAL \MODULO_TIEMPOS|div_1hz~5_combout\ : std_logic;
SIGNAL \MODULO_TIEMPOS|Add1~31\ : std_logic;
SIGNAL \MODULO_TIEMPOS|Add1~32_combout\ : std_logic;
SIGNAL \MODULO_TIEMPOS|Add1~33\ : std_logic;
SIGNAL \MODULO_TIEMPOS|Add1~34_combout\ : std_logic;
SIGNAL \MODULO_TIEMPOS|div_1hz~6_combout\ : std_logic;
SIGNAL \MODULO_TIEMPOS|Add1~35\ : std_logic;
SIGNAL \MODULO_TIEMPOS|Add1~36_combout\ : std_logic;
SIGNAL \MODULO_TIEMPOS|Add1~37\ : std_logic;
SIGNAL \MODULO_TIEMPOS|Add1~38_combout\ : std_logic;
SIGNAL \MODULO_TIEMPOS|div_1hz~7_combout\ : std_logic;
SIGNAL \MODULO_TIEMPOS|Add1~39\ : std_logic;
SIGNAL \MODULO_TIEMPOS|Add1~40_combout\ : std_logic;
SIGNAL \MODULO_TIEMPOS|div_1hz~8_combout\ : std_logic;
SIGNAL \MODULO_TIEMPOS|Add1~41\ : std_logic;
SIGNAL \MODULO_TIEMPOS|Add1~42_combout\ : std_logic;
SIGNAL \MODULO_TIEMPOS|div_1hz~9_combout\ : std_logic;
SIGNAL \MODULO_TIEMPOS|Add1~43\ : std_logic;
SIGNAL \MODULO_TIEMPOS|Add1~44_combout\ : std_logic;
SIGNAL \MODULO_TIEMPOS|div_1hz~10_combout\ : std_logic;
SIGNAL \MODULO_TIEMPOS|Add1~45\ : std_logic;
SIGNAL \MODULO_TIEMPOS|Add1~46_combout\ : std_logic;
SIGNAL \MODULO_TIEMPOS|div_1hz~11_combout\ : std_logic;
SIGNAL \MODULO_TIEMPOS|Equal1~6_combout\ : std_logic;
SIGNAL \MODULO_TIEMPOS|Add1~47\ : std_logic;
SIGNAL \MODULO_TIEMPOS|Add1~48_combout\ : std_logic;
SIGNAL \MODULO_TIEMPOS|Add1~49\ : std_logic;
SIGNAL \MODULO_TIEMPOS|Add1~50_combout\ : std_logic;
SIGNAL \MODULO_TIEMPOS|div_1hz~12_combout\ : std_logic;
SIGNAL \MODULO_TIEMPOS|Equal1~7_combout\ : std_logic;
SIGNAL \MODULO_TIEMPOS|Equal1~5_combout\ : std_logic;
SIGNAL \MODULO_TIEMPOS|Equal1~3_combout\ : std_logic;
SIGNAL \MODULO_TIEMPOS|Equal1~2_combout\ : std_logic;
SIGNAL \MODULO_TIEMPOS|Equal1~1_combout\ : std_logic;
SIGNAL \MODULO_TIEMPOS|Equal1~0_combout\ : std_logic;
SIGNAL \MODULO_TIEMPOS|Equal1~4_combout\ : std_logic;
SIGNAL \MODULO_TIEMPOS|Equal1~8_combout\ : std_logic;
SIGNAL \MODULO_TIEMPOS|tick_1hz~feeder_combout\ : std_logic;
SIGNAL \MODULO_TIEMPOS|tick_1hz~q\ : std_logic;
SIGNAL \MODULO_TIEMPOS|c_c~3_combout\ : std_logic;
SIGNAL \MODULO_TIEMPOS|c_t[2]~1_combout\ : std_logic;
SIGNAL \MODULO_TIEMPOS|c_t~2_combout\ : std_logic;
SIGNAL \MODULO_TIEMPOS|c_t~0_combout\ : std_logic;
SIGNAL \MODULO_TIEMPOS|c_u[3]~0_combout\ : std_logic;
SIGNAL \MODULO_TIEMPOS|Equal6~0_combout\ : std_logic;
SIGNAL \MODULO_TIEMPOS|c_c~2_combout\ : std_logic;
SIGNAL \MODULO_TIEMPOS|c_c~q\ : std_logic;
SIGNAL \MODULO_TIEMPOS|process_1~0_combout\ : std_logic;
SIGNAL \MODULO_TIEMPOS|c_u[3]~1_combout\ : std_logic;
SIGNAL \MODULO_TIEMPOS|c_u[0]~2_combout\ : std_logic;
SIGNAL \MODULO_TIEMPOS|Add3~0_combout\ : std_logic;
SIGNAL \MODULO_TIEMPOS|c_u[3]~5_combout\ : std_logic;
SIGNAL \MODULO_TIEMPOS|Equal5~0_combout\ : std_logic;
SIGNAL \MODULO_TIEMPOS|c_u[1]~3_combout\ : std_logic;
SIGNAL \MODULO_TIEMPOS|c_u[2]~4_combout\ : std_logic;
SIGNAL \MODULO_VISTAS|Mux12~4_combout\ : std_logic;
SIGNAL \MODULO_VISTAS|Mux12~5_combout\ : std_logic;
SIGNAL \MODULO_VISTAS|Mux12~6_combout\ : std_logic;
SIGNAL \MODULO_VISTAS|Mux12~7_combout\ : std_logic;
SIGNAL \MODULO_VISTAS|Mux13~1_combout\ : std_logic;
SIGNAL \MODULO_VISTAS|Mux13~0_combout\ : std_logic;
SIGNAL \MODULO_VISTAS|Mux13~2_combout\ : std_logic;
SIGNAL \MODULO_VISTAS|Mux14~3_combout\ : std_logic;
SIGNAL \MODULO_VISTAS|Mux14~0_combout\ : std_logic;
SIGNAL \MODULO_VISTAS|Mux14~2_combout\ : std_logic;
SIGNAL \MODULO_VISTAS|Mux14~4_combout\ : std_logic;
SIGNAL \MODULO_VISTAS|Mux14~5_combout\ : std_logic;
SIGNAL \MODULO_VISTAS|Mux11~1_combout\ : std_logic;
SIGNAL \MODULO_VISTAS|Mux11~0_combout\ : std_logic;
SIGNAL \MODULO_VISTAS|Mux11~2_combout\ : std_logic;
SIGNAL \DECO_1|Mux6~0_combout\ : std_logic;
SIGNAL \MODULO_LEDS|LEDG[9]~25_combout\ : std_logic;
SIGNAL \DECO_1|Mux6~1_combout\ : std_logic;
SIGNAL \DECO_1|Mux6~2_combout\ : std_logic;
SIGNAL \DECO_1|Mux5~1_combout\ : std_logic;
SIGNAL \DECO_1|Mux5~0_combout\ : std_logic;
SIGNAL \DECO_1|Mux5~2_combout\ : std_logic;
SIGNAL \DECO_1|Mux4~0_combout\ : std_logic;
SIGNAL \DECO_1|Mux4~1_combout\ : std_logic;
SIGNAL \DECO_1|Mux3~1_combout\ : std_logic;
SIGNAL \DECO_1|Mux3~0_combout\ : std_logic;
SIGNAL \DECO_1|Mux3~2_combout\ : std_logic;
SIGNAL \DECO_1|Mux2~0_combout\ : std_logic;
SIGNAL \DECO_1|Mux2~1_combout\ : std_logic;
SIGNAL \DECO_1|Mux1~0_combout\ : std_logic;
SIGNAL \DECO_1|Mux1~1_combout\ : std_logic;
SIGNAL \DECO_1|Mux0~0_combout\ : std_logic;
SIGNAL \DECO_1|Mux0~1_combout\ : std_logic;
SIGNAL \MODULO_VISTAS|Mux5~0_combout\ : std_logic;
SIGNAL \MODULO_VISTAS|Mux6~6_combout\ : std_logic;
SIGNAL \MODULO_VISTAS|Mux6~2_combout\ : std_logic;
SIGNAL \MODULO_VISTAS|Mux6~3_combout\ : std_logic;
SIGNAL \MODULO_VISTAS|Mux6~4_combout\ : std_logic;
SIGNAL \MODULO_VISTAS|Mux6~5_combout\ : std_logic;
SIGNAL \MODULO_VISTAS|Mux7~6_combout\ : std_logic;
SIGNAL \MODULO_VISTAS|Mux7~3_combout\ : std_logic;
SIGNAL \MODULO_VISTAS|Mux7~4_combout\ : std_logic;
SIGNAL \MODULO_VISTAS|Mux7~5_combout\ : std_logic;
SIGNAL \DECO_2|Mux6~1_combout\ : std_logic;
SIGNAL \MODULO_VISTAS|Mux8~4_combout\ : std_logic;
SIGNAL \MODULO_VISTAS|Mux8~5_combout\ : std_logic;
SIGNAL \MODULO_VISTAS|Mux8~3_combout\ : std_logic;
SIGNAL \MODULO_VISTAS|Mux8~6_combout\ : std_logic;
SIGNAL \MODULO_VISTAS|Mux9~1_combout\ : std_logic;
SIGNAL \MODULO_VISTAS|Mux9~0_combout\ : std_logic;
SIGNAL \MODULO_VISTAS|Mux9~2_combout\ : std_logic;
SIGNAL \MODULO_VISTAS|Mux9~3_combout\ : std_logic;
SIGNAL \MODULO_VISTAS|Mux9~4_combout\ : std_logic;
SIGNAL \DECO_2|Mux6~0_combout\ : std_logic;
SIGNAL \DECO_2|Mux6~2_combout\ : std_logic;
SIGNAL \DECO_2|Mux5~1_combout\ : std_logic;
SIGNAL \DECO_2|Mux5~0_combout\ : std_logic;
SIGNAL \DECO_2|Mux5~2_combout\ : std_logic;
SIGNAL \DECO_2|Mux4~0_combout\ : std_logic;
SIGNAL \DECO_2|Mux4~1_combout\ : std_logic;
SIGNAL \DECO_2|Mux3~1_combout\ : std_logic;
SIGNAL \DECO_2|Mux3~0_combout\ : std_logic;
SIGNAL \DECO_2|Mux3~2_combout\ : std_logic;
SIGNAL \DECO_2|Mux2~0_combout\ : std_logic;
SIGNAL \DECO_2|Mux2~1_combout\ : std_logic;
SIGNAL \DECO_2|Mux1~0_combout\ : std_logic;
SIGNAL \DECO_2|Mux1~1_combout\ : std_logic;
SIGNAL \DECO_2|Mux0~0_combout\ : std_logic;
SIGNAL \DECO_2|Mux0~1_combout\ : std_logic;
SIGNAL \MODULO_FRECUENCIA|C_FR|CNT_int[0]~3_combout\ : std_logic;
SIGNAL \MODULO_VISTAS|Mux19~15_combout\ : std_logic;
SIGNAL \MODULO_FRECUENCIA|DIV_FREC|count1[0]~26_combout\ : std_logic;
SIGNAL \BTN_FrecDown~input_o\ : std_logic;
SIGNAL \BOTON_MENOS|sync[0]~0_combout\ : std_logic;
SIGNAL \BOTON_MENOS|sync[1]~feeder_combout\ : std_logic;
SIGNAL \BOTON_MENOS|stable~q\ : std_logic;
SIGNAL \BOTON_MENOS|last_stable~q\ : std_logic;
SIGNAL \MODULO_FRECUENCIA|DIV_FREC|Mux6~0_combout\ : std_logic;
SIGNAL \BTN_FrecUp~input_o\ : std_logic;
SIGNAL \BOTON_MAS|sync[0]~0_combout\ : std_logic;
SIGNAL \BOTON_MAS|sync[1]~feeder_combout\ : std_logic;
SIGNAL \BOTON_MAS|stable~feeder_combout\ : std_logic;
SIGNAL \BOTON_MAS|stable~q\ : std_logic;
SIGNAL \BOTON_MAS|last_stable~q\ : std_logic;
SIGNAL \MODULO_FRECUENCIA|process_0~0_combout\ : std_logic;
SIGNAL \MODULO_FRECUENCIA|vel_state[0]~1_combout\ : std_logic;
SIGNAL \MODULO_FRECUENCIA|DIV_FREC|Mux2~0_combout\ : std_logic;
SIGNAL \MODULO_FRECUENCIA|vel_state[0]~0_combout\ : std_logic;
SIGNAL \MODULO_FRECUENCIA|vel_state[1]~2_combout\ : std_logic;
SIGNAL \MODULO_FRECUENCIA|DIV_FREC|LessThan0~0_combout\ : std_logic;
SIGNAL \MODULO_FRECUENCIA|DIV_FREC|LessThan0~23_combout\ : std_logic;
SIGNAL \MODULO_FRECUENCIA|DIV_FREC|LessThan0~20_combout\ : std_logic;
SIGNAL \MODULO_FRECUENCIA|DIV_FREC|LessThan0~1_combout\ : std_logic;
SIGNAL \MODULO_FRECUENCIA|DIV_FREC|LessThan0~2_combout\ : std_logic;
SIGNAL \MODULO_FRECUENCIA|DIV_FREC|LessThan0~17_combout\ : std_logic;
SIGNAL \MODULO_FRECUENCIA|DIV_FREC|LessThan0~18_combout\ : std_logic;
SIGNAL \MODULO_FRECUENCIA|DIV_FREC|LessThan0~3_combout\ : std_logic;
SIGNAL \MODULO_FRECUENCIA|DIV_FREC|LessThan0~4_combout\ : std_logic;
SIGNAL \MODULO_FRECUENCIA|DIV_FREC|LessThan0~14_combout\ : std_logic;
SIGNAL \MODULO_FRECUENCIA|DIV_FREC|LessThan0~12_combout\ : std_logic;
SIGNAL \MODULO_FRECUENCIA|DIV_FREC|LessThan0~8_combout\ : std_logic;
SIGNAL \MODULO_FRECUENCIA|DIV_FREC|LessThan0~6_combout\ : std_logic;
SIGNAL \MODULO_FRECUENCIA|DIV_FREC|LessThan0~7_combout\ : std_logic;
SIGNAL \MODULO_FRECUENCIA|DIV_FREC|LessThan0~5_combout\ : std_logic;
SIGNAL \MODULO_FRECUENCIA|DIV_FREC|LessThan0~9_combout\ : std_logic;
SIGNAL \MODULO_FRECUENCIA|DIV_FREC|LessThan0~10_combout\ : std_logic;
SIGNAL \MODULO_FRECUENCIA|DIV_FREC|LessThan0~11_combout\ : std_logic;
SIGNAL \MODULO_FRECUENCIA|DIV_FREC|LessThan0~13_combout\ : std_logic;
SIGNAL \MODULO_FRECUENCIA|DIV_FREC|LessThan0~15_combout\ : std_logic;
SIGNAL \MODULO_FRECUENCIA|DIV_FREC|LessThan0~16_combout\ : std_logic;
SIGNAL \MODULO_FRECUENCIA|DIV_FREC|LessThan0~19_combout\ : std_logic;
SIGNAL \MODULO_FRECUENCIA|DIV_FREC|LessThan0~21_combout\ : std_logic;
SIGNAL \MODULO_FRECUENCIA|DIV_FREC|LessThan0~24_combout\ : std_logic;
SIGNAL \MODULO_FRECUENCIA|DIV_FREC|LessThan0~25_combout\ : std_logic;
SIGNAL \MODULO_FRECUENCIA|DIV_FREC|count1[0]~27\ : std_logic;
SIGNAL \MODULO_FRECUENCIA|DIV_FREC|count1[1]~28_combout\ : std_logic;
SIGNAL \MODULO_FRECUENCIA|DIV_FREC|count1[1]~29\ : std_logic;
SIGNAL \MODULO_FRECUENCIA|DIV_FREC|count1[2]~30_combout\ : std_logic;
SIGNAL \MODULO_FRECUENCIA|DIV_FREC|count1[2]~31\ : std_logic;
SIGNAL \MODULO_FRECUENCIA|DIV_FREC|count1[3]~32_combout\ : std_logic;
SIGNAL \MODULO_FRECUENCIA|DIV_FREC|count1[3]~33\ : std_logic;
SIGNAL \MODULO_FRECUENCIA|DIV_FREC|count1[4]~34_combout\ : std_logic;
SIGNAL \MODULO_FRECUENCIA|DIV_FREC|count1[4]~35\ : std_logic;
SIGNAL \MODULO_FRECUENCIA|DIV_FREC|count1[5]~36_combout\ : std_logic;
SIGNAL \MODULO_FRECUENCIA|DIV_FREC|count1[5]~37\ : std_logic;
SIGNAL \MODULO_FRECUENCIA|DIV_FREC|count1[6]~38_combout\ : std_logic;
SIGNAL \MODULO_FRECUENCIA|DIV_FREC|count1[6]~39\ : std_logic;
SIGNAL \MODULO_FRECUENCIA|DIV_FREC|count1[7]~40_combout\ : std_logic;
SIGNAL \MODULO_FRECUENCIA|DIV_FREC|count1[7]~41\ : std_logic;
SIGNAL \MODULO_FRECUENCIA|DIV_FREC|count1[8]~42_combout\ : std_logic;
SIGNAL \MODULO_FRECUENCIA|DIV_FREC|count1[8]~43\ : std_logic;
SIGNAL \MODULO_FRECUENCIA|DIV_FREC|count1[9]~44_combout\ : std_logic;
SIGNAL \MODULO_FRECUENCIA|DIV_FREC|count1[9]~45\ : std_logic;
SIGNAL \MODULO_FRECUENCIA|DIV_FREC|count1[10]~46_combout\ : std_logic;
SIGNAL \MODULO_FRECUENCIA|DIV_FREC|count1[10]~47\ : std_logic;
SIGNAL \MODULO_FRECUENCIA|DIV_FREC|count1[11]~48_combout\ : std_logic;
SIGNAL \MODULO_FRECUENCIA|DIV_FREC|count1[11]~49\ : std_logic;
SIGNAL \MODULO_FRECUENCIA|DIV_FREC|count1[12]~50_combout\ : std_logic;
SIGNAL \MODULO_FRECUENCIA|DIV_FREC|count1[12]~51\ : std_logic;
SIGNAL \MODULO_FRECUENCIA|DIV_FREC|count1[13]~52_combout\ : std_logic;
SIGNAL \MODULO_FRECUENCIA|DIV_FREC|count1[13]~53\ : std_logic;
SIGNAL \MODULO_FRECUENCIA|DIV_FREC|count1[14]~54_combout\ : std_logic;
SIGNAL \MODULO_FRECUENCIA|DIV_FREC|count1[14]~55\ : std_logic;
SIGNAL \MODULO_FRECUENCIA|DIV_FREC|count1[15]~56_combout\ : std_logic;
SIGNAL \MODULO_FRECUENCIA|DIV_FREC|count1[15]~57\ : std_logic;
SIGNAL \MODULO_FRECUENCIA|DIV_FREC|count1[16]~58_combout\ : std_logic;
SIGNAL \MODULO_FRECUENCIA|DIV_FREC|count1[16]~59\ : std_logic;
SIGNAL \MODULO_FRECUENCIA|DIV_FREC|count1[17]~60_combout\ : std_logic;
SIGNAL \MODULO_FRECUENCIA|DIV_FREC|count1[17]~61\ : std_logic;
SIGNAL \MODULO_FRECUENCIA|DIV_FREC|count1[18]~62_combout\ : std_logic;
SIGNAL \MODULO_FRECUENCIA|DIV_FREC|count1[18]~63\ : std_logic;
SIGNAL \MODULO_FRECUENCIA|DIV_FREC|count1[19]~64_combout\ : std_logic;
SIGNAL \MODULO_FRECUENCIA|DIV_FREC|count1[19]~65\ : std_logic;
SIGNAL \MODULO_FRECUENCIA|DIV_FREC|count1[20]~66_combout\ : std_logic;
SIGNAL \MODULO_FRECUENCIA|DIV_FREC|count1[20]~67\ : std_logic;
SIGNAL \MODULO_FRECUENCIA|DIV_FREC|count1[21]~68_combout\ : std_logic;
SIGNAL \MODULO_FRECUENCIA|DIV_FREC|count1[21]~69\ : std_logic;
SIGNAL \MODULO_FRECUENCIA|DIV_FREC|count1[22]~70_combout\ : std_logic;
SIGNAL \MODULO_FRECUENCIA|DIV_FREC|count1[22]~71\ : std_logic;
SIGNAL \MODULO_FRECUENCIA|DIV_FREC|count1[23]~72_combout\ : std_logic;
SIGNAL \MODULO_FRECUENCIA|DIV_FREC|count1[23]~73\ : std_logic;
SIGNAL \MODULO_FRECUENCIA|DIV_FREC|count1[24]~74_combout\ : std_logic;
SIGNAL \MODULO_FRECUENCIA|DIV_FREC|count1[24]~75\ : std_logic;
SIGNAL \MODULO_FRECUENCIA|DIV_FREC|count1[25]~76_combout\ : std_logic;
SIGNAL \MODULO_FRECUENCIA|DIV_FREC|LessThan0~22_combout\ : std_logic;
SIGNAL \MODULO_FRECUENCIA|DIV_FREC|out1~0_combout\ : std_logic;
SIGNAL \MODULO_FRECUENCIA|DIV_FREC|out1~q\ : std_logic;
SIGNAL \MODULO_FRECUENCIA|frec_int_last~q\ : std_logic;
SIGNAL \MODULO_FRECUENCIA|pulse_frec~combout\ : std_logic;
SIGNAL \MODULO_FRECUENCIA|C_FR|CNT_int~0_combout\ : std_logic;
SIGNAL \MODULO_FRECUENCIA|C_FR|CNT_int[2]~1_combout\ : std_logic;
SIGNAL \MODULO_FRECUENCIA|C_FR|CNT_int~2_combout\ : std_logic;
SIGNAL \MODULO_VISTAS|Mux1~1_combout\ : std_logic;
SIGNAL \MODULO_VISTAS|Mux1~2_combout\ : std_logic;
SIGNAL \MODULO_VISTAS|Mux1~3_combout\ : std_logic;
SIGNAL \MODULO_VISTAS|Mux1~4_combout\ : std_logic;
SIGNAL \MODULO_VISTAS|Mux4~2_combout\ : std_logic;
SIGNAL \MODULO_VISTAS|Mux4~3_combout\ : std_logic;
SIGNAL \MODULO_VISTAS|Mux4~4_combout\ : std_logic;
SIGNAL \MODULO_VISTAS|Mux4~5_combout\ : std_logic;
SIGNAL \MODULO_VISTAS|Mux4~6_combout\ : std_logic;
SIGNAL \MODULO_VISTAS|Mux3~1_combout\ : std_logic;
SIGNAL \MODULO_VISTAS|Mux3~0_combout\ : std_logic;
SIGNAL \MODULO_VISTAS|Mux3~2_combout\ : std_logic;
SIGNAL \MODULO_VISTAS|Mux3~3_combout\ : std_logic;
SIGNAL \MODULO_VISTAS|Mux3~4_combout\ : std_logic;
SIGNAL \MODULO_VISTAS|Mux2~1_combout\ : std_logic;
SIGNAL \MODULO_VISTAS|Mux2~2_combout\ : std_logic;
SIGNAL \MODULO_VISTAS|Mux2~0_combout\ : std_logic;
SIGNAL \MODULO_VISTAS|Mux2~3_combout\ : std_logic;
SIGNAL \DECO_3|Mux6~0_combout\ : std_logic;
SIGNAL \DECO_3|Mux6~1_combout\ : std_logic;
SIGNAL \DECO_3|Mux6~2_combout\ : std_logic;
SIGNAL \DECO_3|Mux5~0_combout\ : std_logic;
SIGNAL \DECO_3|Mux5~1_combout\ : std_logic;
SIGNAL \DECO_3|Mux5~2_combout\ : std_logic;
SIGNAL \DECO_3|Mux4~0_combout\ : std_logic;
SIGNAL \DECO_3|Mux4~1_combout\ : std_logic;
SIGNAL \DECO_3|Mux3~0_combout\ : std_logic;
SIGNAL \DECO_3|Mux3~1_combout\ : std_logic;
SIGNAL \DECO_3|Mux3~2_combout\ : std_logic;
SIGNAL \DECO_3|Mux2~0_combout\ : std_logic;
SIGNAL \DECO_3|Mux2~1_combout\ : std_logic;
SIGNAL \DECO_3|Mux1~0_combout\ : std_logic;
SIGNAL \DECO_3|Mux1~1_combout\ : std_logic;
SIGNAL \DECO_3|Mux0~0_combout\ : std_logic;
SIGNAL \DECO_3|Mux0~1_combout\ : std_logic;
SIGNAL \MODULO_VISTAS|Mux23~0_combout\ : std_logic;
SIGNAL \MODULO_VISTAS|Mux22~0_combout\ : std_logic;
SIGNAL \MODULO_VISTAS|Mux21~6_combout\ : std_logic;
SIGNAL \MODULO_VISTAS|Mux20~6_combout\ : std_logic;
SIGNAL \MODULO_FRECUENCIA|pulse_frec~0_combout\ : std_logic;
SIGNAL \MODULO_LEDS|LEDG[1]~27_combout\ : std_logic;
SIGNAL \MODULO_LEDS|LEDG[2]~28_combout\ : std_logic;
SIGNAL \MODULO_VISTAS|Mux8~2_combout\ : std_logic;
SIGNAL \MODULO_LEDS|LEDG[3]~29_combout\ : std_logic;
SIGNAL \MODULO_LEDS|LEDG[4]~30_combout\ : std_logic;
SIGNAL \MODULO_LEDS|LEDG[5]~31_combout\ : std_logic;
SIGNAL \MODULO_LEDS|LEDG[6]~32_combout\ : std_logic;
SIGNAL \BOTON_MAS|sync\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \BOTON_MENOS|sync\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \BANCO_ROJO|C_P|CNT_int\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \BANCO_ROJO|R_P|Reg_Out\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \BANCO_ROJO|C_G|CNT_int\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \BANCO_ROJO|R_G|Reg_Out\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \BANCO_ROJO|C_T|CNT_int\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \BANCO_ROJO|R_T|Reg_Out\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \BANCO_VERDE|C_P|CNT_int\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \BANCO_VERDE|R_P|Reg_Out\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \BANCO_VERDE|C_G|CNT_int\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \BANCO_VERDE|R_G|Reg_Out\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \BANCO_VERDE|C_T|CNT_int\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \BANCO_VERDE|R_T|Reg_Out\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \BANCO_AZUL|C_P|CNT_int\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \BANCO_AZUL|R_P|Reg_Out\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \BANCO_AZUL|C_G|CNT_int\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \BANCO_AZUL|R_G|Reg_Out\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \BANCO_AZUL|C_T|CNT_int\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \BANCO_AZUL|R_T|Reg_Out\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MODULO_TIEMPOS|c_u\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \R_TT_D|Reg_Out\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MODULO_FRECUENCIA|R_FR|Reg_Out\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MODULO_ENRUTADOR|last_color_reg\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \C_TT_U|CNT_int\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MODULO_FRECUENCIA|vel_state\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \MODULO_TIEMPOS|c_t\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \C_TT_D|CNT_int\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \BOTON_PIEZAS|sync\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \MODULO_TIEMPOS|div_10ms\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \R_TT_U|Reg_Out\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MODULO_TIEMPOS|div_1hz\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \MODULO_FRECUENCIA|DIV_FREC|count1\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \MODULO_FRECUENCIA|C_FR|CNT_int\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MODULO_LEDS|ALT_INV_LEDG[1]~27_combout\ : std_logic;
SIGNAL \MODULO_LEDS|ALT_INV_LEDG[9]~25_combout\ : std_logic;

BEGIN

ww_Clock <= Clock;
ww_Reset <= Reset;
ww_SW_Modo <= SW_Modo;
ww_SW_Color <= SW_Color;
ww_SW_Tamano <= SW_Tamano;
ww_BTN_Contar <= BTN_Contar;
ww_SW_Vista <= SW_Vista;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
DP0 <= ww_DP0;
DP1 <= ww_DP1;
DP2 <= ww_DP2;
DP3 <= ww_DP3;
LEDG <= ww_LEDG;
ww_BTN_FrecUp <= BTN_FrecUp;
ww_BTN_FrecDown <= BTN_FrecDown;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clock~input_o\);
\MODULO_LEDS|ALT_INV_LEDG[1]~27_combout\ <= NOT \MODULO_LEDS|LEDG[1]~27_combout\;
\MODULO_LEDS|ALT_INV_LEDG[9]~25_combout\ <= NOT \MODULO_LEDS|LEDG[9]~25_combout\;

-- Location: IOOBUF_X21_Y29_N23
\HEX0[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DECO_0|Mux6~2_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X21_Y29_N30
\HEX0[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DECO_0|Mux5~2_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X26_Y29_N2
\HEX0[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DECO_0|Mux4~1_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X28_Y29_N30
\HEX0[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DECO_0|Mux3~2_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X26_Y29_N9
\HEX0[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DECO_0|Mux2~1_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X28_Y29_N23
\HEX0[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DECO_0|Mux1~1_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X26_Y29_N16
\HEX0[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DECO_0|Mux0~2_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X21_Y29_N2
\HEX1[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DECO_1|Mux6~2_combout\,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X21_Y29_N9
\HEX1[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DECO_1|Mux5~2_combout\,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X23_Y29_N2
\HEX1[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DECO_1|Mux4~1_combout\,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X23_Y29_N23
\HEX1[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DECO_1|Mux3~2_combout\,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X23_Y29_N30
\HEX1[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DECO_1|Mux2~1_combout\,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X28_Y29_N16
\HEX1[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DECO_1|Mux1~1_combout\,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X26_Y29_N23
\HEX1[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DECO_1|Mux0~1_combout\,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X32_Y29_N30
\HEX2[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DECO_2|Mux6~2_combout\,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

-- Location: IOOBUF_X30_Y29_N30
\HEX2[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DECO_2|Mux5~2_combout\,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

-- Location: IOOBUF_X28_Y29_N2
\HEX2[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DECO_2|Mux4~1_combout\,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

-- Location: IOOBUF_X30_Y29_N2
\HEX2[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DECO_2|Mux3~2_combout\,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X30_Y29_N16
\HEX2[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DECO_2|Mux2~1_combout\,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

-- Location: IOOBUF_X30_Y29_N23
\HEX2[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DECO_2|Mux1~1_combout\,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

-- Location: IOOBUF_X37_Y29_N2
\HEX2[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DECO_2|Mux0~1_combout\,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOOBUF_X32_Y29_N23
\HEX3[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DECO_3|Mux6~2_combout\,
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

-- Location: IOOBUF_X39_Y29_N16
\HEX3[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DECO_3|Mux5~2_combout\,
	devoe => ww_devoe,
	o => \HEX3[1]~output_o\);

-- Location: IOOBUF_X32_Y29_N9
\HEX3[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DECO_3|Mux4~1_combout\,
	devoe => ww_devoe,
	o => \HEX3[2]~output_o\);

-- Location: IOOBUF_X32_Y29_N2
\HEX3[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DECO_3|Mux3~2_combout\,
	devoe => ww_devoe,
	o => \HEX3[3]~output_o\);

-- Location: IOOBUF_X37_Y29_N23
\HEX3[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DECO_3|Mux2~1_combout\,
	devoe => ww_devoe,
	o => \HEX3[4]~output_o\);

-- Location: IOOBUF_X37_Y29_N30
\HEX3[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DECO_3|Mux1~1_combout\,
	devoe => ww_devoe,
	o => \HEX3[5]~output_o\);

-- Location: IOOBUF_X39_Y29_N30
\HEX3[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DECO_3|Mux0~1_combout\,
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

-- Location: IOOBUF_X23_Y29_N9
\DP0~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MODULO_VISTAS|Mux23~0_combout\,
	devoe => ww_devoe,
	o => \DP0~output_o\);

-- Location: IOOBUF_X26_Y29_N30
\DP1~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MODULO_VISTAS|Mux22~0_combout\,
	devoe => ww_devoe,
	o => \DP1~output_o\);

-- Location: IOOBUF_X32_Y29_N16
\DP2~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MODULO_VISTAS|Mux21~6_combout\,
	devoe => ww_devoe,
	o => \DP2~output_o\);

-- Location: IOOBUF_X39_Y29_N23
\DP3~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MODULO_VISTAS|Mux20~6_combout\,
	devoe => ww_devoe,
	o => \DP3~output_o\);

-- Location: IOOBUF_X0_Y20_N9
\LEDG[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MODULO_FRECUENCIA|pulse_frec~0_combout\,
	devoe => ww_devoe,
	o => \LEDG[0]~output_o\);

-- Location: IOOBUF_X0_Y20_N2
\LEDG[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MODULO_LEDS|ALT_INV_LEDG[1]~27_combout\,
	devoe => ww_devoe,
	o => \LEDG[1]~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\LEDG[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MODULO_LEDS|LEDG[2]~28_combout\,
	devoe => ww_devoe,
	o => \LEDG[2]~output_o\);

-- Location: IOOBUF_X0_Y21_N16
\LEDG[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MODULO_LEDS|LEDG[3]~29_combout\,
	devoe => ww_devoe,
	o => \LEDG[3]~output_o\);

-- Location: IOOBUF_X0_Y24_N23
\LEDG[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MODULO_LEDS|LEDG[4]~30_combout\,
	devoe => ww_devoe,
	o => \LEDG[4]~output_o\);

-- Location: IOOBUF_X0_Y24_N16
\LEDG[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MODULO_LEDS|LEDG[5]~31_combout\,
	devoe => ww_devoe,
	o => \LEDG[5]~output_o\);

-- Location: IOOBUF_X0_Y26_N23
\LEDG[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MODULO_LEDS|LEDG[6]~32_combout\,
	devoe => ww_devoe,
	o => \LEDG[6]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\LEDG[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[7]~output_o\);

-- Location: IOOBUF_X0_Y27_N9
\LEDG[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[8]~output_o\);

-- Location: IOOBUF_X0_Y27_N16
\LEDG[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MODULO_LEDS|ALT_INV_LEDG[9]~25_combout\,
	devoe => ww_devoe,
	o => \LEDG[9]~output_o\);

-- Location: IOIBUF_X0_Y26_N1
\SW_Modo[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW_Modo(0),
	o => \SW_Modo[0]~input_o\);

-- Location: IOIBUF_X0_Y25_N1
\SW_Modo[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW_Modo(1),
	o => \SW_Modo[1]~input_o\);

-- Location: IOIBUF_X0_Y27_N22
\SW_Vista[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW_Vista(0),
	o => \SW_Vista[0]~input_o\);

-- Location: IOIBUF_X0_Y22_N15
\SW_Vista[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW_Vista(1),
	o => \SW_Vista[1]~input_o\);

-- Location: LCCOMB_X5_Y24_N2
\MODULO_VISTAS|mux_hex0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_VISTAS|mux_hex0~0_combout\ = (\SW_Vista[0]~input_o\ & \SW_Vista[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW_Vista[0]~input_o\,
	datad => \SW_Vista[1]~input_o\,
	combout => \MODULO_VISTAS|mux_hex0~0_combout\);

-- Location: IOIBUF_X0_Y27_N1
\SW_Color[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW_Color(0),
	o => \SW_Color[0]~input_o\);

-- Location: IOIBUF_X0_Y25_N22
\SW_Color[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW_Color(1),
	o => \SW_Color[1]~input_o\);

-- Location: LCCOMB_X6_Y24_N8
\MODULO_VISTAS|Mux15~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_VISTAS|Mux15~1_combout\ = (!\SW_Color[0]~input_o\ & !\SW_Color[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW_Color[0]~input_o\,
	datac => \SW_Color[1]~input_o\,
	combout => \MODULO_VISTAS|Mux15~1_combout\);

-- Location: LCCOMB_X8_Y25_N20
\MODULO_VISTAS|Mux15~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_VISTAS|Mux15~2_combout\ = (\MODULO_VISTAS|Mux15~1_combout\ & ((\SW_Modo[1]~input_o\ & (!\SW_Modo[0]~input_o\)) # (!\SW_Modo[1]~input_o\ & (\SW_Modo[0]~input_o\ & !\MODULO_VISTAS|mux_hex0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW_Modo[1]~input_o\,
	datab => \SW_Modo[0]~input_o\,
	datac => \MODULO_VISTAS|mux_hex0~0_combout\,
	datad => \MODULO_VISTAS|Mux15~1_combout\,
	combout => \MODULO_VISTAS|Mux15~2_combout\);

-- Location: IOIBUF_X41_Y15_N1
\Clock~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clock,
	o => \Clock~input_o\);

-- Location: CLKCTRL_G9
\Clock~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Clock~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y24_N1
\Reset~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Reset,
	o => \Reset~input_o\);

-- Location: IOIBUF_X0_Y21_N8
\BTN_Contar~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BTN_Contar,
	o => \BTN_Contar~input_o\);

-- Location: LCCOMB_X3_Y24_N22
\BOTON_PIEZAS|sync[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BOTON_PIEZAS|sync[0]~0_combout\ = !\BTN_Contar~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BTN_Contar~input_o\,
	combout => \BOTON_PIEZAS|sync[0]~0_combout\);

-- Location: FF_X3_Y24_N23
\BOTON_PIEZAS|sync[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \BOTON_PIEZAS|sync[0]~0_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BOTON_PIEZAS|sync\(0));

-- Location: FF_X3_Y24_N29
\BOTON_PIEZAS|sync[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \BOTON_PIEZAS|sync\(0),
	clrn => \Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BOTON_PIEZAS|sync\(1));

-- Location: LCCOMB_X9_Y24_N14
\MODULO_TIEMPOS|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_TIEMPOS|Add0~0_combout\ = \MODULO_TIEMPOS|div_10ms\(0) $ (VCC)
-- \MODULO_TIEMPOS|Add0~1\ = CARRY(\MODULO_TIEMPOS|div_10ms\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_TIEMPOS|div_10ms\(0),
	datad => VCC,
	combout => \MODULO_TIEMPOS|Add0~0_combout\,
	cout => \MODULO_TIEMPOS|Add0~1\);

-- Location: LCCOMB_X9_Y24_N12
\MODULO_TIEMPOS|div_10ms~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_TIEMPOS|div_10ms~3_combout\ = (\MODULO_TIEMPOS|Add0~0_combout\ & !\MODULO_TIEMPOS|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MODULO_TIEMPOS|Add0~0_combout\,
	datad => \MODULO_TIEMPOS|Equal0~5_combout\,
	combout => \MODULO_TIEMPOS|div_10ms~3_combout\);

-- Location: FF_X9_Y24_N13
\MODULO_TIEMPOS|div_10ms[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \MODULO_TIEMPOS|div_10ms~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MODULO_TIEMPOS|div_10ms\(0));

-- Location: LCCOMB_X9_Y24_N16
\MODULO_TIEMPOS|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_TIEMPOS|Add0~2_combout\ = (\MODULO_TIEMPOS|div_10ms\(1) & (!\MODULO_TIEMPOS|Add0~1\)) # (!\MODULO_TIEMPOS|div_10ms\(1) & ((\MODULO_TIEMPOS|Add0~1\) # (GND)))
-- \MODULO_TIEMPOS|Add0~3\ = CARRY((!\MODULO_TIEMPOS|Add0~1\) # (!\MODULO_TIEMPOS|div_10ms\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MODULO_TIEMPOS|div_10ms\(1),
	datad => VCC,
	cin => \MODULO_TIEMPOS|Add0~1\,
	combout => \MODULO_TIEMPOS|Add0~2_combout\,
	cout => \MODULO_TIEMPOS|Add0~3\);

-- Location: FF_X9_Y24_N17
\MODULO_TIEMPOS|div_10ms[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \MODULO_TIEMPOS|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MODULO_TIEMPOS|div_10ms\(1));

-- Location: LCCOMB_X9_Y24_N18
\MODULO_TIEMPOS|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_TIEMPOS|Add0~4_combout\ = (\MODULO_TIEMPOS|div_10ms\(2) & (\MODULO_TIEMPOS|Add0~3\ $ (GND))) # (!\MODULO_TIEMPOS|div_10ms\(2) & (!\MODULO_TIEMPOS|Add0~3\ & VCC))
-- \MODULO_TIEMPOS|Add0~5\ = CARRY((\MODULO_TIEMPOS|div_10ms\(2) & !\MODULO_TIEMPOS|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MODULO_TIEMPOS|div_10ms\(2),
	datad => VCC,
	cin => \MODULO_TIEMPOS|Add0~3\,
	combout => \MODULO_TIEMPOS|Add0~4_combout\,
	cout => \MODULO_TIEMPOS|Add0~5\);

-- Location: FF_X9_Y24_N19
\MODULO_TIEMPOS|div_10ms[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \MODULO_TIEMPOS|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MODULO_TIEMPOS|div_10ms\(2));

-- Location: LCCOMB_X9_Y24_N20
\MODULO_TIEMPOS|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_TIEMPOS|Add0~6_combout\ = (\MODULO_TIEMPOS|div_10ms\(3) & (!\MODULO_TIEMPOS|Add0~5\)) # (!\MODULO_TIEMPOS|div_10ms\(3) & ((\MODULO_TIEMPOS|Add0~5\) # (GND)))
-- \MODULO_TIEMPOS|Add0~7\ = CARRY((!\MODULO_TIEMPOS|Add0~5\) # (!\MODULO_TIEMPOS|div_10ms\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MODULO_TIEMPOS|div_10ms\(3),
	datad => VCC,
	cin => \MODULO_TIEMPOS|Add0~5\,
	combout => \MODULO_TIEMPOS|Add0~6_combout\,
	cout => \MODULO_TIEMPOS|Add0~7\);

-- Location: FF_X9_Y24_N21
\MODULO_TIEMPOS|div_10ms[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \MODULO_TIEMPOS|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MODULO_TIEMPOS|div_10ms\(3));

-- Location: LCCOMB_X9_Y24_N22
\MODULO_TIEMPOS|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_TIEMPOS|Add0~8_combout\ = (\MODULO_TIEMPOS|div_10ms\(4) & (\MODULO_TIEMPOS|Add0~7\ $ (GND))) # (!\MODULO_TIEMPOS|div_10ms\(4) & (!\MODULO_TIEMPOS|Add0~7\ & VCC))
-- \MODULO_TIEMPOS|Add0~9\ = CARRY((\MODULO_TIEMPOS|div_10ms\(4) & !\MODULO_TIEMPOS|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_TIEMPOS|div_10ms\(4),
	datad => VCC,
	cin => \MODULO_TIEMPOS|Add0~7\,
	combout => \MODULO_TIEMPOS|Add0~8_combout\,
	cout => \MODULO_TIEMPOS|Add0~9\);

-- Location: FF_X9_Y24_N23
\MODULO_TIEMPOS|div_10ms[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \MODULO_TIEMPOS|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MODULO_TIEMPOS|div_10ms\(4));

-- Location: LCCOMB_X9_Y24_N24
\MODULO_TIEMPOS|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_TIEMPOS|Add0~10_combout\ = (\MODULO_TIEMPOS|div_10ms\(5) & (!\MODULO_TIEMPOS|Add0~9\)) # (!\MODULO_TIEMPOS|div_10ms\(5) & ((\MODULO_TIEMPOS|Add0~9\) # (GND)))
-- \MODULO_TIEMPOS|Add0~11\ = CARRY((!\MODULO_TIEMPOS|Add0~9\) # (!\MODULO_TIEMPOS|div_10ms\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MODULO_TIEMPOS|div_10ms\(5),
	datad => VCC,
	cin => \MODULO_TIEMPOS|Add0~9\,
	combout => \MODULO_TIEMPOS|Add0~10_combout\,
	cout => \MODULO_TIEMPOS|Add0~11\);

-- Location: LCCOMB_X9_Y24_N8
\MODULO_TIEMPOS|div_10ms~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_TIEMPOS|div_10ms~4_combout\ = (\MODULO_TIEMPOS|Add0~10_combout\ & !\MODULO_TIEMPOS|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MODULO_TIEMPOS|Add0~10_combout\,
	datad => \MODULO_TIEMPOS|Equal0~5_combout\,
	combout => \MODULO_TIEMPOS|div_10ms~4_combout\);

-- Location: FF_X9_Y24_N9
\MODULO_TIEMPOS|div_10ms[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \MODULO_TIEMPOS|div_10ms~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MODULO_TIEMPOS|div_10ms\(5));

-- Location: LCCOMB_X9_Y24_N26
\MODULO_TIEMPOS|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_TIEMPOS|Add0~12_combout\ = (\MODULO_TIEMPOS|div_10ms\(6) & (\MODULO_TIEMPOS|Add0~11\ $ (GND))) # (!\MODULO_TIEMPOS|div_10ms\(6) & (!\MODULO_TIEMPOS|Add0~11\ & VCC))
-- \MODULO_TIEMPOS|Add0~13\ = CARRY((\MODULO_TIEMPOS|div_10ms\(6) & !\MODULO_TIEMPOS|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_TIEMPOS|div_10ms\(6),
	datad => VCC,
	cin => \MODULO_TIEMPOS|Add0~11\,
	combout => \MODULO_TIEMPOS|Add0~12_combout\,
	cout => \MODULO_TIEMPOS|Add0~13\);

-- Location: FF_X9_Y24_N27
\MODULO_TIEMPOS|div_10ms[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \MODULO_TIEMPOS|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MODULO_TIEMPOS|div_10ms\(6));

-- Location: LCCOMB_X9_Y24_N28
\MODULO_TIEMPOS|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_TIEMPOS|Add0~14_combout\ = (\MODULO_TIEMPOS|div_10ms\(7) & (!\MODULO_TIEMPOS|Add0~13\)) # (!\MODULO_TIEMPOS|div_10ms\(7) & ((\MODULO_TIEMPOS|Add0~13\) # (GND)))
-- \MODULO_TIEMPOS|Add0~15\ = CARRY((!\MODULO_TIEMPOS|Add0~13\) # (!\MODULO_TIEMPOS|div_10ms\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MODULO_TIEMPOS|div_10ms\(7),
	datad => VCC,
	cin => \MODULO_TIEMPOS|Add0~13\,
	combout => \MODULO_TIEMPOS|Add0~14_combout\,
	cout => \MODULO_TIEMPOS|Add0~15\);

-- Location: FF_X9_Y24_N29
\MODULO_TIEMPOS|div_10ms[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \MODULO_TIEMPOS|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MODULO_TIEMPOS|div_10ms\(7));

-- Location: LCCOMB_X9_Y24_N30
\MODULO_TIEMPOS|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_TIEMPOS|Add0~16_combout\ = (\MODULO_TIEMPOS|div_10ms\(8) & (\MODULO_TIEMPOS|Add0~15\ $ (GND))) # (!\MODULO_TIEMPOS|div_10ms\(8) & (!\MODULO_TIEMPOS|Add0~15\ & VCC))
-- \MODULO_TIEMPOS|Add0~17\ = CARRY((\MODULO_TIEMPOS|div_10ms\(8) & !\MODULO_TIEMPOS|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MODULO_TIEMPOS|div_10ms\(8),
	datad => VCC,
	cin => \MODULO_TIEMPOS|Add0~15\,
	combout => \MODULO_TIEMPOS|Add0~16_combout\,
	cout => \MODULO_TIEMPOS|Add0~17\);

-- Location: LCCOMB_X9_Y24_N4
\MODULO_TIEMPOS|div_10ms~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_TIEMPOS|div_10ms~5_combout\ = (\MODULO_TIEMPOS|Add0~16_combout\ & !\MODULO_TIEMPOS|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MODULO_TIEMPOS|Add0~16_combout\,
	datad => \MODULO_TIEMPOS|Equal0~5_combout\,
	combout => \MODULO_TIEMPOS|div_10ms~5_combout\);

-- Location: FF_X9_Y24_N5
\MODULO_TIEMPOS|div_10ms[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \MODULO_TIEMPOS|div_10ms~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MODULO_TIEMPOS|div_10ms\(8));

-- Location: LCCOMB_X9_Y23_N0
\MODULO_TIEMPOS|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_TIEMPOS|Add0~18_combout\ = (\MODULO_TIEMPOS|div_10ms\(9) & (!\MODULO_TIEMPOS|Add0~17\)) # (!\MODULO_TIEMPOS|div_10ms\(9) & ((\MODULO_TIEMPOS|Add0~17\) # (GND)))
-- \MODULO_TIEMPOS|Add0~19\ = CARRY((!\MODULO_TIEMPOS|Add0~17\) # (!\MODULO_TIEMPOS|div_10ms\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MODULO_TIEMPOS|div_10ms\(9),
	datad => VCC,
	cin => \MODULO_TIEMPOS|Add0~17\,
	combout => \MODULO_TIEMPOS|Add0~18_combout\,
	cout => \MODULO_TIEMPOS|Add0~19\);

-- Location: FF_X9_Y23_N1
\MODULO_TIEMPOS|div_10ms[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \MODULO_TIEMPOS|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MODULO_TIEMPOS|div_10ms\(9));

-- Location: LCCOMB_X9_Y23_N2
\MODULO_TIEMPOS|Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_TIEMPOS|Add0~20_combout\ = (\MODULO_TIEMPOS|div_10ms\(10) & (\MODULO_TIEMPOS|Add0~19\ $ (GND))) # (!\MODULO_TIEMPOS|div_10ms\(10) & (!\MODULO_TIEMPOS|Add0~19\ & VCC))
-- \MODULO_TIEMPOS|Add0~21\ = CARRY((\MODULO_TIEMPOS|div_10ms\(10) & !\MODULO_TIEMPOS|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MODULO_TIEMPOS|div_10ms\(10),
	datad => VCC,
	cin => \MODULO_TIEMPOS|Add0~19\,
	combout => \MODULO_TIEMPOS|Add0~20_combout\,
	cout => \MODULO_TIEMPOS|Add0~21\);

-- Location: FF_X9_Y23_N3
\MODULO_TIEMPOS|div_10ms[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \MODULO_TIEMPOS|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MODULO_TIEMPOS|div_10ms\(10));

-- Location: LCCOMB_X9_Y23_N4
\MODULO_TIEMPOS|Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_TIEMPOS|Add0~22_combout\ = (\MODULO_TIEMPOS|div_10ms\(11) & (!\MODULO_TIEMPOS|Add0~21\)) # (!\MODULO_TIEMPOS|div_10ms\(11) & ((\MODULO_TIEMPOS|Add0~21\) # (GND)))
-- \MODULO_TIEMPOS|Add0~23\ = CARRY((!\MODULO_TIEMPOS|Add0~21\) # (!\MODULO_TIEMPOS|div_10ms\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MODULO_TIEMPOS|div_10ms\(11),
	datad => VCC,
	cin => \MODULO_TIEMPOS|Add0~21\,
	combout => \MODULO_TIEMPOS|Add0~22_combout\,
	cout => \MODULO_TIEMPOS|Add0~23\);

-- Location: FF_X9_Y23_N5
\MODULO_TIEMPOS|div_10ms[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \MODULO_TIEMPOS|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MODULO_TIEMPOS|div_10ms\(11));

-- Location: LCCOMB_X9_Y23_N6
\MODULO_TIEMPOS|Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_TIEMPOS|Add0~24_combout\ = (\MODULO_TIEMPOS|div_10ms\(12) & (\MODULO_TIEMPOS|Add0~23\ $ (GND))) # (!\MODULO_TIEMPOS|div_10ms\(12) & (!\MODULO_TIEMPOS|Add0~23\ & VCC))
-- \MODULO_TIEMPOS|Add0~25\ = CARRY((\MODULO_TIEMPOS|div_10ms\(12) & !\MODULO_TIEMPOS|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_TIEMPOS|div_10ms\(12),
	datad => VCC,
	cin => \MODULO_TIEMPOS|Add0~23\,
	combout => \MODULO_TIEMPOS|Add0~24_combout\,
	cout => \MODULO_TIEMPOS|Add0~25\);

-- Location: FF_X9_Y23_N7
\MODULO_TIEMPOS|div_10ms[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \MODULO_TIEMPOS|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MODULO_TIEMPOS|div_10ms\(12));

-- Location: LCCOMB_X9_Y23_N8
\MODULO_TIEMPOS|Add0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_TIEMPOS|Add0~26_combout\ = (\MODULO_TIEMPOS|div_10ms\(13) & (!\MODULO_TIEMPOS|Add0~25\)) # (!\MODULO_TIEMPOS|div_10ms\(13) & ((\MODULO_TIEMPOS|Add0~25\) # (GND)))
-- \MODULO_TIEMPOS|Add0~27\ = CARRY((!\MODULO_TIEMPOS|Add0~25\) # (!\MODULO_TIEMPOS|div_10ms\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MODULO_TIEMPOS|div_10ms\(13),
	datad => VCC,
	cin => \MODULO_TIEMPOS|Add0~25\,
	combout => \MODULO_TIEMPOS|Add0~26_combout\,
	cout => \MODULO_TIEMPOS|Add0~27\);

-- Location: LCCOMB_X9_Y23_N20
\MODULO_TIEMPOS|div_10ms~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_TIEMPOS|div_10ms~6_combout\ = (\MODULO_TIEMPOS|Add0~26_combout\ & !\MODULO_TIEMPOS|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MODULO_TIEMPOS|Add0~26_combout\,
	datac => \MODULO_TIEMPOS|Equal0~5_combout\,
	combout => \MODULO_TIEMPOS|div_10ms~6_combout\);

-- Location: FF_X9_Y23_N21
\MODULO_TIEMPOS|div_10ms[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \MODULO_TIEMPOS|div_10ms~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MODULO_TIEMPOS|div_10ms\(13));

-- Location: LCCOMB_X9_Y23_N10
\MODULO_TIEMPOS|Add0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_TIEMPOS|Add0~28_combout\ = (\MODULO_TIEMPOS|div_10ms\(14) & (\MODULO_TIEMPOS|Add0~27\ $ (GND))) # (!\MODULO_TIEMPOS|div_10ms\(14) & (!\MODULO_TIEMPOS|Add0~27\ & VCC))
-- \MODULO_TIEMPOS|Add0~29\ = CARRY((\MODULO_TIEMPOS|div_10ms\(14) & !\MODULO_TIEMPOS|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_TIEMPOS|div_10ms\(14),
	datad => VCC,
	cin => \MODULO_TIEMPOS|Add0~27\,
	combout => \MODULO_TIEMPOS|Add0~28_combout\,
	cout => \MODULO_TIEMPOS|Add0~29\);

-- Location: FF_X9_Y23_N11
\MODULO_TIEMPOS|div_10ms[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \MODULO_TIEMPOS|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MODULO_TIEMPOS|div_10ms\(14));

-- Location: LCCOMB_X9_Y23_N12
\MODULO_TIEMPOS|Add0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_TIEMPOS|Add0~30_combout\ = (\MODULO_TIEMPOS|div_10ms\(15) & (!\MODULO_TIEMPOS|Add0~29\)) # (!\MODULO_TIEMPOS|div_10ms\(15) & ((\MODULO_TIEMPOS|Add0~29\) # (GND)))
-- \MODULO_TIEMPOS|Add0~31\ = CARRY((!\MODULO_TIEMPOS|Add0~29\) # (!\MODULO_TIEMPOS|div_10ms\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_TIEMPOS|div_10ms\(15),
	datad => VCC,
	cin => \MODULO_TIEMPOS|Add0~29\,
	combout => \MODULO_TIEMPOS|Add0~30_combout\,
	cout => \MODULO_TIEMPOS|Add0~31\);

-- Location: LCCOMB_X9_Y23_N26
\MODULO_TIEMPOS|div_10ms~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_TIEMPOS|div_10ms~7_combout\ = (!\MODULO_TIEMPOS|Equal0~5_combout\ & \MODULO_TIEMPOS|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MODULO_TIEMPOS|Equal0~5_combout\,
	datad => \MODULO_TIEMPOS|Add0~30_combout\,
	combout => \MODULO_TIEMPOS|div_10ms~7_combout\);

-- Location: FF_X9_Y23_N27
\MODULO_TIEMPOS|div_10ms[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \MODULO_TIEMPOS|div_10ms~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MODULO_TIEMPOS|div_10ms\(15));

-- Location: LCCOMB_X9_Y23_N14
\MODULO_TIEMPOS|Add0~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_TIEMPOS|Add0~32_combout\ = (\MODULO_TIEMPOS|div_10ms\(16) & (\MODULO_TIEMPOS|Add0~31\ $ (GND))) # (!\MODULO_TIEMPOS|div_10ms\(16) & (!\MODULO_TIEMPOS|Add0~31\ & VCC))
-- \MODULO_TIEMPOS|Add0~33\ = CARRY((\MODULO_TIEMPOS|div_10ms\(16) & !\MODULO_TIEMPOS|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MODULO_TIEMPOS|div_10ms\(16),
	datad => VCC,
	cin => \MODULO_TIEMPOS|Add0~31\,
	combout => \MODULO_TIEMPOS|Add0~32_combout\,
	cout => \MODULO_TIEMPOS|Add0~33\);

-- Location: LCCOMB_X9_Y23_N28
\MODULO_TIEMPOS|div_10ms~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_TIEMPOS|div_10ms~0_combout\ = (\MODULO_TIEMPOS|Add0~32_combout\ & !\MODULO_TIEMPOS|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MODULO_TIEMPOS|Add0~32_combout\,
	datac => \MODULO_TIEMPOS|Equal0~5_combout\,
	combout => \MODULO_TIEMPOS|div_10ms~0_combout\);

-- Location: FF_X9_Y23_N29
\MODULO_TIEMPOS|div_10ms[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \MODULO_TIEMPOS|div_10ms~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MODULO_TIEMPOS|div_10ms\(16));

-- Location: LCCOMB_X9_Y23_N16
\MODULO_TIEMPOS|Add0~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_TIEMPOS|Add0~34_combout\ = (\MODULO_TIEMPOS|div_10ms\(17) & (!\MODULO_TIEMPOS|Add0~33\)) # (!\MODULO_TIEMPOS|div_10ms\(17) & ((\MODULO_TIEMPOS|Add0~33\) # (GND)))
-- \MODULO_TIEMPOS|Add0~35\ = CARRY((!\MODULO_TIEMPOS|Add0~33\) # (!\MODULO_TIEMPOS|div_10ms\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_TIEMPOS|div_10ms\(17),
	datad => VCC,
	cin => \MODULO_TIEMPOS|Add0~33\,
	combout => \MODULO_TIEMPOS|Add0~34_combout\,
	cout => \MODULO_TIEMPOS|Add0~35\);

-- Location: LCCOMB_X9_Y23_N30
\MODULO_TIEMPOS|div_10ms~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_TIEMPOS|div_10ms~1_combout\ = (!\MODULO_TIEMPOS|Equal0~5_combout\ & \MODULO_TIEMPOS|Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MODULO_TIEMPOS|Equal0~5_combout\,
	datad => \MODULO_TIEMPOS|Add0~34_combout\,
	combout => \MODULO_TIEMPOS|div_10ms~1_combout\);

-- Location: FF_X9_Y23_N31
\MODULO_TIEMPOS|div_10ms[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \MODULO_TIEMPOS|div_10ms~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MODULO_TIEMPOS|div_10ms\(17));

-- Location: LCCOMB_X9_Y23_N18
\MODULO_TIEMPOS|Add0~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_TIEMPOS|Add0~36_combout\ = \MODULO_TIEMPOS|Add0~35\ $ (!\MODULO_TIEMPOS|div_10ms\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \MODULO_TIEMPOS|div_10ms\(18),
	cin => \MODULO_TIEMPOS|Add0~35\,
	combout => \MODULO_TIEMPOS|Add0~36_combout\);

-- Location: LCCOMB_X8_Y23_N14
\MODULO_TIEMPOS|div_10ms~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_TIEMPOS|div_10ms~2_combout\ = (!\MODULO_TIEMPOS|Equal0~5_combout\ & \MODULO_TIEMPOS|Add0~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MODULO_TIEMPOS|Equal0~5_combout\,
	datad => \MODULO_TIEMPOS|Add0~36_combout\,
	combout => \MODULO_TIEMPOS|div_10ms~2_combout\);

-- Location: FF_X8_Y23_N15
\MODULO_TIEMPOS|div_10ms[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \MODULO_TIEMPOS|div_10ms~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MODULO_TIEMPOS|div_10ms\(18));

-- Location: LCCOMB_X9_Y24_N10
\MODULO_TIEMPOS|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_TIEMPOS|Equal0~1_combout\ = (!\MODULO_TIEMPOS|div_10ms\(6) & (\MODULO_TIEMPOS|div_10ms\(5) & (!\MODULO_TIEMPOS|div_10ms\(4) & !\MODULO_TIEMPOS|div_10ms\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_TIEMPOS|div_10ms\(6),
	datab => \MODULO_TIEMPOS|div_10ms\(5),
	datac => \MODULO_TIEMPOS|div_10ms\(4),
	datad => \MODULO_TIEMPOS|div_10ms\(7),
	combout => \MODULO_TIEMPOS|Equal0~1_combout\);

-- Location: LCCOMB_X9_Y24_N2
\MODULO_TIEMPOS|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_TIEMPOS|Equal0~0_combout\ = (!\MODULO_TIEMPOS|div_10ms\(0) & (!\MODULO_TIEMPOS|div_10ms\(2) & (!\MODULO_TIEMPOS|div_10ms\(3) & !\MODULO_TIEMPOS|div_10ms\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_TIEMPOS|div_10ms\(0),
	datab => \MODULO_TIEMPOS|div_10ms\(2),
	datac => \MODULO_TIEMPOS|div_10ms\(3),
	datad => \MODULO_TIEMPOS|div_10ms\(1),
	combout => \MODULO_TIEMPOS|Equal0~0_combout\);

-- Location: LCCOMB_X9_Y23_N24
\MODULO_TIEMPOS|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_TIEMPOS|Equal0~3_combout\ = (!\MODULO_TIEMPOS|div_10ms\(14) & (\MODULO_TIEMPOS|div_10ms\(13) & (\MODULO_TIEMPOS|div_10ms\(15) & !\MODULO_TIEMPOS|div_10ms\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_TIEMPOS|div_10ms\(14),
	datab => \MODULO_TIEMPOS|div_10ms\(13),
	datac => \MODULO_TIEMPOS|div_10ms\(15),
	datad => \MODULO_TIEMPOS|div_10ms\(12),
	combout => \MODULO_TIEMPOS|Equal0~3_combout\);

-- Location: LCCOMB_X9_Y24_N6
\MODULO_TIEMPOS|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_TIEMPOS|Equal0~2_combout\ = (!\MODULO_TIEMPOS|div_10ms\(11) & (!\MODULO_TIEMPOS|div_10ms\(9) & (\MODULO_TIEMPOS|div_10ms\(8) & !\MODULO_TIEMPOS|div_10ms\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_TIEMPOS|div_10ms\(11),
	datab => \MODULO_TIEMPOS|div_10ms\(9),
	datac => \MODULO_TIEMPOS|div_10ms\(8),
	datad => \MODULO_TIEMPOS|div_10ms\(10),
	combout => \MODULO_TIEMPOS|Equal0~2_combout\);

-- Location: LCCOMB_X9_Y24_N0
\MODULO_TIEMPOS|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_TIEMPOS|Equal0~4_combout\ = (\MODULO_TIEMPOS|Equal0~1_combout\ & (\MODULO_TIEMPOS|Equal0~0_combout\ & (\MODULO_TIEMPOS|Equal0~3_combout\ & \MODULO_TIEMPOS|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_TIEMPOS|Equal0~1_combout\,
	datab => \MODULO_TIEMPOS|Equal0~0_combout\,
	datac => \MODULO_TIEMPOS|Equal0~3_combout\,
	datad => \MODULO_TIEMPOS|Equal0~2_combout\,
	combout => \MODULO_TIEMPOS|Equal0~4_combout\);

-- Location: LCCOMB_X9_Y23_N22
\MODULO_TIEMPOS|Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_TIEMPOS|Equal0~5_combout\ = (\MODULO_TIEMPOS|div_10ms\(18) & (\MODULO_TIEMPOS|div_10ms\(16) & (\MODULO_TIEMPOS|div_10ms\(17) & \MODULO_TIEMPOS|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_TIEMPOS|div_10ms\(18),
	datab => \MODULO_TIEMPOS|div_10ms\(16),
	datac => \MODULO_TIEMPOS|div_10ms\(17),
	datad => \MODULO_TIEMPOS|Equal0~4_combout\,
	combout => \MODULO_TIEMPOS|Equal0~5_combout\);

-- Location: LCCOMB_X8_Y23_N0
\MODULO_TIEMPOS|t_10ms~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_TIEMPOS|t_10ms~feeder_combout\ = \MODULO_TIEMPOS|Equal0~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MODULO_TIEMPOS|Equal0~5_combout\,
	combout => \MODULO_TIEMPOS|t_10ms~feeder_combout\);

-- Location: FF_X8_Y23_N1
\MODULO_TIEMPOS|t_10ms\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \MODULO_TIEMPOS|t_10ms~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MODULO_TIEMPOS|t_10ms~q\);

-- Location: FF_X4_Y24_N29
\BOTON_PIEZAS|stable\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \BOTON_PIEZAS|sync\(1),
	clrn => \Reset~input_o\,
	sload => VCC,
	ena => \MODULO_TIEMPOS|t_10ms~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BOTON_PIEZAS|stable~q\);

-- Location: FF_X4_Y24_N13
\BOTON_PIEZAS|last_stable\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \BOTON_PIEZAS|stable~q\,
	clrn => \Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BOTON_PIEZAS|last_stable~q\);

-- Location: LCCOMB_X3_Y25_N4
\MODULO_VISTAS|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_VISTAS|Mux1~0_combout\ = (!\SW_Modo[1]~input_o\ & !\SW_Modo[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW_Modo[1]~input_o\,
	datad => \SW_Modo[0]~input_o\,
	combout => \MODULO_VISTAS|Mux1~0_combout\);

-- Location: LCCOMB_X4_Y24_N6
\MODULO_ENRUTADOR|pulse_tot~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_ENRUTADOR|pulse_tot~0_combout\ = (!\BOTON_PIEZAS|last_stable~q\ & (!\MODULO_VISTAS|Mux15~1_combout\ & (\MODULO_VISTAS|Mux1~0_combout\ & \BOTON_PIEZAS|stable~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BOTON_PIEZAS|last_stable~q\,
	datab => \MODULO_VISTAS|Mux15~1_combout\,
	datac => \MODULO_VISTAS|Mux1~0_combout\,
	datad => \BOTON_PIEZAS|stable~q\,
	combout => \MODULO_ENRUTADOR|pulse_tot~0_combout\);

-- Location: FF_X2_Y25_N3
\MODULO_ENRUTADOR|last_color_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \SW_Color[1]~input_o\,
	clrn => \Reset~input_o\,
	sload => VCC,
	ena => \MODULO_ENRUTADOR|pulse_tot~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MODULO_ENRUTADOR|last_color_reg\(1));

-- Location: FF_X2_Y25_N29
\MODULO_ENRUTADOR|last_color_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \SW_Color[0]~input_o\,
	clrn => \Reset~input_o\,
	sload => VCC,
	ena => \MODULO_ENRUTADOR|pulse_tot~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MODULO_ENRUTADOR|last_color_reg\(0));

-- Location: LCCOMB_X2_Y25_N2
\MODULO_VISTAS|Mux15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_VISTAS|Mux15~0_combout\ = (!\MODULO_ENRUTADOR|last_color_reg\(1) & !\MODULO_ENRUTADOR|last_color_reg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MODULO_ENRUTADOR|last_color_reg\(1),
	datad => \MODULO_ENRUTADOR|last_color_reg\(0),
	combout => \MODULO_VISTAS|Mux15~0_combout\);

-- Location: LCCOMB_X8_Y25_N6
\MODULO_VISTAS|Mux10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_VISTAS|Mux10~0_combout\ = (\SW_Vista[0]~input_o\ & !\SW_Modo[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW_Vista[0]~input_o\,
	datad => \SW_Modo[1]~input_o\,
	combout => \MODULO_VISTAS|Mux10~0_combout\);

-- Location: LCCOMB_X8_Y25_N4
\MODULO_VISTAS|Mux15~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_VISTAS|Mux15~3_combout\ = (\MODULO_VISTAS|Mux15~2_combout\) # ((!\SW_Modo[0]~input_o\ & (\MODULO_VISTAS|Mux15~0_combout\ & \MODULO_VISTAS|Mux10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW_Modo[0]~input_o\,
	datab => \MODULO_VISTAS|Mux15~2_combout\,
	datac => \MODULO_VISTAS|Mux15~0_combout\,
	datad => \MODULO_VISTAS|Mux10~0_combout\,
	combout => \MODULO_VISTAS|Mux15~3_combout\);

-- Location: IOIBUF_X0_Y23_N8
\SW_Tamano~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW_Tamano,
	o => \SW_Tamano~input_o\);

-- Location: LCCOMB_X6_Y25_N6
\MODULO_VISTAS|Mux18~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_VISTAS|Mux18~2_combout\ = (!\SW_Vista[1]~input_o\ & \SW_Vista[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW_Vista[1]~input_o\,
	datab => \SW_Vista[0]~input_o\,
	combout => \MODULO_VISTAS|Mux18~2_combout\);

-- Location: LCCOMB_X3_Y25_N20
\MODULO_VISTAS|Mux18~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_VISTAS|Mux18~4_combout\ = (\SW_Modo[0]~input_o\ & (((!\SW_Modo[1]~input_o\ & \MODULO_VISTAS|Mux18~2_combout\)))) # (!\SW_Modo[0]~input_o\ & (!\SW_Tamano~input_o\ & (\SW_Modo[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW_Modo[0]~input_o\,
	datab => \SW_Tamano~input_o\,
	datac => \SW_Modo[1]~input_o\,
	datad => \MODULO_VISTAS|Mux18~2_combout\,
	combout => \MODULO_VISTAS|Mux18~4_combout\);

-- Location: LCCOMB_X4_Y25_N10
\MODULO_VISTAS|Mux18~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_VISTAS|Mux18~24_combout\ = (!\SW_Color[0]~input_o\ & (\SW_Color[1]~input_o\ & \MODULO_VISTAS|Mux18~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW_Color[0]~input_o\,
	datab => \SW_Color[1]~input_o\,
	datad => \MODULO_VISTAS|Mux18~4_combout\,
	combout => \MODULO_VISTAS|Mux18~24_combout\);

-- Location: LCCOMB_X4_Y25_N4
\BANCO_VERDE|C_P|CNT_int[0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BANCO_VERDE|C_P|CNT_int[0]~3_combout\ = !\BANCO_VERDE|C_P|CNT_int\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BANCO_VERDE|C_P|CNT_int\(0),
	combout => \BANCO_VERDE|C_P|CNT_int[0]~3_combout\);

-- Location: LCCOMB_X4_Y24_N12
\MODULO_LEDS|LEDG[4]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_LEDS|LEDG[4]~24_combout\ = (\SW_Color[1]~input_o\ & !\SW_Color[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW_Color[1]~input_o\,
	datad => \SW_Color[0]~input_o\,
	combout => \MODULO_LEDS|LEDG[4]~24_combout\);

-- Location: LCCOMB_X4_Y24_N28
\BANCO_VERDE|p_tot~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BANCO_VERDE|p_tot~0_combout\ = (\MODULO_LEDS|LEDG[4]~24_combout\ & (\MODULO_VISTAS|Mux1~0_combout\ & (\BOTON_PIEZAS|stable~q\ & !\BOTON_PIEZAS|last_stable~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_LEDS|LEDG[4]~24_combout\,
	datab => \MODULO_VISTAS|Mux1~0_combout\,
	datac => \BOTON_PIEZAS|stable~q\,
	datad => \BOTON_PIEZAS|last_stable~q\,
	combout => \BANCO_VERDE|p_tot~0_combout\);

-- Location: LCCOMB_X4_Y25_N18
\BANCO_VERDE|p_peq~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BANCO_VERDE|p_peq~0_combout\ = (!\SW_Tamano~input_o\ & \BANCO_VERDE|p_tot~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW_Tamano~input_o\,
	datad => \BANCO_VERDE|p_tot~0_combout\,
	combout => \BANCO_VERDE|p_peq~0_combout\);

-- Location: FF_X4_Y25_N5
\BANCO_VERDE|C_P|CNT_int[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \BANCO_VERDE|C_P|CNT_int[0]~3_combout\,
	clrn => \Reset~input_o\,
	ena => \BANCO_VERDE|p_peq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_VERDE|C_P|CNT_int\(0));

-- Location: LCCOMB_X4_Y25_N26
\BANCO_VERDE|C_P|CNT_int[2]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BANCO_VERDE|C_P|CNT_int[2]~1_combout\ = \BANCO_VERDE|C_P|CNT_int\(2) $ (((\BANCO_VERDE|C_P|CNT_int\(0) & (\BANCO_VERDE|C_P|CNT_int\(1) & \BANCO_VERDE|p_peq~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_VERDE|C_P|CNT_int\(0),
	datab => \BANCO_VERDE|C_P|CNT_int\(1),
	datac => \BANCO_VERDE|C_P|CNT_int\(2),
	datad => \BANCO_VERDE|p_peq~0_combout\,
	combout => \BANCO_VERDE|C_P|CNT_int[2]~1_combout\);

-- Location: FF_X4_Y25_N27
\BANCO_VERDE|C_P|CNT_int[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \BANCO_VERDE|C_P|CNT_int[2]~1_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_VERDE|C_P|CNT_int\(2));

-- Location: LCCOMB_X4_Y25_N8
\BANCO_VERDE|C_P|CNT_int~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BANCO_VERDE|C_P|CNT_int~2_combout\ = (\BANCO_VERDE|C_P|CNT_int\(2) & (\BANCO_VERDE|C_P|CNT_int\(3) $ (((\BANCO_VERDE|C_P|CNT_int\(0) & \BANCO_VERDE|C_P|CNT_int\(1)))))) # (!\BANCO_VERDE|C_P|CNT_int\(2) & (\BANCO_VERDE|C_P|CNT_int\(3) & 
-- ((\BANCO_VERDE|C_P|CNT_int\(1)) # (!\BANCO_VERDE|C_P|CNT_int\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_VERDE|C_P|CNT_int\(2),
	datab => \BANCO_VERDE|C_P|CNT_int\(0),
	datac => \BANCO_VERDE|C_P|CNT_int\(3),
	datad => \BANCO_VERDE|C_P|CNT_int\(1),
	combout => \BANCO_VERDE|C_P|CNT_int~2_combout\);

-- Location: FF_X4_Y25_N9
\BANCO_VERDE|C_P|CNT_int[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \BANCO_VERDE|C_P|CNT_int~2_combout\,
	clrn => \Reset~input_o\,
	ena => \BANCO_VERDE|p_peq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_VERDE|C_P|CNT_int\(3));

-- Location: LCCOMB_X4_Y25_N14
\BANCO_VERDE|C_P|CNT_int~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BANCO_VERDE|C_P|CNT_int~0_combout\ = (\BANCO_VERDE|C_P|CNT_int\(1) & (((!\BANCO_VERDE|C_P|CNT_int\(0))))) # (!\BANCO_VERDE|C_P|CNT_int\(1) & (\BANCO_VERDE|C_P|CNT_int\(0) & ((\BANCO_VERDE|C_P|CNT_int\(2)) # (!\BANCO_VERDE|C_P|CNT_int\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_VERDE|C_P|CNT_int\(2),
	datab => \BANCO_VERDE|C_P|CNT_int\(3),
	datac => \BANCO_VERDE|C_P|CNT_int\(1),
	datad => \BANCO_VERDE|C_P|CNT_int\(0),
	combout => \BANCO_VERDE|C_P|CNT_int~0_combout\);

-- Location: FF_X4_Y25_N15
\BANCO_VERDE|C_P|CNT_int[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \BANCO_VERDE|C_P|CNT_int~0_combout\,
	clrn => \Reset~input_o\,
	ena => \BANCO_VERDE|p_peq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_VERDE|C_P|CNT_int\(1));

-- Location: FF_X4_Y25_N3
\BANCO_VERDE|R_P|Reg_Out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \BANCO_VERDE|C_P|CNT_int\(1),
	clrn => \Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_VERDE|R_P|Reg_Out\(1));

-- Location: LCCOMB_X5_Y25_N8
\MODULO_VISTAS|Mux18~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_VISTAS|Mux18~3_combout\ = (\SW_Modo[1]~input_o\ & (!\SW_Modo[0]~input_o\)) # (!\SW_Modo[1]~input_o\ & (\SW_Modo[0]~input_o\ & (\SW_Vista[1]~input_o\ & !\SW_Vista[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW_Modo[1]~input_o\,
	datab => \SW_Modo[0]~input_o\,
	datac => \SW_Vista[1]~input_o\,
	datad => \SW_Vista[0]~input_o\,
	combout => \MODULO_VISTAS|Mux18~3_combout\);

-- Location: LCCOMB_X4_Y25_N30
\MODULO_VISTAS|Mux18~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_VISTAS|Mux18~5_combout\ = (\SW_Color[0]~input_o\ & (((!\SW_Color[1]~input_o\ & \MODULO_VISTAS|Mux18~4_combout\)))) # (!\SW_Color[0]~input_o\ & (\MODULO_VISTAS|Mux18~3_combout\ & (\SW_Color[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW_Color[0]~input_o\,
	datab => \MODULO_VISTAS|Mux18~3_combout\,
	datac => \SW_Color[1]~input_o\,
	datad => \MODULO_VISTAS|Mux18~4_combout\,
	combout => \MODULO_VISTAS|Mux18~5_combout\);

-- Location: LCCOMB_X1_Y25_N16
\BANCO_ROJO|C_P|CNT_int[0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BANCO_ROJO|C_P|CNT_int[0]~3_combout\ = !\BANCO_ROJO|C_P|CNT_int\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BANCO_ROJO|C_P|CNT_int\(0),
	combout => \BANCO_ROJO|C_P|CNT_int[0]~3_combout\);

-- Location: LCCOMB_X4_Y24_N20
\MODULO_LEDS|LEDG[2]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_LEDS|LEDG[2]~26_combout\ = (!\SW_Color[1]~input_o\ & \SW_Color[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW_Color[1]~input_o\,
	datad => \SW_Color[0]~input_o\,
	combout => \MODULO_LEDS|LEDG[2]~26_combout\);

-- Location: LCCOMB_X4_Y24_N14
\BANCO_ROJO|p_tot~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BANCO_ROJO|p_tot~0_combout\ = (!\BOTON_PIEZAS|last_stable~q\ & (\MODULO_LEDS|LEDG[2]~26_combout\ & (\MODULO_VISTAS|Mux1~0_combout\ & \BOTON_PIEZAS|stable~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BOTON_PIEZAS|last_stable~q\,
	datab => \MODULO_LEDS|LEDG[2]~26_combout\,
	datac => \MODULO_VISTAS|Mux1~0_combout\,
	datad => \BOTON_PIEZAS|stable~q\,
	combout => \BANCO_ROJO|p_tot~0_combout\);

-- Location: LCCOMB_X1_Y24_N0
\BANCO_ROJO|p_peq~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BANCO_ROJO|p_peq~0_combout\ = (!\SW_Tamano~input_o\ & \BANCO_ROJO|p_tot~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW_Tamano~input_o\,
	datad => \BANCO_ROJO|p_tot~0_combout\,
	combout => \BANCO_ROJO|p_peq~0_combout\);

-- Location: FF_X1_Y25_N17
\BANCO_ROJO|C_P|CNT_int[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \BANCO_ROJO|C_P|CNT_int[0]~3_combout\,
	clrn => \Reset~input_o\,
	ena => \BANCO_ROJO|p_peq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_ROJO|C_P|CNT_int\(0));

-- Location: LCCOMB_X1_Y25_N20
\BANCO_ROJO|C_P|CNT_int[2]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BANCO_ROJO|C_P|CNT_int[2]~1_combout\ = \BANCO_ROJO|C_P|CNT_int\(2) $ (((\BANCO_ROJO|C_P|CNT_int\(1) & (\BANCO_ROJO|C_P|CNT_int\(0) & \BANCO_ROJO|p_peq~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_ROJO|C_P|CNT_int\(1),
	datab => \BANCO_ROJO|C_P|CNT_int\(0),
	datac => \BANCO_ROJO|C_P|CNT_int\(2),
	datad => \BANCO_ROJO|p_peq~0_combout\,
	combout => \BANCO_ROJO|C_P|CNT_int[2]~1_combout\);

-- Location: FF_X1_Y25_N21
\BANCO_ROJO|C_P|CNT_int[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \BANCO_ROJO|C_P|CNT_int[2]~1_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_ROJO|C_P|CNT_int\(2));

-- Location: LCCOMB_X1_Y25_N22
\BANCO_ROJO|C_P|CNT_int~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BANCO_ROJO|C_P|CNT_int~2_combout\ = (\BANCO_ROJO|C_P|CNT_int\(1) & (\BANCO_ROJO|C_P|CNT_int\(3) $ (((\BANCO_ROJO|C_P|CNT_int\(0) & \BANCO_ROJO|C_P|CNT_int\(2)))))) # (!\BANCO_ROJO|C_P|CNT_int\(1) & (\BANCO_ROJO|C_P|CNT_int\(3) & 
-- ((\BANCO_ROJO|C_P|CNT_int\(2)) # (!\BANCO_ROJO|C_P|CNT_int\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_ROJO|C_P|CNT_int\(1),
	datab => \BANCO_ROJO|C_P|CNT_int\(0),
	datac => \BANCO_ROJO|C_P|CNT_int\(3),
	datad => \BANCO_ROJO|C_P|CNT_int\(2),
	combout => \BANCO_ROJO|C_P|CNT_int~2_combout\);

-- Location: FF_X1_Y25_N23
\BANCO_ROJO|C_P|CNT_int[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \BANCO_ROJO|C_P|CNT_int~2_combout\,
	clrn => \Reset~input_o\,
	ena => \BANCO_ROJO|p_peq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_ROJO|C_P|CNT_int\(3));

-- Location: LCCOMB_X1_Y25_N2
\BANCO_ROJO|C_P|CNT_int~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BANCO_ROJO|C_P|CNT_int~0_combout\ = (\BANCO_ROJO|C_P|CNT_int\(1) & (((!\BANCO_ROJO|C_P|CNT_int\(0))))) # (!\BANCO_ROJO|C_P|CNT_int\(1) & (\BANCO_ROJO|C_P|CNT_int\(0) & ((\BANCO_ROJO|C_P|CNT_int\(2)) # (!\BANCO_ROJO|C_P|CNT_int\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_ROJO|C_P|CNT_int\(3),
	datab => \BANCO_ROJO|C_P|CNT_int\(2),
	datac => \BANCO_ROJO|C_P|CNT_int\(1),
	datad => \BANCO_ROJO|C_P|CNT_int\(0),
	combout => \BANCO_ROJO|C_P|CNT_int~0_combout\);

-- Location: FF_X1_Y25_N3
\BANCO_ROJO|C_P|CNT_int[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \BANCO_ROJO|C_P|CNT_int~0_combout\,
	clrn => \Reset~input_o\,
	ena => \BANCO_ROJO|p_peq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_ROJO|C_P|CNT_int\(1));

-- Location: LCCOMB_X1_Y25_N10
\BANCO_ROJO|R_P|Reg_Out[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BANCO_ROJO|R_P|Reg_Out[1]~feeder_combout\ = \BANCO_ROJO|C_P|CNT_int\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BANCO_ROJO|C_P|CNT_int\(1),
	combout => \BANCO_ROJO|R_P|Reg_Out[1]~feeder_combout\);

-- Location: FF_X1_Y25_N11
\BANCO_ROJO|R_P|Reg_Out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \BANCO_ROJO|R_P|Reg_Out[1]~feeder_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_ROJO|R_P|Reg_Out\(1));

-- Location: LCCOMB_X5_Y25_N10
\BANCO_VERDE|C_G|CNT_int[0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BANCO_VERDE|C_G|CNT_int[0]~3_combout\ = !\BANCO_VERDE|C_G|CNT_int\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BANCO_VERDE|C_G|CNT_int\(0),
	combout => \BANCO_VERDE|C_G|CNT_int[0]~3_combout\);

-- Location: LCCOMB_X4_Y25_N24
\BANCO_VERDE|p_gra~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BANCO_VERDE|p_gra~0_combout\ = (\SW_Tamano~input_o\ & \BANCO_VERDE|p_tot~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW_Tamano~input_o\,
	datad => \BANCO_VERDE|p_tot~0_combout\,
	combout => \BANCO_VERDE|p_gra~0_combout\);

-- Location: FF_X5_Y25_N11
\BANCO_VERDE|C_G|CNT_int[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \BANCO_VERDE|C_G|CNT_int[0]~3_combout\,
	clrn => \Reset~input_o\,
	ena => \BANCO_VERDE|p_gra~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_VERDE|C_G|CNT_int\(0));

-- Location: LCCOMB_X5_Y25_N30
\BANCO_VERDE|C_G|CNT_int[2]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BANCO_VERDE|C_G|CNT_int[2]~1_combout\ = \BANCO_VERDE|C_G|CNT_int\(2) $ (((\BANCO_VERDE|C_G|CNT_int\(0) & (\BANCO_VERDE|p_gra~0_combout\ & \BANCO_VERDE|C_G|CNT_int\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_VERDE|C_G|CNT_int\(0),
	datab => \BANCO_VERDE|p_gra~0_combout\,
	datac => \BANCO_VERDE|C_G|CNT_int\(2),
	datad => \BANCO_VERDE|C_G|CNT_int\(1),
	combout => \BANCO_VERDE|C_G|CNT_int[2]~1_combout\);

-- Location: FF_X5_Y25_N31
\BANCO_VERDE|C_G|CNT_int[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \BANCO_VERDE|C_G|CNT_int[2]~1_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_VERDE|C_G|CNT_int\(2));

-- Location: LCCOMB_X5_Y25_N20
\BANCO_VERDE|C_G|CNT_int~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BANCO_VERDE|C_G|CNT_int~2_combout\ = (\BANCO_VERDE|C_G|CNT_int\(2) & (\BANCO_VERDE|C_G|CNT_int\(3) $ (((\BANCO_VERDE|C_G|CNT_int\(0) & \BANCO_VERDE|C_G|CNT_int\(1)))))) # (!\BANCO_VERDE|C_G|CNT_int\(2) & (\BANCO_VERDE|C_G|CNT_int\(3) & 
-- ((\BANCO_VERDE|C_G|CNT_int\(1)) # (!\BANCO_VERDE|C_G|CNT_int\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_VERDE|C_G|CNT_int\(2),
	datab => \BANCO_VERDE|C_G|CNT_int\(0),
	datac => \BANCO_VERDE|C_G|CNT_int\(3),
	datad => \BANCO_VERDE|C_G|CNT_int\(1),
	combout => \BANCO_VERDE|C_G|CNT_int~2_combout\);

-- Location: FF_X5_Y25_N21
\BANCO_VERDE|C_G|CNT_int[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \BANCO_VERDE|C_G|CNT_int~2_combout\,
	clrn => \Reset~input_o\,
	ena => \BANCO_VERDE|p_gra~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_VERDE|C_G|CNT_int\(3));

-- Location: LCCOMB_X5_Y25_N12
\BANCO_VERDE|C_G|CNT_int~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BANCO_VERDE|C_G|CNT_int~0_combout\ = (\BANCO_VERDE|C_G|CNT_int\(1) & (((!\BANCO_VERDE|C_G|CNT_int\(0))))) # (!\BANCO_VERDE|C_G|CNT_int\(1) & (\BANCO_VERDE|C_G|CNT_int\(0) & ((\BANCO_VERDE|C_G|CNT_int\(2)) # (!\BANCO_VERDE|C_G|CNT_int\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_VERDE|C_G|CNT_int\(2),
	datab => \BANCO_VERDE|C_G|CNT_int\(3),
	datac => \BANCO_VERDE|C_G|CNT_int\(1),
	datad => \BANCO_VERDE|C_G|CNT_int\(0),
	combout => \BANCO_VERDE|C_G|CNT_int~0_combout\);

-- Location: FF_X5_Y25_N13
\BANCO_VERDE|C_G|CNT_int[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \BANCO_VERDE|C_G|CNT_int~0_combout\,
	clrn => \Reset~input_o\,
	ena => \BANCO_VERDE|p_gra~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_VERDE|C_G|CNT_int\(1));

-- Location: FF_X4_Y25_N1
\BANCO_VERDE|R_G|Reg_Out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \BANCO_VERDE|C_G|CNT_int\(1),
	clrn => \Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_VERDE|R_G|Reg_Out\(1));

-- Location: LCCOMB_X1_Y24_N12
\BANCO_ROJO|C_G|CNT_int[0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BANCO_ROJO|C_G|CNT_int[0]~3_combout\ = !\BANCO_ROJO|C_G|CNT_int\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BANCO_ROJO|C_G|CNT_int\(0),
	combout => \BANCO_ROJO|C_G|CNT_int[0]~3_combout\);

-- Location: LCCOMB_X1_Y24_N2
\BANCO_ROJO|p_gra~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BANCO_ROJO|p_gra~0_combout\ = (\SW_Tamano~input_o\ & \BANCO_ROJO|p_tot~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW_Tamano~input_o\,
	datad => \BANCO_ROJO|p_tot~0_combout\,
	combout => \BANCO_ROJO|p_gra~0_combout\);

-- Location: FF_X1_Y24_N13
\BANCO_ROJO|C_G|CNT_int[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \BANCO_ROJO|C_G|CNT_int[0]~3_combout\,
	clrn => \Reset~input_o\,
	ena => \BANCO_ROJO|p_gra~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_ROJO|C_G|CNT_int\(0));

-- Location: LCCOMB_X1_Y24_N16
\BANCO_ROJO|C_G|CNT_int[2]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BANCO_ROJO|C_G|CNT_int[2]~1_combout\ = \BANCO_ROJO|C_G|CNT_int\(2) $ (((\BANCO_ROJO|C_G|CNT_int\(1) & (\BANCO_ROJO|p_gra~0_combout\ & \BANCO_ROJO|C_G|CNT_int\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_ROJO|C_G|CNT_int\(1),
	datab => \BANCO_ROJO|p_gra~0_combout\,
	datac => \BANCO_ROJO|C_G|CNT_int\(2),
	datad => \BANCO_ROJO|C_G|CNT_int\(0),
	combout => \BANCO_ROJO|C_G|CNT_int[2]~1_combout\);

-- Location: FF_X1_Y24_N17
\BANCO_ROJO|C_G|CNT_int[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \BANCO_ROJO|C_G|CNT_int[2]~1_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_ROJO|C_G|CNT_int\(2));

-- Location: LCCOMB_X1_Y24_N6
\BANCO_ROJO|C_G|CNT_int~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BANCO_ROJO|C_G|CNT_int~2_combout\ = (\BANCO_ROJO|C_G|CNT_int\(1) & (\BANCO_ROJO|C_G|CNT_int\(3) $ (((\BANCO_ROJO|C_G|CNT_int\(2) & \BANCO_ROJO|C_G|CNT_int\(0)))))) # (!\BANCO_ROJO|C_G|CNT_int\(1) & (\BANCO_ROJO|C_G|CNT_int\(3) & 
-- ((\BANCO_ROJO|C_G|CNT_int\(2)) # (!\BANCO_ROJO|C_G|CNT_int\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_ROJO|C_G|CNT_int\(1),
	datab => \BANCO_ROJO|C_G|CNT_int\(2),
	datac => \BANCO_ROJO|C_G|CNT_int\(3),
	datad => \BANCO_ROJO|C_G|CNT_int\(0),
	combout => \BANCO_ROJO|C_G|CNT_int~2_combout\);

-- Location: FF_X1_Y24_N7
\BANCO_ROJO|C_G|CNT_int[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \BANCO_ROJO|C_G|CNT_int~2_combout\,
	clrn => \Reset~input_o\,
	ena => \BANCO_ROJO|p_gra~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_ROJO|C_G|CNT_int\(3));

-- Location: LCCOMB_X1_Y24_N10
\BANCO_ROJO|C_G|CNT_int~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BANCO_ROJO|C_G|CNT_int~0_combout\ = (\BANCO_ROJO|C_G|CNT_int\(0) & (!\BANCO_ROJO|C_G|CNT_int\(1) & ((\BANCO_ROJO|C_G|CNT_int\(2)) # (!\BANCO_ROJO|C_G|CNT_int\(3))))) # (!\BANCO_ROJO|C_G|CNT_int\(0) & (((\BANCO_ROJO|C_G|CNT_int\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_ROJO|C_G|CNT_int\(0),
	datab => \BANCO_ROJO|C_G|CNT_int\(2),
	datac => \BANCO_ROJO|C_G|CNT_int\(1),
	datad => \BANCO_ROJO|C_G|CNT_int\(3),
	combout => \BANCO_ROJO|C_G|CNT_int~0_combout\);

-- Location: FF_X1_Y24_N11
\BANCO_ROJO|C_G|CNT_int[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \BANCO_ROJO|C_G|CNT_int~0_combout\,
	clrn => \Reset~input_o\,
	ena => \BANCO_ROJO|p_gra~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_ROJO|C_G|CNT_int\(1));

-- Location: LCCOMB_X1_Y24_N14
\BANCO_ROJO|R_G|Reg_Out[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BANCO_ROJO|R_G|Reg_Out[1]~feeder_combout\ = \BANCO_ROJO|C_G|CNT_int\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BANCO_ROJO|C_G|CNT_int\(1),
	combout => \BANCO_ROJO|R_G|Reg_Out[1]~feeder_combout\);

-- Location: FF_X1_Y24_N15
\BANCO_ROJO|R_G|Reg_Out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \BANCO_ROJO|R_G|Reg_Out[1]~feeder_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_ROJO|R_G|Reg_Out\(1));

-- Location: LCCOMB_X3_Y25_N18
\MODULO_VISTAS|Mux18~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_VISTAS|Mux18~6_combout\ = (\SW_Color[0]~input_o\ & ((\SW_Modo[1]~input_o\ & ((!\SW_Modo[0]~input_o\) # (!\SW_Vista[1]~input_o\))) # (!\SW_Modo[1]~input_o\ & ((\SW_Modo[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW_Color[0]~input_o\,
	datab => \SW_Modo[1]~input_o\,
	datac => \SW_Vista[1]~input_o\,
	datad => \SW_Modo[0]~input_o\,
	combout => \MODULO_VISTAS|Mux18~6_combout\);

-- Location: LCCOMB_X3_Y25_N24
\MODULO_VISTAS|Mux18~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_VISTAS|Mux18~7_combout\ = (\MODULO_VISTAS|Mux18~6_combout\ & (!\SW_Color[1]~input_o\ & ((!\SW_Vista[0]~input_o\) # (!\SW_Modo[0]~input_o\)))) # (!\MODULO_VISTAS|Mux18~6_combout\ & (!\SW_Modo[0]~input_o\ & (!\SW_Vista[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW_Modo[0]~input_o\,
	datab => \SW_Vista[0]~input_o\,
	datac => \SW_Color[1]~input_o\,
	datad => \MODULO_VISTAS|Mux18~6_combout\,
	combout => \MODULO_VISTAS|Mux18~7_combout\);

-- Location: LCCOMB_X2_Y24_N12
\MODULO_VISTAS|Equal6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_VISTAS|Equal6~0_combout\ = (!\SW_Vista[1]~input_o\ & !\SW_Vista[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW_Vista[1]~input_o\,
	datad => \SW_Vista[0]~input_o\,
	combout => \MODULO_VISTAS|Equal6~0_combout\);

-- Location: LCCOMB_X5_Y24_N16
\MODULO_VISTAS|Mux18~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_VISTAS|Mux18~9_combout\ = ((\SW_Vista[0]~input_o\ & \SW_Vista[1]~input_o\)) # (!\SW_Modo[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW_Vista[0]~input_o\,
	datab => \SW_Modo[0]~input_o\,
	datad => \SW_Vista[1]~input_o\,
	combout => \MODULO_VISTAS|Mux18~9_combout\);

-- Location: LCCOMB_X5_Y25_N0
\MODULO_VISTAS|Mux18~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_VISTAS|Mux18~8_combout\ = (\SW_Modo[0]~input_o\ & ((\SW_Color[0]~input_o\) # ((\SW_Vista[1]~input_o\ & \SW_Vista[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW_Modo[0]~input_o\,
	datab => \SW_Vista[1]~input_o\,
	datac => \SW_Color[0]~input_o\,
	datad => \SW_Vista[0]~input_o\,
	combout => \MODULO_VISTAS|Mux18~8_combout\);

-- Location: LCCOMB_X2_Y25_N6
\C_TT_U|CNT_int[0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C_TT_U|CNT_int[0]~3_combout\ = !\C_TT_U|CNT_int\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C_TT_U|CNT_int\(0),
	combout => \C_TT_U|CNT_int[0]~3_combout\);

-- Location: FF_X2_Y25_N7
\C_TT_U|CNT_int[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \C_TT_U|CNT_int[0]~3_combout\,
	clrn => \Reset~input_o\,
	ena => \MODULO_ENRUTADOR|pulse_tot~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C_TT_U|CNT_int\(0));

-- Location: LCCOMB_X2_Y25_N18
\C_TT_U|CNT_int[2]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C_TT_U|CNT_int[2]~1_combout\ = \C_TT_U|CNT_int\(2) $ (((\C_TT_U|CNT_int\(0) & (\MODULO_ENRUTADOR|pulse_tot~0_combout\ & \C_TT_U|CNT_int\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C_TT_U|CNT_int\(0),
	datab => \MODULO_ENRUTADOR|pulse_tot~0_combout\,
	datac => \C_TT_U|CNT_int\(2),
	datad => \C_TT_U|CNT_int\(1),
	combout => \C_TT_U|CNT_int[2]~1_combout\);

-- Location: FF_X2_Y25_N19
\C_TT_U|CNT_int[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \C_TT_U|CNT_int[2]~1_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C_TT_U|CNT_int\(2));

-- Location: LCCOMB_X2_Y25_N8
\C_TT_U|CNT_int~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C_TT_U|CNT_int~2_combout\ = (\C_TT_U|CNT_int\(0) & ((\C_TT_U|CNT_int\(2) & (\C_TT_U|CNT_int\(3) $ (\C_TT_U|CNT_int\(1)))) # (!\C_TT_U|CNT_int\(2) & (\C_TT_U|CNT_int\(3) & \C_TT_U|CNT_int\(1))))) # (!\C_TT_U|CNT_int\(0) & (((\C_TT_U|CNT_int\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C_TT_U|CNT_int\(0),
	datab => \C_TT_U|CNT_int\(2),
	datac => \C_TT_U|CNT_int\(3),
	datad => \C_TT_U|CNT_int\(1),
	combout => \C_TT_U|CNT_int~2_combout\);

-- Location: FF_X2_Y25_N9
\C_TT_U|CNT_int[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \C_TT_U|CNT_int~2_combout\,
	clrn => \Reset~input_o\,
	ena => \MODULO_ENRUTADOR|pulse_tot~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C_TT_U|CNT_int\(3));

-- Location: LCCOMB_X2_Y25_N0
\C_TT_U|CNT_int~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C_TT_U|CNT_int~0_combout\ = (\C_TT_U|CNT_int\(0) & (!\C_TT_U|CNT_int\(1) & ((\C_TT_U|CNT_int\(2)) # (!\C_TT_U|CNT_int\(3))))) # (!\C_TT_U|CNT_int\(0) & (((\C_TT_U|CNT_int\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C_TT_U|CNT_int\(0),
	datab => \C_TT_U|CNT_int\(3),
	datac => \C_TT_U|CNT_int\(1),
	datad => \C_TT_U|CNT_int\(2),
	combout => \C_TT_U|CNT_int~0_combout\);

-- Location: FF_X2_Y25_N1
\C_TT_U|CNT_int[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \C_TT_U|CNT_int~0_combout\,
	clrn => \Reset~input_o\,
	ena => \MODULO_ENRUTADOR|pulse_tot~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C_TT_U|CNT_int\(1));

-- Location: FF_X5_Y25_N7
\R_TT_U|Reg_Out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \C_TT_U|CNT_int\(1),
	clrn => \Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R_TT_U|Reg_Out\(1));

-- Location: LCCOMB_X6_Y25_N2
\MODULO_VISTAS|Mux18~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_VISTAS|Mux18~11_combout\ = (\MODULO_VISTAS|Mux18~8_combout\ & (((\R_TT_U|Reg_Out\(1) & \MODULO_VISTAS|Mux18~9_combout\)))) # (!\MODULO_VISTAS|Mux18~8_combout\ & (((!\MODULO_VISTAS|Mux18~9_combout\)) # (!\MODULO_VISTAS|Mux15~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_VISTAS|Mux18~8_combout\,
	datab => \MODULO_VISTAS|Mux15~0_combout\,
	datac => \R_TT_U|Reg_Out\(1),
	datad => \MODULO_VISTAS|Mux18~9_combout\,
	combout => \MODULO_VISTAS|Mux18~11_combout\);

-- Location: LCCOMB_X6_Y25_N16
\BANCO_AZUL|C_T|CNT_int[0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BANCO_AZUL|C_T|CNT_int[0]~3_combout\ = !\BANCO_AZUL|C_T|CNT_int\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BANCO_AZUL|C_T|CNT_int\(0),
	combout => \BANCO_AZUL|C_T|CNT_int[0]~3_combout\);

-- Location: LCCOMB_X4_Y24_N0
\MODULO_ENRUTADOR|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_ENRUTADOR|Equal1~0_combout\ = (\SW_Color[1]~input_o\ & \SW_Color[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW_Color[1]~input_o\,
	datad => \SW_Color[0]~input_o\,
	combout => \MODULO_ENRUTADOR|Equal1~0_combout\);

-- Location: LCCOMB_X4_Y24_N30
\BANCO_AZUL|p_tot~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BANCO_AZUL|p_tot~0_combout\ = (!\BOTON_PIEZAS|last_stable~q\ & (\MODULO_ENRUTADOR|Equal1~0_combout\ & (\MODULO_VISTAS|Mux1~0_combout\ & \BOTON_PIEZAS|stable~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BOTON_PIEZAS|last_stable~q\,
	datab => \MODULO_ENRUTADOR|Equal1~0_combout\,
	datac => \MODULO_VISTAS|Mux1~0_combout\,
	datad => \BOTON_PIEZAS|stable~q\,
	combout => \BANCO_AZUL|p_tot~0_combout\);

-- Location: FF_X6_Y25_N17
\BANCO_AZUL|C_T|CNT_int[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \BANCO_AZUL|C_T|CNT_int[0]~3_combout\,
	clrn => \Reset~input_o\,
	ena => \BANCO_AZUL|p_tot~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_AZUL|C_T|CNT_int\(0));

-- Location: LCCOMB_X6_Y25_N12
\BANCO_AZUL|C_T|CNT_int[2]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BANCO_AZUL|C_T|CNT_int[2]~1_combout\ = \BANCO_AZUL|C_T|CNT_int\(2) $ (((\BANCO_AZUL|C_T|CNT_int\(0) & (\BANCO_AZUL|C_T|CNT_int\(1) & \BANCO_AZUL|p_tot~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_AZUL|C_T|CNT_int\(0),
	datab => \BANCO_AZUL|C_T|CNT_int\(1),
	datac => \BANCO_AZUL|C_T|CNT_int\(2),
	datad => \BANCO_AZUL|p_tot~0_combout\,
	combout => \BANCO_AZUL|C_T|CNT_int[2]~1_combout\);

-- Location: FF_X6_Y25_N13
\BANCO_AZUL|C_T|CNT_int[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \BANCO_AZUL|C_T|CNT_int[2]~1_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_AZUL|C_T|CNT_int\(2));

-- Location: LCCOMB_X6_Y25_N26
\BANCO_AZUL|C_T|CNT_int~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BANCO_AZUL|C_T|CNT_int~2_combout\ = (\BANCO_AZUL|C_T|CNT_int\(0) & ((\BANCO_AZUL|C_T|CNT_int\(1) & (\BANCO_AZUL|C_T|CNT_int\(3) $ (\BANCO_AZUL|C_T|CNT_int\(2)))) # (!\BANCO_AZUL|C_T|CNT_int\(1) & (\BANCO_AZUL|C_T|CNT_int\(3) & 
-- \BANCO_AZUL|C_T|CNT_int\(2))))) # (!\BANCO_AZUL|C_T|CNT_int\(0) & (((\BANCO_AZUL|C_T|CNT_int\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_AZUL|C_T|CNT_int\(0),
	datab => \BANCO_AZUL|C_T|CNT_int\(1),
	datac => \BANCO_AZUL|C_T|CNT_int\(3),
	datad => \BANCO_AZUL|C_T|CNT_int\(2),
	combout => \BANCO_AZUL|C_T|CNT_int~2_combout\);

-- Location: FF_X6_Y25_N27
\BANCO_AZUL|C_T|CNT_int[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \BANCO_AZUL|C_T|CNT_int~2_combout\,
	clrn => \Reset~input_o\,
	ena => \BANCO_AZUL|p_tot~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_AZUL|C_T|CNT_int\(3));

-- Location: LCCOMB_X6_Y25_N8
\BANCO_AZUL|C_T|CNT_int~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BANCO_AZUL|C_T|CNT_int~0_combout\ = (\BANCO_AZUL|C_T|CNT_int\(0) & (!\BANCO_AZUL|C_T|CNT_int\(1) & ((\BANCO_AZUL|C_T|CNT_int\(2)) # (!\BANCO_AZUL|C_T|CNT_int\(3))))) # (!\BANCO_AZUL|C_T|CNT_int\(0) & (((\BANCO_AZUL|C_T|CNT_int\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_AZUL|C_T|CNT_int\(3),
	datab => \BANCO_AZUL|C_T|CNT_int\(0),
	datac => \BANCO_AZUL|C_T|CNT_int\(1),
	datad => \BANCO_AZUL|C_T|CNT_int\(2),
	combout => \BANCO_AZUL|C_T|CNT_int~0_combout\);

-- Location: FF_X6_Y25_N9
\BANCO_AZUL|C_T|CNT_int[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \BANCO_AZUL|C_T|CNT_int~0_combout\,
	clrn => \Reset~input_o\,
	ena => \BANCO_AZUL|p_tot~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_AZUL|C_T|CNT_int\(1));

-- Location: FF_X6_Y25_N19
\BANCO_AZUL|R_T|Reg_Out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \BANCO_AZUL|C_T|CNT_int\(1),
	clrn => \Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_AZUL|R_T|Reg_Out\(1));

-- Location: LCCOMB_X8_Y25_N18
\BANCO_VERDE|C_T|CNT_int[0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BANCO_VERDE|C_T|CNT_int[0]~3_combout\ = !\BANCO_VERDE|C_T|CNT_int\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BANCO_VERDE|C_T|CNT_int\(0),
	combout => \BANCO_VERDE|C_T|CNT_int[0]~3_combout\);

-- Location: FF_X8_Y25_N19
\BANCO_VERDE|C_T|CNT_int[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \BANCO_VERDE|C_T|CNT_int[0]~3_combout\,
	clrn => \Reset~input_o\,
	ena => \BANCO_VERDE|p_tot~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_VERDE|C_T|CNT_int\(0));

-- Location: LCCOMB_X8_Y25_N22
\BANCO_VERDE|C_T|CNT_int[2]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BANCO_VERDE|C_T|CNT_int[2]~1_combout\ = \BANCO_VERDE|C_T|CNT_int\(2) $ (((\BANCO_VERDE|p_tot~0_combout\ & (\BANCO_VERDE|C_T|CNT_int\(1) & \BANCO_VERDE|C_T|CNT_int\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_VERDE|p_tot~0_combout\,
	datab => \BANCO_VERDE|C_T|CNT_int\(1),
	datac => \BANCO_VERDE|C_T|CNT_int\(2),
	datad => \BANCO_VERDE|C_T|CNT_int\(0),
	combout => \BANCO_VERDE|C_T|CNT_int[2]~1_combout\);

-- Location: FF_X8_Y25_N23
\BANCO_VERDE|C_T|CNT_int[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \BANCO_VERDE|C_T|CNT_int[2]~1_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_VERDE|C_T|CNT_int\(2));

-- Location: LCCOMB_X8_Y25_N26
\BANCO_VERDE|C_T|CNT_int~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BANCO_VERDE|C_T|CNT_int~2_combout\ = (\BANCO_VERDE|C_T|CNT_int\(2) & (\BANCO_VERDE|C_T|CNT_int\(3) $ (((\BANCO_VERDE|C_T|CNT_int\(1) & \BANCO_VERDE|C_T|CNT_int\(0)))))) # (!\BANCO_VERDE|C_T|CNT_int\(2) & (\BANCO_VERDE|C_T|CNT_int\(3) & 
-- ((\BANCO_VERDE|C_T|CNT_int\(1)) # (!\BANCO_VERDE|C_T|CNT_int\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_VERDE|C_T|CNT_int\(2),
	datab => \BANCO_VERDE|C_T|CNT_int\(1),
	datac => \BANCO_VERDE|C_T|CNT_int\(3),
	datad => \BANCO_VERDE|C_T|CNT_int\(0),
	combout => \BANCO_VERDE|C_T|CNT_int~2_combout\);

-- Location: FF_X8_Y25_N27
\BANCO_VERDE|C_T|CNT_int[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \BANCO_VERDE|C_T|CNT_int~2_combout\,
	clrn => \Reset~input_o\,
	ena => \BANCO_VERDE|p_tot~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_VERDE|C_T|CNT_int\(3));

-- Location: LCCOMB_X8_Y25_N12
\BANCO_VERDE|C_T|CNT_int~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BANCO_VERDE|C_T|CNT_int~0_combout\ = (\BANCO_VERDE|C_T|CNT_int\(1) & (((!\BANCO_VERDE|C_T|CNT_int\(0))))) # (!\BANCO_VERDE|C_T|CNT_int\(1) & (\BANCO_VERDE|C_T|CNT_int\(0) & ((\BANCO_VERDE|C_T|CNT_int\(2)) # (!\BANCO_VERDE|C_T|CNT_int\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_VERDE|C_T|CNT_int\(2),
	datab => \BANCO_VERDE|C_T|CNT_int\(3),
	datac => \BANCO_VERDE|C_T|CNT_int\(1),
	datad => \BANCO_VERDE|C_T|CNT_int\(0),
	combout => \BANCO_VERDE|C_T|CNT_int~0_combout\);

-- Location: FF_X8_Y25_N13
\BANCO_VERDE|C_T|CNT_int[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \BANCO_VERDE|C_T|CNT_int~0_combout\,
	clrn => \Reset~input_o\,
	ena => \BANCO_VERDE|p_tot~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_VERDE|C_T|CNT_int\(1));

-- Location: FF_X5_Y25_N3
\BANCO_VERDE|R_T|Reg_Out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \BANCO_VERDE|C_T|CNT_int\(1),
	clrn => \Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_VERDE|R_T|Reg_Out\(1));

-- Location: LCCOMB_X6_Y25_N22
\MODULO_VISTAS|Mux18~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_VISTAS|Mux18~10_combout\ = (!\MODULO_VISTAS|Mux18~9_combout\ & ((\SW_Color[1]~input_o\) # (\MODULO_VISTAS|Mux18~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW_Color[1]~input_o\,
	datac => \MODULO_VISTAS|Mux18~8_combout\,
	datad => \MODULO_VISTAS|Mux18~9_combout\,
	combout => \MODULO_VISTAS|Mux18~10_combout\);

-- Location: LCCOMB_X5_Y25_N4
\MODULO_VISTAS|Mux18~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_VISTAS|Mux18~12_combout\ = (\MODULO_VISTAS|Mux18~11_combout\ & (((\BANCO_VERDE|R_T|Reg_Out\(1)) # (!\MODULO_VISTAS|Mux18~10_combout\)))) # (!\MODULO_VISTAS|Mux18~11_combout\ & (\BANCO_AZUL|R_T|Reg_Out\(1) & ((\MODULO_VISTAS|Mux18~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_VISTAS|Mux18~11_combout\,
	datab => \BANCO_AZUL|R_T|Reg_Out\(1),
	datac => \BANCO_VERDE|R_T|Reg_Out\(1),
	datad => \MODULO_VISTAS|Mux18~10_combout\,
	combout => \MODULO_VISTAS|Mux18~12_combout\);

-- Location: LCCOMB_X2_Y24_N18
\MODULO_VISTAS|Mux18~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_VISTAS|Mux18~13_combout\ = (\MODULO_VISTAS|Mux18~9_combout\ & (((\MODULO_VISTAS|Mux18~12_combout\)))) # (!\MODULO_VISTAS|Mux18~9_combout\ & (!\MODULO_VISTAS|Mux15~1_combout\ & ((\MODULO_VISTAS|Mux18~12_combout\) # 
-- (!\MODULO_VISTAS|Equal6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_VISTAS|Equal6~0_combout\,
	datab => \MODULO_VISTAS|Mux18~9_combout\,
	datac => \MODULO_VISTAS|Mux18~12_combout\,
	datad => \MODULO_VISTAS|Mux15~1_combout\,
	combout => \MODULO_VISTAS|Mux18~13_combout\);

-- Location: LCCOMB_X2_Y23_N8
\BANCO_AZUL|C_G|CNT_int[0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BANCO_AZUL|C_G|CNT_int[0]~3_combout\ = !\BANCO_AZUL|C_G|CNT_int\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BANCO_AZUL|C_G|CNT_int\(0),
	combout => \BANCO_AZUL|C_G|CNT_int[0]~3_combout\);

-- Location: LCCOMB_X2_Y23_N12
\BANCO_AZUL|p_gra~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BANCO_AZUL|p_gra~0_combout\ = (\SW_Tamano~input_o\ & \BANCO_AZUL|p_tot~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW_Tamano~input_o\,
	datac => \BANCO_AZUL|p_tot~0_combout\,
	combout => \BANCO_AZUL|p_gra~0_combout\);

-- Location: FF_X2_Y23_N9
\BANCO_AZUL|C_G|CNT_int[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \BANCO_AZUL|C_G|CNT_int[0]~3_combout\,
	clrn => \Reset~input_o\,
	ena => \BANCO_AZUL|p_gra~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_AZUL|C_G|CNT_int\(0));

-- Location: LCCOMB_X2_Y23_N0
\BANCO_AZUL|C_G|CNT_int[2]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BANCO_AZUL|C_G|CNT_int[2]~1_combout\ = \BANCO_AZUL|C_G|CNT_int\(2) $ (((\BANCO_AZUL|C_G|CNT_int\(1) & (\BANCO_AZUL|C_G|CNT_int\(0) & \BANCO_AZUL|p_gra~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_AZUL|C_G|CNT_int\(1),
	datab => \BANCO_AZUL|C_G|CNT_int\(0),
	datac => \BANCO_AZUL|C_G|CNT_int\(2),
	datad => \BANCO_AZUL|p_gra~0_combout\,
	combout => \BANCO_AZUL|C_G|CNT_int[2]~1_combout\);

-- Location: FF_X2_Y23_N1
\BANCO_AZUL|C_G|CNT_int[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \BANCO_AZUL|C_G|CNT_int[2]~1_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_AZUL|C_G|CNT_int\(2));

-- Location: LCCOMB_X2_Y23_N10
\BANCO_AZUL|C_G|CNT_int~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BANCO_AZUL|C_G|CNT_int~2_combout\ = (\BANCO_AZUL|C_G|CNT_int\(1) & (\BANCO_AZUL|C_G|CNT_int\(3) $ (((\BANCO_AZUL|C_G|CNT_int\(0) & \BANCO_AZUL|C_G|CNT_int\(2)))))) # (!\BANCO_AZUL|C_G|CNT_int\(1) & (\BANCO_AZUL|C_G|CNT_int\(3) & 
-- ((\BANCO_AZUL|C_G|CNT_int\(2)) # (!\BANCO_AZUL|C_G|CNT_int\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_AZUL|C_G|CNT_int\(1),
	datab => \BANCO_AZUL|C_G|CNT_int\(0),
	datac => \BANCO_AZUL|C_G|CNT_int\(3),
	datad => \BANCO_AZUL|C_G|CNT_int\(2),
	combout => \BANCO_AZUL|C_G|CNT_int~2_combout\);

-- Location: FF_X2_Y23_N11
\BANCO_AZUL|C_G|CNT_int[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \BANCO_AZUL|C_G|CNT_int~2_combout\,
	clrn => \Reset~input_o\,
	ena => \BANCO_AZUL|p_gra~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_AZUL|C_G|CNT_int\(3));

-- Location: LCCOMB_X2_Y23_N22
\BANCO_AZUL|C_G|CNT_int~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BANCO_AZUL|C_G|CNT_int~0_combout\ = (\BANCO_AZUL|C_G|CNT_int\(0) & (!\BANCO_AZUL|C_G|CNT_int\(1) & ((\BANCO_AZUL|C_G|CNT_int\(2)) # (!\BANCO_AZUL|C_G|CNT_int\(3))))) # (!\BANCO_AZUL|C_G|CNT_int\(0) & (((\BANCO_AZUL|C_G|CNT_int\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_AZUL|C_G|CNT_int\(3),
	datab => \BANCO_AZUL|C_G|CNT_int\(0),
	datac => \BANCO_AZUL|C_G|CNT_int\(1),
	datad => \BANCO_AZUL|C_G|CNT_int\(2),
	combout => \BANCO_AZUL|C_G|CNT_int~0_combout\);

-- Location: FF_X2_Y23_N23
\BANCO_AZUL|C_G|CNT_int[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \BANCO_AZUL|C_G|CNT_int~0_combout\,
	clrn => \Reset~input_o\,
	ena => \BANCO_AZUL|p_gra~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_AZUL|C_G|CNT_int\(1));

-- Location: FF_X2_Y24_N9
\BANCO_AZUL|R_G|Reg_Out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \BANCO_AZUL|C_G|CNT_int\(1),
	clrn => \Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_AZUL|R_G|Reg_Out\(1));

-- Location: LCCOMB_X6_Y24_N10
\MODULO_VISTAS|Mux18~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_VISTAS|Mux18~14_combout\ = (\SW_Modo[1]~input_o\ & (\SW_Modo[0]~input_o\)) # (!\SW_Modo[1]~input_o\ & (((\SW_Vista[0]~input_o\) # (!\SW_Vista[1]~input_o\)) # (!\SW_Modo[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW_Modo[1]~input_o\,
	datab => \SW_Modo[0]~input_o\,
	datac => \SW_Vista[1]~input_o\,
	datad => \SW_Vista[0]~input_o\,
	combout => \MODULO_VISTAS|Mux18~14_combout\);

-- Location: LCCOMB_X3_Y24_N28
\MODULO_VISTAS|Mux18~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_VISTAS|Mux18~15_combout\ = (\MODULO_VISTAS|Mux18~14_combout\) # (!\SW_Color[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW_Color[0]~input_o\,
	datad => \MODULO_VISTAS|Mux18~14_combout\,
	combout => \MODULO_VISTAS|Mux18~15_combout\);

-- Location: LCCOMB_X2_Y24_N8
\MODULO_VISTAS|Mux18~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_VISTAS|Mux18~16_combout\ = (\MODULO_VISTAS|Mux18~7_combout\ & (((\MODULO_VISTAS|Mux18~15_combout\)))) # (!\MODULO_VISTAS|Mux18~7_combout\ & ((\MODULO_VISTAS|Mux18~15_combout\ & (\MODULO_VISTAS|Mux18~13_combout\)) # 
-- (!\MODULO_VISTAS|Mux18~15_combout\ & ((\BANCO_AZUL|R_G|Reg_Out\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_VISTAS|Mux18~7_combout\,
	datab => \MODULO_VISTAS|Mux18~13_combout\,
	datac => \BANCO_AZUL|R_G|Reg_Out\(1),
	datad => \MODULO_VISTAS|Mux18~15_combout\,
	combout => \MODULO_VISTAS|Mux18~16_combout\);

-- Location: LCCOMB_X2_Y24_N2
\BANCO_ROJO|C_T|CNT_int[0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BANCO_ROJO|C_T|CNT_int[0]~3_combout\ = !\BANCO_ROJO|C_T|CNT_int\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BANCO_ROJO|C_T|CNT_int\(0),
	combout => \BANCO_ROJO|C_T|CNT_int[0]~3_combout\);

-- Location: FF_X2_Y24_N3
\BANCO_ROJO|C_T|CNT_int[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \BANCO_ROJO|C_T|CNT_int[0]~3_combout\,
	clrn => \Reset~input_o\,
	ena => \BANCO_ROJO|p_tot~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_ROJO|C_T|CNT_int\(0));

-- Location: LCCOMB_X2_Y24_N22
\BANCO_ROJO|C_T|CNT_int[2]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BANCO_ROJO|C_T|CNT_int[2]~1_combout\ = \BANCO_ROJO|C_T|CNT_int\(2) $ (((\BANCO_ROJO|p_tot~0_combout\ & (\BANCO_ROJO|C_T|CNT_int\(1) & \BANCO_ROJO|C_T|CNT_int\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_ROJO|p_tot~0_combout\,
	datab => \BANCO_ROJO|C_T|CNT_int\(1),
	datac => \BANCO_ROJO|C_T|CNT_int\(2),
	datad => \BANCO_ROJO|C_T|CNT_int\(0),
	combout => \BANCO_ROJO|C_T|CNT_int[2]~1_combout\);

-- Location: FF_X2_Y24_N23
\BANCO_ROJO|C_T|CNT_int[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \BANCO_ROJO|C_T|CNT_int[2]~1_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_ROJO|C_T|CNT_int\(2));

-- Location: LCCOMB_X2_Y24_N20
\BANCO_ROJO|C_T|CNT_int~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BANCO_ROJO|C_T|CNT_int~2_combout\ = (\BANCO_ROJO|C_T|CNT_int\(2) & (\BANCO_ROJO|C_T|CNT_int\(3) $ (((\BANCO_ROJO|C_T|CNT_int\(1) & \BANCO_ROJO|C_T|CNT_int\(0)))))) # (!\BANCO_ROJO|C_T|CNT_int\(2) & (\BANCO_ROJO|C_T|CNT_int\(3) & 
-- ((\BANCO_ROJO|C_T|CNT_int\(1)) # (!\BANCO_ROJO|C_T|CNT_int\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_ROJO|C_T|CNT_int\(2),
	datab => \BANCO_ROJO|C_T|CNT_int\(1),
	datac => \BANCO_ROJO|C_T|CNT_int\(3),
	datad => \BANCO_ROJO|C_T|CNT_int\(0),
	combout => \BANCO_ROJO|C_T|CNT_int~2_combout\);

-- Location: FF_X2_Y24_N21
\BANCO_ROJO|C_T|CNT_int[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \BANCO_ROJO|C_T|CNT_int~2_combout\,
	clrn => \Reset~input_o\,
	ena => \BANCO_ROJO|p_tot~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_ROJO|C_T|CNT_int\(3));

-- Location: LCCOMB_X2_Y24_N4
\BANCO_ROJO|C_T|CNT_int~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BANCO_ROJO|C_T|CNT_int~0_combout\ = (\BANCO_ROJO|C_T|CNT_int\(1) & (((!\BANCO_ROJO|C_T|CNT_int\(0))))) # (!\BANCO_ROJO|C_T|CNT_int\(1) & (\BANCO_ROJO|C_T|CNT_int\(0) & ((\BANCO_ROJO|C_T|CNT_int\(2)) # (!\BANCO_ROJO|C_T|CNT_int\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_ROJO|C_T|CNT_int\(2),
	datab => \BANCO_ROJO|C_T|CNT_int\(3),
	datac => \BANCO_ROJO|C_T|CNT_int\(1),
	datad => \BANCO_ROJO|C_T|CNT_int\(0),
	combout => \BANCO_ROJO|C_T|CNT_int~0_combout\);

-- Location: FF_X2_Y24_N5
\BANCO_ROJO|C_T|CNT_int[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \BANCO_ROJO|C_T|CNT_int~0_combout\,
	clrn => \Reset~input_o\,
	ena => \BANCO_ROJO|p_tot~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_ROJO|C_T|CNT_int\(1));

-- Location: FF_X2_Y24_N15
\BANCO_ROJO|R_T|Reg_Out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \BANCO_ROJO|C_T|CNT_int\(1),
	clrn => \Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_ROJO|R_T|Reg_Out\(1));

-- Location: LCCOMB_X2_Y24_N14
\MODULO_VISTAS|Mux18~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_VISTAS|Mux18~17_combout\ = (\MODULO_VISTAS|Mux18~16_combout\ & (((\BANCO_ROJO|R_T|Reg_Out\(1)) # (!\MODULO_VISTAS|Mux18~7_combout\)))) # (!\MODULO_VISTAS|Mux18~16_combout\ & (\BANCO_ROJO|R_G|Reg_Out\(1) & ((\MODULO_VISTAS|Mux18~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_ROJO|R_G|Reg_Out\(1),
	datab => \MODULO_VISTAS|Mux18~16_combout\,
	datac => \BANCO_ROJO|R_T|Reg_Out\(1),
	datad => \MODULO_VISTAS|Mux18~7_combout\,
	combout => \MODULO_VISTAS|Mux18~17_combout\);

-- Location: LCCOMB_X3_Y24_N10
\MODULO_VISTAS|Mux18~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_VISTAS|Mux18~18_combout\ = (\SW_Modo[1]~input_o\ & ((\MODULO_VISTAS|Mux18~15_combout\ & ((!\SW_Modo[0]~input_o\))) # (!\MODULO_VISTAS|Mux18~15_combout\ & (\MODULO_VISTAS|Mux18~17_combout\)))) # (!\SW_Modo[1]~input_o\ & 
-- (\MODULO_VISTAS|Mux18~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_VISTAS|Mux18~17_combout\,
	datab => \SW_Modo[1]~input_o\,
	datac => \SW_Modo[0]~input_o\,
	datad => \MODULO_VISTAS|Mux18~15_combout\,
	combout => \MODULO_VISTAS|Mux18~18_combout\);

-- Location: LCCOMB_X4_Y24_N22
\BANCO_AZUL|p_peq~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BANCO_AZUL|p_peq~0_combout\ = (\BANCO_AZUL|p_tot~0_combout\ & !\SW_Tamano~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_AZUL|p_tot~0_combout\,
	datac => \SW_Tamano~input_o\,
	combout => \BANCO_AZUL|p_peq~0_combout\);

-- Location: LCCOMB_X3_Y24_N24
\BANCO_AZUL|C_P|CNT_int[0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BANCO_AZUL|C_P|CNT_int[0]~3_combout\ = !\BANCO_AZUL|C_P|CNT_int\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BANCO_AZUL|C_P|CNT_int\(0),
	combout => \BANCO_AZUL|C_P|CNT_int[0]~3_combout\);

-- Location: FF_X3_Y24_N25
\BANCO_AZUL|C_P|CNT_int[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \BANCO_AZUL|C_P|CNT_int[0]~3_combout\,
	clrn => \Reset~input_o\,
	ena => \BANCO_AZUL|p_peq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_AZUL|C_P|CNT_int\(0));

-- Location: LCCOMB_X3_Y24_N4
\BANCO_AZUL|C_P|CNT_int[2]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BANCO_AZUL|C_P|CNT_int[2]~1_combout\ = \BANCO_AZUL|C_P|CNT_int\(2) $ (((\BANCO_AZUL|C_P|CNT_int\(1) & (\BANCO_AZUL|p_peq~0_combout\ & \BANCO_AZUL|C_P|CNT_int\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_AZUL|C_P|CNT_int\(1),
	datab => \BANCO_AZUL|p_peq~0_combout\,
	datac => \BANCO_AZUL|C_P|CNT_int\(2),
	datad => \BANCO_AZUL|C_P|CNT_int\(0),
	combout => \BANCO_AZUL|C_P|CNT_int[2]~1_combout\);

-- Location: FF_X3_Y24_N5
\BANCO_AZUL|C_P|CNT_int[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \BANCO_AZUL|C_P|CNT_int[2]~1_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_AZUL|C_P|CNT_int\(2));

-- Location: LCCOMB_X3_Y24_N26
\BANCO_AZUL|C_P|CNT_int~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BANCO_AZUL|C_P|CNT_int~2_combout\ = (\BANCO_AZUL|C_P|CNT_int\(1) & (\BANCO_AZUL|C_P|CNT_int\(3) $ (((\BANCO_AZUL|C_P|CNT_int\(2) & \BANCO_AZUL|C_P|CNT_int\(0)))))) # (!\BANCO_AZUL|C_P|CNT_int\(1) & (\BANCO_AZUL|C_P|CNT_int\(3) & 
-- ((\BANCO_AZUL|C_P|CNT_int\(2)) # (!\BANCO_AZUL|C_P|CNT_int\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_AZUL|C_P|CNT_int\(1),
	datab => \BANCO_AZUL|C_P|CNT_int\(2),
	datac => \BANCO_AZUL|C_P|CNT_int\(3),
	datad => \BANCO_AZUL|C_P|CNT_int\(0),
	combout => \BANCO_AZUL|C_P|CNT_int~2_combout\);

-- Location: FF_X3_Y24_N27
\BANCO_AZUL|C_P|CNT_int[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \BANCO_AZUL|C_P|CNT_int~2_combout\,
	clrn => \Reset~input_o\,
	ena => \BANCO_AZUL|p_peq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_AZUL|C_P|CNT_int\(3));

-- Location: LCCOMB_X3_Y24_N8
\BANCO_AZUL|C_P|CNT_int~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BANCO_AZUL|C_P|CNT_int~0_combout\ = (\BANCO_AZUL|C_P|CNT_int\(1) & (((!\BANCO_AZUL|C_P|CNT_int\(0))))) # (!\BANCO_AZUL|C_P|CNT_int\(1) & (\BANCO_AZUL|C_P|CNT_int\(0) & ((\BANCO_AZUL|C_P|CNT_int\(2)) # (!\BANCO_AZUL|C_P|CNT_int\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_AZUL|C_P|CNT_int\(3),
	datab => \BANCO_AZUL|C_P|CNT_int\(2),
	datac => \BANCO_AZUL|C_P|CNT_int\(1),
	datad => \BANCO_AZUL|C_P|CNT_int\(0),
	combout => \BANCO_AZUL|C_P|CNT_int~0_combout\);

-- Location: FF_X3_Y24_N9
\BANCO_AZUL|C_P|CNT_int[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \BANCO_AZUL|C_P|CNT_int~0_combout\,
	clrn => \Reset~input_o\,
	ena => \BANCO_AZUL|p_peq~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_AZUL|C_P|CNT_int\(1));

-- Location: FF_X3_Y24_N15
\BANCO_AZUL|R_P|Reg_Out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \BANCO_AZUL|C_P|CNT_int\(1),
	clrn => \Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_AZUL|R_P|Reg_Out\(1));

-- Location: LCCOMB_X7_Y25_N2
\MODULO_VISTAS|Mux18~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_VISTAS|Mux18~19_combout\ = ((!\SW_Modo[0]~input_o\ & ((\SW_Tamano~input_o\) # (!\SW_Modo[1]~input_o\)))) # (!\SW_Color[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW_Modo[0]~input_o\,
	datab => \SW_Modo[1]~input_o\,
	datac => \SW_Tamano~input_o\,
	datad => \SW_Color[0]~input_o\,
	combout => \MODULO_VISTAS|Mux18~19_combout\);

-- Location: LCCOMB_X7_Y25_N4
\MODULO_VISTAS|Mux18~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_VISTAS|Mux18~20_combout\ = (\MODULO_VISTAS|Mux18~19_combout\) # ((\SW_Modo[0]~input_o\ & ((\SW_Vista[1]~input_o\) # (!\MODULO_VISTAS|Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_VISTAS|Mux10~0_combout\,
	datab => \SW_Vista[1]~input_o\,
	datac => \SW_Modo[0]~input_o\,
	datad => \MODULO_VISTAS|Mux18~19_combout\,
	combout => \MODULO_VISTAS|Mux18~20_combout\);

-- Location: LCCOMB_X3_Y24_N14
\MODULO_VISTAS|Mux18~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_VISTAS|Mux18~21_combout\ = (\MODULO_VISTAS|Mux18~5_combout\ & (((\MODULO_VISTAS|Mux18~20_combout\)))) # (!\MODULO_VISTAS|Mux18~5_combout\ & ((\MODULO_VISTAS|Mux18~20_combout\ & (\MODULO_VISTAS|Mux18~18_combout\)) # 
-- (!\MODULO_VISTAS|Mux18~20_combout\ & ((\BANCO_AZUL|R_P|Reg_Out\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_VISTAS|Mux18~18_combout\,
	datab => \MODULO_VISTAS|Mux18~5_combout\,
	datac => \BANCO_AZUL|R_P|Reg_Out\(1),
	datad => \MODULO_VISTAS|Mux18~20_combout\,
	combout => \MODULO_VISTAS|Mux18~21_combout\);

-- Location: LCCOMB_X4_Y25_N0
\MODULO_VISTAS|Mux18~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_VISTAS|Mux18~22_combout\ = (\MODULO_VISTAS|Mux18~5_combout\ & ((\MODULO_VISTAS|Mux18~21_combout\ & ((\BANCO_VERDE|R_G|Reg_Out\(1)))) # (!\MODULO_VISTAS|Mux18~21_combout\ & (\BANCO_ROJO|R_P|Reg_Out\(1))))) # (!\MODULO_VISTAS|Mux18~5_combout\ & 
-- (((\MODULO_VISTAS|Mux18~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_VISTAS|Mux18~5_combout\,
	datab => \BANCO_ROJO|R_P|Reg_Out\(1),
	datac => \BANCO_VERDE|R_G|Reg_Out\(1),
	datad => \MODULO_VISTAS|Mux18~21_combout\,
	combout => \MODULO_VISTAS|Mux18~22_combout\);

-- Location: LCCOMB_X4_Y25_N2
\MODULO_VISTAS|Mux18~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_VISTAS|Mux18~23_combout\ = (\MODULO_VISTAS|Mux18~24_combout\ & (\BANCO_VERDE|R_P|Reg_Out\(1))) # (!\MODULO_VISTAS|Mux18~24_combout\ & ((\MODULO_VISTAS|Mux18~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_VISTAS|Mux18~24_combout\,
	datac => \BANCO_VERDE|R_P|Reg_Out\(1),
	datad => \MODULO_VISTAS|Mux18~22_combout\,
	combout => \MODULO_VISTAS|Mux18~23_combout\);

-- Location: FF_X4_Y25_N21
\BANCO_ROJO|R_P|Reg_Out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \BANCO_ROJO|C_P|CNT_int\(3),
	clrn => \Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_ROJO|R_P|Reg_Out\(3));

-- Location: FF_X4_Y25_N13
\BANCO_VERDE|R_G|Reg_Out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \BANCO_VERDE|C_G|CNT_int\(3),
	clrn => \Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_VERDE|R_G|Reg_Out\(3));

-- Location: FF_X2_Y24_N11
\BANCO_ROJO|R_G|Reg_Out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \BANCO_ROJO|C_G|CNT_int\(3),
	clrn => \Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_ROJO|R_G|Reg_Out\(3));

-- Location: FF_X2_Y24_N17
\BANCO_AZUL|R_G|Reg_Out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \BANCO_AZUL|C_G|CNT_int\(3),
	clrn => \Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_AZUL|R_G|Reg_Out\(3));

-- Location: LCCOMB_X2_Y24_N16
\MODULO_VISTAS|Mux16~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_VISTAS|Mux16~5_combout\ = (\MODULO_VISTAS|Mux18~15_combout\ & (((\MODULO_VISTAS|Mux18~7_combout\)))) # (!\MODULO_VISTAS|Mux18~15_combout\ & ((\MODULO_VISTAS|Mux18~7_combout\ & (\BANCO_ROJO|R_G|Reg_Out\(3))) # (!\MODULO_VISTAS|Mux18~7_combout\ & 
-- ((\BANCO_AZUL|R_G|Reg_Out\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_ROJO|R_G|Reg_Out\(3),
	datab => \MODULO_VISTAS|Mux18~15_combout\,
	datac => \BANCO_AZUL|R_G|Reg_Out\(3),
	datad => \MODULO_VISTAS|Mux18~7_combout\,
	combout => \MODULO_VISTAS|Mux16~5_combout\);

-- Location: FF_X6_Y25_N29
\BANCO_AZUL|R_T|Reg_Out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \BANCO_AZUL|C_T|CNT_int\(3),
	clrn => \Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_AZUL|R_T|Reg_Out\(3));

-- Location: FF_X8_Y25_N25
\BANCO_VERDE|R_T|Reg_Out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \BANCO_VERDE|C_T|CNT_int\(3),
	clrn => \Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_VERDE|R_T|Reg_Out\(3));

-- Location: FF_X6_Y25_N21
\R_TT_U|Reg_Out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \C_TT_U|CNT_int\(3),
	clrn => \Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R_TT_U|Reg_Out\(3));

-- Location: LCCOMB_X6_Y25_N24
\MODULO_VISTAS|Mux16~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_VISTAS|Mux16~2_combout\ = (\MODULO_VISTAS|Mux18~8_combout\ & (\MODULO_VISTAS|Mux18~9_combout\ & ((\R_TT_U|Reg_Out\(3))))) # (!\MODULO_VISTAS|Mux18~8_combout\ & (((!\MODULO_VISTAS|Mux15~0_combout\)) # (!\MODULO_VISTAS|Mux18~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_VISTAS|Mux18~8_combout\,
	datab => \MODULO_VISTAS|Mux18~9_combout\,
	datac => \MODULO_VISTAS|Mux15~0_combout\,
	datad => \R_TT_U|Reg_Out\(3),
	combout => \MODULO_VISTAS|Mux16~2_combout\);

-- Location: LCCOMB_X6_Y25_N14
\MODULO_VISTAS|Mux16~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_VISTAS|Mux16~3_combout\ = (\MODULO_VISTAS|Mux18~10_combout\ & ((\MODULO_VISTAS|Mux16~2_combout\ & ((\BANCO_VERDE|R_T|Reg_Out\(3)))) # (!\MODULO_VISTAS|Mux16~2_combout\ & (\BANCO_AZUL|R_T|Reg_Out\(3))))) # (!\MODULO_VISTAS|Mux18~10_combout\ & 
-- (((\MODULO_VISTAS|Mux16~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_VISTAS|Mux18~10_combout\,
	datab => \BANCO_AZUL|R_T|Reg_Out\(3),
	datac => \BANCO_VERDE|R_T|Reg_Out\(3),
	datad => \MODULO_VISTAS|Mux16~2_combout\,
	combout => \MODULO_VISTAS|Mux16~3_combout\);

-- Location: LCCOMB_X2_Y24_N28
\MODULO_VISTAS|Mux16~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_VISTAS|Mux16~4_combout\ = (\MODULO_VISTAS|Mux18~9_combout\ & (((\MODULO_VISTAS|Mux16~3_combout\)))) # (!\MODULO_VISTAS|Mux18~9_combout\ & (!\MODULO_VISTAS|Mux15~1_combout\ & ((\MODULO_VISTAS|Mux16~3_combout\) # 
-- (!\MODULO_VISTAS|Equal6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_VISTAS|Equal6~0_combout\,
	datab => \MODULO_VISTAS|Mux15~1_combout\,
	datac => \MODULO_VISTAS|Mux16~3_combout\,
	datad => \MODULO_VISTAS|Mux18~9_combout\,
	combout => \MODULO_VISTAS|Mux16~4_combout\);

-- Location: FF_X3_Y24_N19
\BANCO_ROJO|R_T|Reg_Out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \BANCO_ROJO|C_T|CNT_int\(3),
	clrn => \Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_ROJO|R_T|Reg_Out\(3));

-- Location: LCCOMB_X3_Y24_N18
\MODULO_VISTAS|Mux16~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_VISTAS|Mux16~6_combout\ = (\MODULO_VISTAS|Mux16~5_combout\ & (((\BANCO_ROJO|R_T|Reg_Out\(3)) # (!\MODULO_VISTAS|Mux18~15_combout\)))) # (!\MODULO_VISTAS|Mux16~5_combout\ & (\MODULO_VISTAS|Mux16~4_combout\ & ((\MODULO_VISTAS|Mux18~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_VISTAS|Mux16~5_combout\,
	datab => \MODULO_VISTAS|Mux16~4_combout\,
	datac => \BANCO_ROJO|R_T|Reg_Out\(3),
	datad => \MODULO_VISTAS|Mux18~15_combout\,
	combout => \MODULO_VISTAS|Mux16~6_combout\);

-- Location: LCCOMB_X3_Y24_N12
\MODULO_VISTAS|Mux16~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_VISTAS|Mux16~10_combout\ = (\MODULO_VISTAS|Mux16~6_combout\ & (((!\MODULO_VISTAS|Mux18~14_combout\ & \SW_Color[0]~input_o\)) # (!\SW_Modo[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_VISTAS|Mux18~14_combout\,
	datab => \SW_Modo[1]~input_o\,
	datac => \SW_Color[0]~input_o\,
	datad => \MODULO_VISTAS|Mux16~6_combout\,
	combout => \MODULO_VISTAS|Mux16~10_combout\);

-- Location: FF_X3_Y24_N1
\BANCO_AZUL|R_P|Reg_Out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \BANCO_AZUL|C_P|CNT_int\(3),
	clrn => \Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_AZUL|R_P|Reg_Out\(3));

-- Location: LCCOMB_X3_Y24_N0
\MODULO_VISTAS|Mux16~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_VISTAS|Mux16~7_combout\ = (\MODULO_VISTAS|Mux18~5_combout\ & (((\MODULO_VISTAS|Mux18~20_combout\)))) # (!\MODULO_VISTAS|Mux18~5_combout\ & ((\MODULO_VISTAS|Mux18~20_combout\ & (\MODULO_VISTAS|Mux16~10_combout\)) # 
-- (!\MODULO_VISTAS|Mux18~20_combout\ & ((\BANCO_AZUL|R_P|Reg_Out\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_VISTAS|Mux16~10_combout\,
	datab => \MODULO_VISTAS|Mux18~5_combout\,
	datac => \BANCO_AZUL|R_P|Reg_Out\(3),
	datad => \MODULO_VISTAS|Mux18~20_combout\,
	combout => \MODULO_VISTAS|Mux16~7_combout\);

-- Location: LCCOMB_X4_Y25_N12
\MODULO_VISTAS|Mux16~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_VISTAS|Mux16~8_combout\ = (\MODULO_VISTAS|Mux18~5_combout\ & ((\MODULO_VISTAS|Mux16~7_combout\ & ((\BANCO_VERDE|R_G|Reg_Out\(3)))) # (!\MODULO_VISTAS|Mux16~7_combout\ & (\BANCO_ROJO|R_P|Reg_Out\(3))))) # (!\MODULO_VISTAS|Mux18~5_combout\ & 
-- (((\MODULO_VISTAS|Mux16~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_VISTAS|Mux18~5_combout\,
	datab => \BANCO_ROJO|R_P|Reg_Out\(3),
	datac => \BANCO_VERDE|R_G|Reg_Out\(3),
	datad => \MODULO_VISTAS|Mux16~7_combout\,
	combout => \MODULO_VISTAS|Mux16~8_combout\);

-- Location: FF_X4_Y25_N25
\BANCO_VERDE|R_P|Reg_Out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \BANCO_VERDE|C_P|CNT_int\(3),
	clrn => \Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_VERDE|R_P|Reg_Out\(3));

-- Location: LCCOMB_X2_Y24_N26
\BANCO_ROJO|R_P|Reg_Out[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BANCO_ROJO|R_P|Reg_Out[2]~feeder_combout\ = \BANCO_ROJO|C_P|CNT_int\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BANCO_ROJO|C_P|CNT_int\(2),
	combout => \BANCO_ROJO|R_P|Reg_Out[2]~feeder_combout\);

-- Location: FF_X2_Y24_N27
\BANCO_ROJO|R_P|Reg_Out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \BANCO_ROJO|R_P|Reg_Out[2]~feeder_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_ROJO|R_P|Reg_Out\(2));

-- Location: FF_X3_Y24_N7
\BANCO_AZUL|R_P|Reg_Out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \BANCO_AZUL|C_P|CNT_int\(2),
	clrn => \Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_AZUL|R_P|Reg_Out\(2));

-- Location: LCCOMB_X3_Y24_N6
\MODULO_VISTAS|Mux17~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_VISTAS|Mux17~6_combout\ = (\MODULO_VISTAS|Mux18~5_combout\ & ((\BANCO_ROJO|R_P|Reg_Out\(2)) # ((\MODULO_VISTAS|Mux18~20_combout\)))) # (!\MODULO_VISTAS|Mux18~5_combout\ & (((\BANCO_AZUL|R_P|Reg_Out\(2) & !\MODULO_VISTAS|Mux18~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_ROJO|R_P|Reg_Out\(2),
	datab => \MODULO_VISTAS|Mux18~5_combout\,
	datac => \BANCO_AZUL|R_P|Reg_Out\(2),
	datad => \MODULO_VISTAS|Mux18~20_combout\,
	combout => \MODULO_VISTAS|Mux17~6_combout\);

-- Location: LCCOMB_X6_Y25_N10
\BANCO_AZUL|R_T|Reg_Out[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BANCO_AZUL|R_T|Reg_Out[2]~feeder_combout\ = \BANCO_AZUL|C_T|CNT_int\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BANCO_AZUL|C_T|CNT_int\(2),
	combout => \BANCO_AZUL|R_T|Reg_Out[2]~feeder_combout\);

-- Location: FF_X6_Y25_N11
\BANCO_AZUL|R_T|Reg_Out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \BANCO_AZUL|R_T|Reg_Out[2]~feeder_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_AZUL|R_T|Reg_Out\(2));

-- Location: FF_X6_Y25_N1
\R_TT_U|Reg_Out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \C_TT_U|CNT_int\(2),
	clrn => \Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R_TT_U|Reg_Out\(2));

-- Location: LCCOMB_X6_Y25_N4
\MODULO_VISTAS|Mux17~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_VISTAS|Mux17~0_combout\ = (\MODULO_VISTAS|Mux18~8_combout\ & (\MODULO_VISTAS|Mux18~9_combout\ & ((\R_TT_U|Reg_Out\(2))))) # (!\MODULO_VISTAS|Mux18~8_combout\ & (((!\MODULO_VISTAS|Mux15~0_combout\)) # (!\MODULO_VISTAS|Mux18~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_VISTAS|Mux18~8_combout\,
	datab => \MODULO_VISTAS|Mux18~9_combout\,
	datac => \MODULO_VISTAS|Mux15~0_combout\,
	datad => \R_TT_U|Reg_Out\(2),
	combout => \MODULO_VISTAS|Mux17~0_combout\);

-- Location: FF_X6_Y25_N7
\BANCO_VERDE|R_T|Reg_Out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \BANCO_VERDE|C_T|CNT_int\(2),
	clrn => \Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_VERDE|R_T|Reg_Out\(2));

-- Location: LCCOMB_X6_Y25_N30
\MODULO_VISTAS|Mux17~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_VISTAS|Mux17~1_combout\ = (\MODULO_VISTAS|Mux18~10_combout\ & ((\MODULO_VISTAS|Mux17~0_combout\ & ((\BANCO_VERDE|R_T|Reg_Out\(2)))) # (!\MODULO_VISTAS|Mux17~0_combout\ & (\BANCO_AZUL|R_T|Reg_Out\(2))))) # (!\MODULO_VISTAS|Mux18~10_combout\ & 
-- (((\MODULO_VISTAS|Mux17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_VISTAS|Mux18~10_combout\,
	datab => \BANCO_AZUL|R_T|Reg_Out\(2),
	datac => \MODULO_VISTAS|Mux17~0_combout\,
	datad => \BANCO_VERDE|R_T|Reg_Out\(2),
	combout => \MODULO_VISTAS|Mux17~1_combout\);

-- Location: LCCOMB_X2_Y24_N0
\MODULO_VISTAS|Mux17~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_VISTAS|Mux17~2_combout\ = (\MODULO_VISTAS|Mux18~9_combout\ & (\MODULO_VISTAS|Mux17~1_combout\)) # (!\MODULO_VISTAS|Mux18~9_combout\ & (!\MODULO_VISTAS|Mux15~1_combout\ & ((\MODULO_VISTAS|Mux17~1_combout\) # (!\MODULO_VISTAS|Equal6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_VISTAS|Mux17~1_combout\,
	datab => \MODULO_VISTAS|Mux15~1_combout\,
	datac => \MODULO_VISTAS|Equal6~0_combout\,
	datad => \MODULO_VISTAS|Mux18~9_combout\,
	combout => \MODULO_VISTAS|Mux17~2_combout\);

-- Location: FF_X2_Y24_N31
\BANCO_AZUL|R_G|Reg_Out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \BANCO_AZUL|C_G|CNT_int\(2),
	clrn => \Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_AZUL|R_G|Reg_Out\(2));

-- Location: LCCOMB_X2_Y24_N30
\MODULO_VISTAS|Mux17~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_VISTAS|Mux17~3_combout\ = (\MODULO_VISTAS|Mux18~7_combout\ & (((\MODULO_VISTAS|Mux18~15_combout\)))) # (!\MODULO_VISTAS|Mux18~7_combout\ & ((\MODULO_VISTAS|Mux18~15_combout\ & (\MODULO_VISTAS|Mux17~2_combout\)) # (!\MODULO_VISTAS|Mux18~15_combout\ 
-- & ((\BANCO_AZUL|R_G|Reg_Out\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_VISTAS|Mux18~7_combout\,
	datab => \MODULO_VISTAS|Mux17~2_combout\,
	datac => \BANCO_AZUL|R_G|Reg_Out\(2),
	datad => \MODULO_VISTAS|Mux18~15_combout\,
	combout => \MODULO_VISTAS|Mux17~3_combout\);

-- Location: FF_X2_Y24_N13
\BANCO_ROJO|R_G|Reg_Out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \BANCO_ROJO|C_G|CNT_int\(2),
	clrn => \Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_ROJO|R_G|Reg_Out\(2));

-- Location: FF_X2_Y24_N25
\BANCO_ROJO|R_T|Reg_Out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \BANCO_ROJO|C_T|CNT_int\(2),
	clrn => \Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_ROJO|R_T|Reg_Out\(2));

-- Location: LCCOMB_X2_Y24_N24
\MODULO_VISTAS|Mux17~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_VISTAS|Mux17~4_combout\ = (\MODULO_VISTAS|Mux17~3_combout\ & (((\BANCO_ROJO|R_T|Reg_Out\(2)) # (!\MODULO_VISTAS|Mux18~7_combout\)))) # (!\MODULO_VISTAS|Mux17~3_combout\ & (\BANCO_ROJO|R_G|Reg_Out\(2) & ((\MODULO_VISTAS|Mux18~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_VISTAS|Mux17~3_combout\,
	datab => \BANCO_ROJO|R_G|Reg_Out\(2),
	datac => \BANCO_ROJO|R_T|Reg_Out\(2),
	datad => \MODULO_VISTAS|Mux18~7_combout\,
	combout => \MODULO_VISTAS|Mux17~4_combout\);

-- Location: LCCOMB_X3_Y24_N16
\MODULO_VISTAS|Mux17~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_VISTAS|Mux17~5_combout\ = (\SW_Modo[1]~input_o\ & ((\SW_Modo[0]~input_o\) # ((\MODULO_VISTAS|Mux17~4_combout\ & !\MODULO_VISTAS|Mux18~15_combout\)))) # (!\SW_Modo[1]~input_o\ & (\MODULO_VISTAS|Mux17~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_VISTAS|Mux17~4_combout\,
	datab => \SW_Modo[1]~input_o\,
	datac => \SW_Modo[0]~input_o\,
	datad => \MODULO_VISTAS|Mux18~15_combout\,
	combout => \MODULO_VISTAS|Mux17~5_combout\);

-- Location: FF_X3_Y24_N21
\BANCO_VERDE|R_G|Reg_Out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \BANCO_VERDE|C_G|CNT_int\(2),
	clrn => \Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_VERDE|R_G|Reg_Out\(2));

-- Location: LCCOMB_X3_Y24_N20
\MODULO_VISTAS|Mux17~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_VISTAS|Mux17~7_combout\ = (\MODULO_VISTAS|Mux17~6_combout\ & (((\BANCO_VERDE|R_G|Reg_Out\(2)) # (!\MODULO_VISTAS|Mux18~20_combout\)))) # (!\MODULO_VISTAS|Mux17~6_combout\ & (\MODULO_VISTAS|Mux17~5_combout\ & ((\MODULO_VISTAS|Mux18~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_VISTAS|Mux17~6_combout\,
	datab => \MODULO_VISTAS|Mux17~5_combout\,
	datac => \BANCO_VERDE|R_G|Reg_Out\(2),
	datad => \MODULO_VISTAS|Mux18~20_combout\,
	combout => \MODULO_VISTAS|Mux17~7_combout\);

-- Location: FF_X4_Y25_N23
\BANCO_VERDE|R_P|Reg_Out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \BANCO_VERDE|C_P|CNT_int\(2),
	clrn => \Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_VERDE|R_P|Reg_Out\(2));

-- Location: LCCOMB_X4_Y25_N22
\MODULO_VISTAS|Mux17~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_VISTAS|Mux17~8_combout\ = (\MODULO_VISTAS|Mux18~4_combout\ & ((\MODULO_LEDS|LEDG[4]~24_combout\ & ((\BANCO_VERDE|R_P|Reg_Out\(2)))) # (!\MODULO_LEDS|LEDG[4]~24_combout\ & (\MODULO_VISTAS|Mux17~7_combout\)))) # (!\MODULO_VISTAS|Mux18~4_combout\ & 
-- (\MODULO_VISTAS|Mux17~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_VISTAS|Mux17~7_combout\,
	datab => \MODULO_VISTAS|Mux18~4_combout\,
	datac => \BANCO_VERDE|R_P|Reg_Out\(2),
	datad => \MODULO_LEDS|LEDG[4]~24_combout\,
	combout => \MODULO_VISTAS|Mux17~8_combout\);

-- Location: LCCOMB_X4_Y25_N28
\DECO_0|Mux6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DECO_0|Mux6~1_combout\ = (!\MODULO_VISTAS|Mux17~8_combout\ & ((\MODULO_VISTAS|Mux18~24_combout\ & ((!\BANCO_VERDE|R_P|Reg_Out\(3)))) # (!\MODULO_VISTAS|Mux18~24_combout\ & (!\MODULO_VISTAS|Mux16~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_VISTAS|Mux16~8_combout\,
	datab => \BANCO_VERDE|R_P|Reg_Out\(3),
	datac => \MODULO_VISTAS|Mux17~8_combout\,
	datad => \MODULO_VISTAS|Mux18~24_combout\,
	combout => \DECO_0|Mux6~1_combout\);

-- Location: LCCOMB_X4_Y25_N20
\MODULO_VISTAS|Mux16~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_VISTAS|Mux16~9_combout\ = (\MODULO_VISTAS|Mux18~24_combout\ & ((\BANCO_VERDE|R_P|Reg_Out\(3)))) # (!\MODULO_VISTAS|Mux18~24_combout\ & (\MODULO_VISTAS|Mux16~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_VISTAS|Mux16~8_combout\,
	datab => \BANCO_VERDE|R_P|Reg_Out\(3),
	datad => \MODULO_VISTAS|Mux18~24_combout\,
	combout => \MODULO_VISTAS|Mux16~9_combout\);

-- Location: LCCOMB_X1_Y24_N24
\BANCO_ROJO|R_G|Reg_Out[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BANCO_ROJO|R_G|Reg_Out[0]~feeder_combout\ = \BANCO_ROJO|C_G|CNT_int\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BANCO_ROJO|C_G|CNT_int\(0),
	combout => \BANCO_ROJO|R_G|Reg_Out[0]~feeder_combout\);

-- Location: FF_X1_Y24_N25
\BANCO_ROJO|R_G|Reg_Out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \BANCO_ROJO|R_G|Reg_Out[0]~feeder_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_ROJO|R_G|Reg_Out\(0));

-- Location: FF_X1_Y25_N29
\BANCO_ROJO|R_T|Reg_Out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \BANCO_ROJO|C_T|CNT_int\(0),
	clrn => \Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_ROJO|R_T|Reg_Out\(0));

-- Location: LCCOMB_X1_Y25_N14
\MODULO_VISTAS|Mux19~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_VISTAS|Mux19~4_combout\ = (!\SW_Color[1]~input_o\ & ((\SW_Vista[1]~input_o\ & (\BANCO_ROJO|R_G|Reg_Out\(0))) # (!\SW_Vista[1]~input_o\ & ((\BANCO_ROJO|R_T|Reg_Out\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW_Vista[1]~input_o\,
	datab => \BANCO_ROJO|R_G|Reg_Out\(0),
	datac => \SW_Color[1]~input_o\,
	datad => \BANCO_ROJO|R_T|Reg_Out\(0),
	combout => \MODULO_VISTAS|Mux19~4_combout\);

-- Location: FF_X2_Y25_N21
\BANCO_AZUL|R_T|Reg_Out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \BANCO_AZUL|C_T|CNT_int\(0),
	clrn => \Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_AZUL|R_T|Reg_Out\(0));

-- Location: FF_X2_Y25_N11
\BANCO_AZUL|R_G|Reg_Out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \BANCO_AZUL|C_G|CNT_int\(0),
	clrn => \Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_AZUL|R_G|Reg_Out\(0));

-- Location: LCCOMB_X2_Y25_N20
\MODULO_VISTAS|Mux19~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_VISTAS|Mux19~5_combout\ = (\SW_Color[1]~input_o\ & ((\SW_Vista[1]~input_o\ & ((\BANCO_AZUL|R_G|Reg_Out\(0)))) # (!\SW_Vista[1]~input_o\ & (\BANCO_AZUL|R_T|Reg_Out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW_Color[1]~input_o\,
	datab => \SW_Vista[1]~input_o\,
	datac => \BANCO_AZUL|R_T|Reg_Out\(0),
	datad => \BANCO_AZUL|R_G|Reg_Out\(0),
	combout => \MODULO_VISTAS|Mux19~5_combout\);

-- Location: FF_X2_Y25_N25
\BANCO_VERDE|R_G|Reg_Out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \BANCO_VERDE|C_G|CNT_int\(0),
	clrn => \Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_VERDE|R_G|Reg_Out\(0));

-- Location: LCCOMB_X7_Y25_N8
\BANCO_VERDE|R_T|Reg_Out[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BANCO_VERDE|R_T|Reg_Out[0]~feeder_combout\ = \BANCO_VERDE|C_T|CNT_int\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BANCO_VERDE|C_T|CNT_int\(0),
	combout => \BANCO_VERDE|R_T|Reg_Out[0]~feeder_combout\);

-- Location: FF_X7_Y25_N9
\BANCO_VERDE|R_T|Reg_Out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \BANCO_VERDE|R_T|Reg_Out[0]~feeder_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_VERDE|R_T|Reg_Out\(0));

-- Location: LCCOMB_X2_Y25_N24
\MODULO_VISTAS|Mux19~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_VISTAS|Mux19~3_combout\ = (\MODULO_LEDS|LEDG[4]~24_combout\ & ((\SW_Vista[1]~input_o\ & (\BANCO_VERDE|R_G|Reg_Out\(0))) # (!\SW_Vista[1]~input_o\ & ((\BANCO_VERDE|R_T|Reg_Out\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_LEDS|LEDG[4]~24_combout\,
	datab => \SW_Vista[1]~input_o\,
	datac => \BANCO_VERDE|R_G|Reg_Out\(0),
	datad => \BANCO_VERDE|R_T|Reg_Out\(0),
	combout => \MODULO_VISTAS|Mux19~3_combout\);

-- Location: LCCOMB_X2_Y25_N22
\MODULO_VISTAS|Mux19~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_VISTAS|Mux19~6_combout\ = (\MODULO_VISTAS|Mux19~3_combout\) # ((\SW_Color[0]~input_o\ & ((\MODULO_VISTAS|Mux19~4_combout\) # (\MODULO_VISTAS|Mux19~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_VISTAS|Mux19~4_combout\,
	datab => \MODULO_VISTAS|Mux19~5_combout\,
	datac => \SW_Color[0]~input_o\,
	datad => \MODULO_VISTAS|Mux19~3_combout\,
	combout => \MODULO_VISTAS|Mux19~6_combout\);

-- Location: LCCOMB_X2_Y25_N14
\R_TT_U|Reg_Out[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R_TT_U|Reg_Out[0]~feeder_combout\ = \C_TT_U|CNT_int\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C_TT_U|CNT_int\(0),
	combout => \R_TT_U|Reg_Out[0]~feeder_combout\);

-- Location: FF_X2_Y25_N15
\R_TT_U|Reg_Out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \R_TT_U|Reg_Out[0]~feeder_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R_TT_U|Reg_Out\(0));

-- Location: FF_X4_Y25_N11
\BANCO_VERDE|R_P|Reg_Out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \BANCO_VERDE|C_P|CNT_int\(0),
	clrn => \Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_VERDE|R_P|Reg_Out\(0));

-- Location: LCCOMB_X1_Y25_N0
\BANCO_ROJO|R_P|Reg_Out[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BANCO_ROJO|R_P|Reg_Out[0]~feeder_combout\ = \BANCO_ROJO|C_P|CNT_int\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BANCO_ROJO|C_P|CNT_int\(0),
	combout => \BANCO_ROJO|R_P|Reg_Out[0]~feeder_combout\);

-- Location: FF_X1_Y25_N1
\BANCO_ROJO|R_P|Reg_Out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \BANCO_ROJO|R_P|Reg_Out[0]~feeder_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_ROJO|R_P|Reg_Out\(0));

-- Location: FF_X2_Y25_N5
\BANCO_AZUL|R_P|Reg_Out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \BANCO_AZUL|C_P|CNT_int\(0),
	clrn => \Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCO_AZUL|R_P|Reg_Out\(0));

-- Location: LCCOMB_X1_Y25_N26
\MODULO_VISTAS|Mux19~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_VISTAS|Mux19~0_combout\ = (\SW_Color[0]~input_o\ & ((\SW_Color[1]~input_o\ & ((\BANCO_AZUL|R_P|Reg_Out\(0)))) # (!\SW_Color[1]~input_o\ & (\BANCO_ROJO|R_P|Reg_Out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW_Color[0]~input_o\,
	datab => \BANCO_ROJO|R_P|Reg_Out\(0),
	datac => \SW_Color[1]~input_o\,
	datad => \BANCO_AZUL|R_P|Reg_Out\(0),
	combout => \MODULO_VISTAS|Mux19~0_combout\);

-- Location: LCCOMB_X4_Y25_N6
\MODULO_VISTAS|Mux19~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_VISTAS|Mux19~1_combout\ = (\MODULO_VISTAS|Mux18~2_combout\ & ((\MODULO_VISTAS|Mux19~0_combout\) # ((\MODULO_LEDS|LEDG[4]~24_combout\ & \BANCO_VERDE|R_P|Reg_Out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_LEDS|LEDG[4]~24_combout\,
	datab => \BANCO_VERDE|R_P|Reg_Out\(0),
	datac => \MODULO_VISTAS|Mux18~2_combout\,
	datad => \MODULO_VISTAS|Mux19~0_combout\,
	combout => \MODULO_VISTAS|Mux19~1_combout\);

-- Location: LCCOMB_X3_Y25_N16
\MODULO_VISTAS|Mux19~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_VISTAS|Mux19~2_combout\ = (\MODULO_VISTAS|Mux19~1_combout\) # ((\R_TT_U|Reg_Out\(0) & (\SW_Vista[0]~input_o\ & \SW_Vista[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_TT_U|Reg_Out\(0),
	datab => \SW_Vista[0]~input_o\,
	datac => \SW_Vista[1]~input_o\,
	datad => \MODULO_VISTAS|Mux19~1_combout\,
	combout => \MODULO_VISTAS|Mux19~2_combout\);

-- Location: LCCOMB_X3_Y25_N6
\MODULO_VISTAS|Mux19~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_VISTAS|Mux19~7_combout\ = (\SW_Modo[0]~input_o\ & ((\MODULO_VISTAS|Mux19~2_combout\) # ((\MODULO_VISTAS|Mux19~6_combout\ & !\SW_Vista[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW_Modo[0]~input_o\,
	datab => \MODULO_VISTAS|Mux19~6_combout\,
	datac => \SW_Vista[0]~input_o\,
	datad => \MODULO_VISTAS|Mux19~2_combout\,
	combout => \MODULO_VISTAS|Mux19~7_combout\);

-- Location: FF_X2_Y25_N13
\MODULO_ENRUTADOR|last_size_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \SW_Tamano~input_o\,
	clrn => \Reset~input_o\,
	sload => VCC,
	ena => \MODULO_ENRUTADOR|pulse_tot~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MODULO_ENRUTADOR|last_size_reg~q\);

-- Location: LCCOMB_X2_Y25_N12
\MODULO_VISTAS|Mux19~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_VISTAS|Mux19~8_combout\ = (\SW_Vista[0]~input_o\ & (!\MODULO_VISTAS|Mux15~0_combout\ & ((\MODULO_ENRUTADOR|last_size_reg~q\)))) # (!\SW_Vista[0]~input_o\ & (((\BANCO_ROJO|R_T|Reg_Out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_VISTAS|Mux15~0_combout\,
	datab => \BANCO_ROJO|R_T|Reg_Out\(0),
	datac => \MODULO_ENRUTADOR|last_size_reg~q\,
	datad => \SW_Vista[0]~input_o\,
	combout => \MODULO_VISTAS|Mux19~8_combout\);

-- Location: LCCOMB_X2_Y25_N26
\MODULO_VISTAS|Mux19~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_VISTAS|Mux19~9_combout\ = (!\SW_Modo[1]~input_o\ & ((\MODULO_VISTAS|Mux19~7_combout\) # ((!\SW_Modo[0]~input_o\ & \MODULO_VISTAS|Mux19~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_VISTAS|Mux19~7_combout\,
	datab => \SW_Modo[0]~input_o\,
	datac => \SW_Modo[1]~input_o\,
	datad => \MODULO_VISTAS|Mux19~8_combout\,
	combout => \MODULO_VISTAS|Mux19~9_combout\);

-- Location: LCCOMB_X1_Y25_N24
\MODULO_VISTAS|Mux19~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_VISTAS|Mux19~10_combout\ = (!\SW_Color[1]~input_o\ & ((\SW_Tamano~input_o\ & (\BANCO_ROJO|R_G|Reg_Out\(0))) # (!\SW_Tamano~input_o\ & ((\BANCO_ROJO|R_P|Reg_Out\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW_Color[1]~input_o\,
	datab => \BANCO_ROJO|R_G|Reg_Out\(0),
	datac => \SW_Tamano~input_o\,
	datad => \BANCO_ROJO|R_P|Reg_Out\(0),
	combout => \MODULO_VISTAS|Mux19~10_combout\);

-- Location: LCCOMB_X2_Y25_N10
\MODULO_VISTAS|Mux19~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_VISTAS|Mux19~11_combout\ = (\MODULO_ENRUTADOR|Equal1~0_combout\ & ((\SW_Tamano~input_o\ & ((\BANCO_AZUL|R_G|Reg_Out\(0)))) # (!\SW_Tamano~input_o\ & (\BANCO_AZUL|R_P|Reg_Out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW_Tamano~input_o\,
	datab => \BANCO_AZUL|R_P|Reg_Out\(0),
	datac => \BANCO_AZUL|R_G|Reg_Out\(0),
	datad => \MODULO_ENRUTADOR|Equal1~0_combout\,
	combout => \MODULO_VISTAS|Mux19~11_combout\);

-- Location: LCCOMB_X1_Y25_N18
\MODULO_VISTAS|Mux19~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_VISTAS|Mux19~12_combout\ = ((\SW_Tamano~input_o\ & ((\BANCO_VERDE|R_G|Reg_Out\(0)))) # (!\SW_Tamano~input_o\ & (\BANCO_VERDE|R_P|Reg_Out\(0)))) # (!\SW_Color[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW_Color[1]~input_o\,
	datab => \SW_Tamano~input_o\,
	datac => \BANCO_VERDE|R_P|Reg_Out\(0),
	datad => \BANCO_VERDE|R_G|Reg_Out\(0),
	combout => \MODULO_VISTAS|Mux19~12_combout\);

-- Location: LCCOMB_X1_Y25_N12
\MODULO_VISTAS|Mux19~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_VISTAS|Mux19~13_combout\ = (\MODULO_VISTAS|Mux19~10_combout\) # ((\MODULO_VISTAS|Mux19~11_combout\) # ((!\SW_Color[0]~input_o\ & \MODULO_VISTAS|Mux19~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW_Color[0]~input_o\,
	datab => \MODULO_VISTAS|Mux19~10_combout\,
	datac => \MODULO_VISTAS|Mux19~11_combout\,
	datad => \MODULO_VISTAS|Mux19~12_combout\,
	combout => \MODULO_VISTAS|Mux19~13_combout\);

-- Location: LCCOMB_X2_Y25_N16
\MODULO_VISTAS|Mux19~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_VISTAS|Mux19~14_combout\ = (\MODULO_VISTAS|Mux19~9_combout\) # ((\SW_Modo[1]~input_o\ & ((\SW_Modo[0]~input_o\) # (\MODULO_VISTAS|Mux19~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_VISTAS|Mux19~9_combout\,
	datab => \SW_Modo[0]~input_o\,
	datac => \SW_Modo[1]~input_o\,
	datad => \MODULO_VISTAS|Mux19~13_combout\,
	combout => \MODULO_VISTAS|Mux19~14_combout\);

-- Location: LCCOMB_X16_Y25_N20
\DECO_0|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DECO_0|Mux6~0_combout\ = (\MODULO_VISTAS|Mux16~9_combout\ & ((\MODULO_VISTAS|Mux17~8_combout\ & ((\MODULO_VISTAS|Mux19~14_combout\))) # (!\MODULO_VISTAS|Mux17~8_combout\ & (\MODULO_VISTAS|Mux18~23_combout\)))) # (!\MODULO_VISTAS|Mux16~9_combout\ & 
-- (!\MODULO_VISTAS|Mux18~23_combout\ & (\MODULO_VISTAS|Mux19~14_combout\ $ (\MODULO_VISTAS|Mux17~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_VISTAS|Mux16~9_combout\,
	datab => \MODULO_VISTAS|Mux18~23_combout\,
	datac => \MODULO_VISTAS|Mux19~14_combout\,
	datad => \MODULO_VISTAS|Mux17~8_combout\,
	combout => \DECO_0|Mux6~0_combout\);

-- Location: LCCOMB_X16_Y25_N14
\DECO_0|Mux6~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DECO_0|Mux6~2_combout\ = (\MODULO_VISTAS|Mux15~3_combout\ & (((!\DECO_0|Mux6~1_combout\)) # (!\MODULO_VISTAS|Mux18~23_combout\))) # (!\MODULO_VISTAS|Mux15~3_combout\ & (((\DECO_0|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_VISTAS|Mux15~3_combout\,
	datab => \MODULO_VISTAS|Mux18~23_combout\,
	datac => \DECO_0|Mux6~1_combout\,
	datad => \DECO_0|Mux6~0_combout\,
	combout => \DECO_0|Mux6~2_combout\);

-- Location: LCCOMB_X16_Y25_N24
\DECO_0|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DECO_0|Mux5~0_combout\ = (\MODULO_VISTAS|Mux15~3_combout\ & (((\MODULO_VISTAS|Mux18~23_combout\) # (!\MODULO_VISTAS|Mux19~14_combout\)) # (!\DECO_0|Mux6~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DECO_0|Mux6~1_combout\,
	datab => \MODULO_VISTAS|Mux18~23_combout\,
	datac => \MODULO_VISTAS|Mux15~3_combout\,
	datad => \MODULO_VISTAS|Mux19~14_combout\,
	combout => \DECO_0|Mux5~0_combout\);

-- Location: LCCOMB_X16_Y25_N18
\DECO_0|Mux5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DECO_0|Mux5~1_combout\ = (\MODULO_VISTAS|Mux19~14_combout\ & (\MODULO_VISTAS|Mux17~8_combout\ & ((\MODULO_VISTAS|Mux16~9_combout\) # (!\MODULO_VISTAS|Mux18~23_combout\)))) # (!\MODULO_VISTAS|Mux19~14_combout\ & (\MODULO_VISTAS|Mux18~23_combout\ & 
-- (\MODULO_VISTAS|Mux16~9_combout\ $ (\MODULO_VISTAS|Mux17~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_VISTAS|Mux16~9_combout\,
	datab => \MODULO_VISTAS|Mux18~23_combout\,
	datac => \MODULO_VISTAS|Mux19~14_combout\,
	datad => \MODULO_VISTAS|Mux17~8_combout\,
	combout => \DECO_0|Mux5~1_combout\);

-- Location: LCCOMB_X16_Y25_N0
\DECO_0|Mux5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DECO_0|Mux5~2_combout\ = (\DECO_0|Mux5~0_combout\) # ((!\MODULO_VISTAS|Mux15~3_combout\ & \DECO_0|Mux5~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DECO_0|Mux5~0_combout\,
	datac => \MODULO_VISTAS|Mux15~3_combout\,
	datad => \DECO_0|Mux5~1_combout\,
	combout => \DECO_0|Mux5~2_combout\);

-- Location: LCCOMB_X16_Y25_N6
\DECO_0|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DECO_0|Mux4~0_combout\ = (\MODULO_VISTAS|Mux19~14_combout\ & (\MODULO_VISTAS|Mux16~9_combout\ & ((\MODULO_VISTAS|Mux17~8_combout\)))) # (!\MODULO_VISTAS|Mux19~14_combout\ & (\MODULO_VISTAS|Mux18~23_combout\ & ((\MODULO_VISTAS|Mux16~9_combout\) # 
-- (!\MODULO_VISTAS|Mux17~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_VISTAS|Mux16~9_combout\,
	datab => \MODULO_VISTAS|Mux18~23_combout\,
	datac => \MODULO_VISTAS|Mux19~14_combout\,
	datad => \MODULO_VISTAS|Mux17~8_combout\,
	combout => \DECO_0|Mux4~0_combout\);

-- Location: LCCOMB_X16_Y25_N28
\DECO_0|Mux4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DECO_0|Mux4~1_combout\ = (\DECO_0|Mux5~0_combout\) # ((!\MODULO_VISTAS|Mux15~3_combout\ & \DECO_0|Mux4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DECO_0|Mux5~0_combout\,
	datac => \MODULO_VISTAS|Mux15~3_combout\,
	datad => \DECO_0|Mux4~0_combout\,
	combout => \DECO_0|Mux4~1_combout\);

-- Location: LCCOMB_X16_Y25_N4
\DECO_0|Mux3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DECO_0|Mux3~1_combout\ = (!\MODULO_VISTAS|Mux16~9_combout\ & (!\MODULO_VISTAS|Mux17~8_combout\ & ((\MODULO_VISTAS|Mux18~23_combout\) # (\MODULO_VISTAS|Mux19~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_VISTAS|Mux16~9_combout\,
	datab => \MODULO_VISTAS|Mux18~23_combout\,
	datac => \MODULO_VISTAS|Mux19~14_combout\,
	datad => \MODULO_VISTAS|Mux17~8_combout\,
	combout => \DECO_0|Mux3~1_combout\);

-- Location: LCCOMB_X16_Y25_N2
\DECO_0|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DECO_0|Mux3~0_combout\ = (\MODULO_VISTAS|Mux19~14_combout\ & (!\MODULO_VISTAS|Mux16~9_combout\ & (\MODULO_VISTAS|Mux18~23_combout\ $ (!\MODULO_VISTAS|Mux17~8_combout\)))) # (!\MODULO_VISTAS|Mux19~14_combout\ & ((\MODULO_VISTAS|Mux18~23_combout\ & 
-- (\MODULO_VISTAS|Mux16~9_combout\)) # (!\MODULO_VISTAS|Mux18~23_combout\ & ((\MODULO_VISTAS|Mux17~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_VISTAS|Mux16~9_combout\,
	datab => \MODULO_VISTAS|Mux18~23_combout\,
	datac => \MODULO_VISTAS|Mux19~14_combout\,
	datad => \MODULO_VISTAS|Mux17~8_combout\,
	combout => \DECO_0|Mux3~0_combout\);

-- Location: LCCOMB_X16_Y25_N30
\DECO_0|Mux3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DECO_0|Mux3~2_combout\ = (\MODULO_VISTAS|Mux15~3_combout\ & (!\DECO_0|Mux3~1_combout\)) # (!\MODULO_VISTAS|Mux15~3_combout\ & ((\DECO_0|Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DECO_0|Mux3~1_combout\,
	datac => \MODULO_VISTAS|Mux15~3_combout\,
	datad => \DECO_0|Mux3~0_combout\,
	combout => \DECO_0|Mux3~2_combout\);

-- Location: LCCOMB_X16_Y25_N8
\DECO_0|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DECO_0|Mux2~0_combout\ = (\MODULO_VISTAS|Mux18~23_combout\ & (!\MODULO_VISTAS|Mux16~9_combout\ & (\MODULO_VISTAS|Mux19~14_combout\))) # (!\MODULO_VISTAS|Mux18~23_combout\ & ((\MODULO_VISTAS|Mux17~8_combout\ & (!\MODULO_VISTAS|Mux16~9_combout\)) # 
-- (!\MODULO_VISTAS|Mux17~8_combout\ & ((\MODULO_VISTAS|Mux19~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_VISTAS|Mux16~9_combout\,
	datab => \MODULO_VISTAS|Mux18~23_combout\,
	datac => \MODULO_VISTAS|Mux19~14_combout\,
	datad => \MODULO_VISTAS|Mux17~8_combout\,
	combout => \DECO_0|Mux2~0_combout\);

-- Location: LCCOMB_X16_Y25_N10
\DECO_0|Mux2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DECO_0|Mux2~1_combout\ = (\MODULO_VISTAS|Mux15~3_combout\ & (!\DECO_0|Mux3~1_combout\)) # (!\MODULO_VISTAS|Mux15~3_combout\ & ((\DECO_0|Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_VISTAS|Mux15~3_combout\,
	datab => \DECO_0|Mux3~1_combout\,
	datac => \DECO_0|Mux2~0_combout\,
	combout => \DECO_0|Mux2~1_combout\);

-- Location: LCCOMB_X16_Y25_N16
\DECO_0|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DECO_0|Mux1~0_combout\ = (\MODULO_VISTAS|Mux19~14_combout\ & (!\MODULO_VISTAS|Mux16~9_combout\ & ((\MODULO_VISTAS|Mux18~23_combout\) # (!\MODULO_VISTAS|Mux17~8_combout\)))) # (!\MODULO_VISTAS|Mux19~14_combout\ & (((\MODULO_VISTAS|Mux18~23_combout\ & 
-- !\MODULO_VISTAS|Mux17~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_VISTAS|Mux16~9_combout\,
	datab => \MODULO_VISTAS|Mux18~23_combout\,
	datac => \MODULO_VISTAS|Mux19~14_combout\,
	datad => \MODULO_VISTAS|Mux17~8_combout\,
	combout => \DECO_0|Mux1~0_combout\);

-- Location: LCCOMB_X16_Y25_N22
\DECO_0|Mux1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DECO_0|Mux1~1_combout\ = (\MODULO_VISTAS|Mux15~3_combout\ & (((!\DECO_0|Mux6~1_combout\)) # (!\MODULO_VISTAS|Mux18~23_combout\))) # (!\MODULO_VISTAS|Mux15~3_combout\ & (((\DECO_0|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_VISTAS|Mux15~3_combout\,
	datab => \MODULO_VISTAS|Mux18~23_combout\,
	datac => \DECO_0|Mux6~1_combout\,
	datad => \DECO_0|Mux1~0_combout\,
	combout => \DECO_0|Mux1~1_combout\);

-- Location: LCCOMB_X4_Y25_N16
\DECO_0|Mux0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DECO_0|Mux0~3_combout\ = (\MODULO_VISTAS|Mux17~8_combout\) # ((\MODULO_VISTAS|Mux18~24_combout\ & ((\BANCO_VERDE|R_P|Reg_Out\(3)))) # (!\MODULO_VISTAS|Mux18~24_combout\ & (\MODULO_VISTAS|Mux16~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_VISTAS|Mux16~8_combout\,
	datab => \BANCO_VERDE|R_P|Reg_Out\(3),
	datac => \MODULO_VISTAS|Mux17~8_combout\,
	datad => \MODULO_VISTAS|Mux18~24_combout\,
	combout => \DECO_0|Mux0~3_combout\);

-- Location: LCCOMB_X16_Y25_N12
\DECO_0|Mux0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DECO_0|Mux0~2_combout\ = (\MODULO_VISTAS|Mux18~23_combout\ & ((\MODULO_VISTAS|Mux19~14_combout\ & ((\MODULO_VISTAS|Mux15~3_combout\) # (\DECO_0|Mux0~3_combout\))) # (!\MODULO_VISTAS|Mux19~14_combout\ & (\MODULO_VISTAS|Mux15~3_combout\ & 
-- \DECO_0|Mux0~3_combout\)))) # (!\MODULO_VISTAS|Mux18~23_combout\ & ((\MODULO_VISTAS|Mux15~3_combout\ $ (!\DECO_0|Mux0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_VISTAS|Mux19~14_combout\,
	datab => \MODULO_VISTAS|Mux18~23_combout\,
	datac => \MODULO_VISTAS|Mux15~3_combout\,
	datad => \DECO_0|Mux0~3_combout\,
	combout => \DECO_0|Mux0~2_combout\);

-- Location: LCCOMB_X4_Y24_N4
\MODULO_VISTAS|Mux10~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_VISTAS|Mux10~2_combout\ = (\SW_Modo[0]~input_o\ & !\SW_Modo[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW_Modo[0]~input_o\,
	datad => \SW_Modo[1]~input_o\,
	combout => \MODULO_VISTAS|Mux10~2_combout\);

-- Location: LCCOMB_X5_Y25_N18
\MODULO_VISTAS|Mux14~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_VISTAS|Mux14~1_combout\ = (!\SW_Vista[1]~input_o\ & (!\SW_Vista[0]~input_o\ & ((\SW_Color[1]~input_o\) # (\SW_Color[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW_Color[1]~input_o\,
	datab => \SW_Vista[1]~input_o\,
	datac => \SW_Color[0]~input_o\,
	datad => \SW_Vista[0]~input_o\,
	combout => \MODULO_VISTAS|Mux14~1_combout\);

-- Location: LCCOMB_X3_Y25_N14
\MODULO_VISTAS|Mux7~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_VISTAS|Mux7~2_combout\ = (\SW_Modo[1]~input_o\ & ((\SW_Color[1]~input_o\) # (\SW_Color[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW_Color[1]~input_o\,
	datab => \SW_Modo[1]~input_o\,
	datac => \SW_Color[0]~input_o\,
	combout => \MODULO_VISTAS|Mux7~2_combout\);

-- Location: LCCOMB_X8_Y25_N10
\MODULO_VISTAS|Mux10~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_VISTAS|Mux10~1_combout\ = (!\SW_Modo[0]~input_o\ & ((\MODULO_VISTAS|Mux7~2_combout\) # ((\MODULO_VISTAS|Mux15~0_combout\ & \MODULO_VISTAS|Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_VISTAS|Mux7~2_combout\,
	datab => \SW_Modo[0]~input_o\,
	datac => \MODULO_VISTAS|Mux15~0_combout\,
	datad => \MODULO_VISTAS|Mux10~0_combout\,
	combout => \MODULO_VISTAS|Mux10~1_combout\);

-- Location: LCCOMB_X8_Y25_N14
\MODULO_VISTAS|Mux10~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_VISTAS|Mux10~3_combout\ = (\MODULO_VISTAS|Mux10~1_combout\) # ((!\MODULO_VISTAS|mux_hex0~0_combout\ & (\MODULO_VISTAS|Mux10~2_combout\ & !\MODULO_VISTAS|Mux14~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_VISTAS|mux_hex0~0_combout\,
	datab => \MODULO_VISTAS|Mux10~2_combout\,
	datac => \MODULO_VISTAS|Mux14~1_combout\,
	datad => \MODULO_VISTAS|Mux10~1_combout\,
	combout => \MODULO_VISTAS|Mux10~3_combout\);

-- Location: LCCOMB_X7_Y25_N24
\MODULO_VISTAS|mux_hex3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_VISTAS|mux_hex3~0_combout\ = (\SW_Color[1]~input_o\) # (\SW_Color[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW_Color[1]~input_o\,
	datad => \SW_Color[0]~input_o\,
	combout => \MODULO_VISTAS|mux_hex3~0_combout\);

-- Location: LCCOMB_X5_Y24_N14
\C_TT_D|CNT_int[0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C_TT_D|CNT_int[0]~3_combout\ = !\C_TT_D|CNT_int\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C_TT_D|CNT_int\(0),
	combout => \C_TT_D|CNT_int[0]~3_combout\);

-- Location: LCCOMB_X2_Y25_N30
\C_TT_U|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C_TT_U|Equal0~0_combout\ = (\C_TT_U|CNT_int\(0) & (!\C_TT_U|CNT_int\(2) & (\C_TT_U|CNT_int\(3) & !\C_TT_U|CNT_int\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C_TT_U|CNT_int\(0),
	datab => \C_TT_U|CNT_int\(2),
	datac => \C_TT_U|CNT_int\(3),
	datad => \C_TT_U|CNT_int\(1),
	combout => \C_TT_U|Equal0~0_combout\);

-- Location: LCCOMB_X4_Y24_N2
\MODULO_ENRUTADOR|pulse_tot_d\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_ENRUTADOR|pulse_tot_d~combout\ = (\C_TT_U|Equal0~0_combout\ & \MODULO_ENRUTADOR|pulse_tot~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C_TT_U|Equal0~0_combout\,
	datad => \MODULO_ENRUTADOR|pulse_tot~0_combout\,
	combout => \MODULO_ENRUTADOR|pulse_tot_d~combout\);

-- Location: FF_X5_Y24_N15
\C_TT_D|CNT_int[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \C_TT_D|CNT_int[0]~3_combout\,
	clrn => \Reset~input_o\,
	ena => \MODULO_ENRUTADOR|pulse_tot_d~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C_TT_D|CNT_int\(0));

-- Location: LCCOMB_X5_Y24_N22
\C_TT_D|CNT_int~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C_TT_D|CNT_int~2_combout\ = (\C_TT_D|CNT_int\(1) & (\C_TT_D|CNT_int\(3) $ (((\C_TT_D|CNT_int\(0) & \C_TT_D|CNT_int\(2)))))) # (!\C_TT_D|CNT_int\(1) & (\C_TT_D|CNT_int\(3) & ((\C_TT_D|CNT_int\(2)) # (!\C_TT_D|CNT_int\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C_TT_D|CNT_int\(1),
	datab => \C_TT_D|CNT_int\(0),
	datac => \C_TT_D|CNT_int\(3),
	datad => \C_TT_D|CNT_int\(2),
	combout => \C_TT_D|CNT_int~2_combout\);

-- Location: FF_X5_Y24_N23
\C_TT_D|CNT_int[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \C_TT_D|CNT_int~2_combout\,
	clrn => \Reset~input_o\,
	ena => \MODULO_ENRUTADOR|pulse_tot_d~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C_TT_D|CNT_int\(3));

-- Location: LCCOMB_X5_Y24_N26
\C_TT_D|CNT_int~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C_TT_D|CNT_int~0_combout\ = (\C_TT_D|CNT_int\(0) & (!\C_TT_D|CNT_int\(1) & ((\C_TT_D|CNT_int\(2)) # (!\C_TT_D|CNT_int\(3))))) # (!\C_TT_D|CNT_int\(0) & (((\C_TT_D|CNT_int\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C_TT_D|CNT_int\(3),
	datab => \C_TT_D|CNT_int\(0),
	datac => \C_TT_D|CNT_int\(1),
	datad => \C_TT_D|CNT_int\(2),
	combout => \C_TT_D|CNT_int~0_combout\);

-- Location: FF_X5_Y24_N27
\C_TT_D|CNT_int[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \C_TT_D|CNT_int~0_combout\,
	clrn => \Reset~input_o\,
	ena => \MODULO_ENRUTADOR|pulse_tot_d~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C_TT_D|CNT_int\(1));

-- Location: LCCOMB_X5_Y24_N24
\C_TT_D|CNT_int[2]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C_TT_D|CNT_int[2]~1_combout\ = \C_TT_D|CNT_int\(2) $ (((\C_TT_D|CNT_int\(1) & (\C_TT_D|CNT_int\(0) & \MODULO_ENRUTADOR|pulse_tot_d~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C_TT_D|CNT_int\(1),
	datab => \C_TT_D|CNT_int\(0),
	datac => \C_TT_D|CNT_int\(2),
	datad => \MODULO_ENRUTADOR|pulse_tot_d~combout\,
	combout => \C_TT_D|CNT_int[2]~1_combout\);

-- Location: FF_X5_Y24_N25
\C_TT_D|CNT_int[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \C_TT_D|CNT_int[2]~1_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C_TT_D|CNT_int\(2));

-- Location: LCCOMB_X5_Y24_N30
\R_TT_D|Reg_Out[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R_TT_D|Reg_Out[2]~feeder_combout\ = \C_TT_D|CNT_int\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C_TT_D|CNT_int\(2),
	combout => \R_TT_D|Reg_Out[2]~feeder_combout\);

-- Location: FF_X5_Y24_N31
\R_TT_D|Reg_Out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \R_TT_D|Reg_Out[2]~feeder_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R_TT_D|Reg_Out\(2));

-- Location: LCCOMB_X7_Y24_N8
\MODULO_TIEMPOS|process_1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_TIEMPOS|process_1~1_combout\ = (!\MODULO_TIEMPOS|c_u\(3) & (!\MODULO_TIEMPOS|c_u\(0) & (!\MODULO_TIEMPOS|c_u\(1) & !\MODULO_TIEMPOS|c_u\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_TIEMPOS|c_u\(3),
	datab => \MODULO_TIEMPOS|c_u\(0),
	datac => \MODULO_TIEMPOS|c_u\(1),
	datad => \MODULO_TIEMPOS|c_u\(2),
	combout => \MODULO_TIEMPOS|process_1~1_combout\);

-- Location: LCCOMB_X7_Y24_N4
\MODULO_TIEMPOS|c_t[0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_TIEMPOS|c_t[0]~3_combout\ = !\MODULO_TIEMPOS|c_t\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MODULO_TIEMPOS|c_t\(0),
	combout => \MODULO_TIEMPOS|c_t[0]~3_combout\);

-- Location: LCCOMB_X6_Y11_N6
\MODULO_TIEMPOS|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_TIEMPOS|Add1~0_combout\ = \MODULO_TIEMPOS|div_1hz\(0) $ (VCC)
-- \MODULO_TIEMPOS|Add1~1\ = CARRY(\MODULO_TIEMPOS|div_1hz\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MODULO_TIEMPOS|div_1hz\(0),
	datad => VCC,
	combout => \MODULO_TIEMPOS|Add1~0_combout\,
	cout => \MODULO_TIEMPOS|Add1~1\);

-- Location: LCCOMB_X6_Y11_N0
\MODULO_TIEMPOS|div_1hz~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_TIEMPOS|div_1hz~0_combout\ = (\MODULO_TIEMPOS|Add1~0_combout\ & !\MODULO_TIEMPOS|Equal1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_TIEMPOS|Add1~0_combout\,
	datad => \MODULO_TIEMPOS|Equal1~8_combout\,
	combout => \MODULO_TIEMPOS|div_1hz~0_combout\);

-- Location: FF_X6_Y11_N1
\MODULO_TIEMPOS|div_1hz[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \MODULO_TIEMPOS|div_1hz~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MODULO_TIEMPOS|div_1hz\(0));

-- Location: LCCOMB_X6_Y11_N8
\MODULO_TIEMPOS|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_TIEMPOS|Add1~2_combout\ = (\MODULO_TIEMPOS|div_1hz\(1) & (!\MODULO_TIEMPOS|Add1~1\)) # (!\MODULO_TIEMPOS|div_1hz\(1) & ((\MODULO_TIEMPOS|Add1~1\) # (GND)))
-- \MODULO_TIEMPOS|Add1~3\ = CARRY((!\MODULO_TIEMPOS|Add1~1\) # (!\MODULO_TIEMPOS|div_1hz\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MODULO_TIEMPOS|div_1hz\(1),
	datad => VCC,
	cin => \MODULO_TIEMPOS|Add1~1\,
	combout => \MODULO_TIEMPOS|Add1~2_combout\,
	cout => \MODULO_TIEMPOS|Add1~3\);

-- Location: FF_X6_Y11_N9
\MODULO_TIEMPOS|div_1hz[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \MODULO_TIEMPOS|Add1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MODULO_TIEMPOS|div_1hz\(1));

-- Location: LCCOMB_X6_Y11_N10
\MODULO_TIEMPOS|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_TIEMPOS|Add1~4_combout\ = (\MODULO_TIEMPOS|div_1hz\(2) & (\MODULO_TIEMPOS|Add1~3\ $ (GND))) # (!\MODULO_TIEMPOS|div_1hz\(2) & (!\MODULO_TIEMPOS|Add1~3\ & VCC))
-- \MODULO_TIEMPOS|Add1~5\ = CARRY((\MODULO_TIEMPOS|div_1hz\(2) & !\MODULO_TIEMPOS|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_TIEMPOS|div_1hz\(2),
	datad => VCC,
	cin => \MODULO_TIEMPOS|Add1~3\,
	combout => \MODULO_TIEMPOS|Add1~4_combout\,
	cout => \MODULO_TIEMPOS|Add1~5\);

-- Location: FF_X6_Y11_N11
\MODULO_TIEMPOS|div_1hz[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \MODULO_TIEMPOS|Add1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MODULO_TIEMPOS|div_1hz\(2));

-- Location: LCCOMB_X6_Y11_N12
\MODULO_TIEMPOS|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_TIEMPOS|Add1~6_combout\ = (\MODULO_TIEMPOS|div_1hz\(3) & (!\MODULO_TIEMPOS|Add1~5\)) # (!\MODULO_TIEMPOS|div_1hz\(3) & ((\MODULO_TIEMPOS|Add1~5\) # (GND)))
-- \MODULO_TIEMPOS|Add1~7\ = CARRY((!\MODULO_TIEMPOS|Add1~5\) # (!\MODULO_TIEMPOS|div_1hz\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_TIEMPOS|div_1hz\(3),
	datad => VCC,
	cin => \MODULO_TIEMPOS|Add1~5\,
	combout => \MODULO_TIEMPOS|Add1~6_combout\,
	cout => \MODULO_TIEMPOS|Add1~7\);

-- Location: FF_X6_Y11_N13
\MODULO_TIEMPOS|div_1hz[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \MODULO_TIEMPOS|Add1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MODULO_TIEMPOS|div_1hz\(3));

-- Location: LCCOMB_X6_Y11_N14
\MODULO_TIEMPOS|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_TIEMPOS|Add1~8_combout\ = (\MODULO_TIEMPOS|div_1hz\(4) & (\MODULO_TIEMPOS|Add1~7\ $ (GND))) # (!\MODULO_TIEMPOS|div_1hz\(4) & (!\MODULO_TIEMPOS|Add1~7\ & VCC))
-- \MODULO_TIEMPOS|Add1~9\ = CARRY((\MODULO_TIEMPOS|div_1hz\(4) & !\MODULO_TIEMPOS|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MODULO_TIEMPOS|div_1hz\(4),
	datad => VCC,
	cin => \MODULO_TIEMPOS|Add1~7\,
	combout => \MODULO_TIEMPOS|Add1~8_combout\,
	cout => \MODULO_TIEMPOS|Add1~9\);

-- Location: FF_X6_Y11_N15
\MODULO_TIEMPOS|div_1hz[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \MODULO_TIEMPOS|Add1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MODULO_TIEMPOS|div_1hz\(4));

-- Location: LCCOMB_X6_Y11_N16
\MODULO_TIEMPOS|Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_TIEMPOS|Add1~10_combout\ = (\MODULO_TIEMPOS|div_1hz\(5) & (!\MODULO_TIEMPOS|Add1~9\)) # (!\MODULO_TIEMPOS|div_1hz\(5) & ((\MODULO_TIEMPOS|Add1~9\) # (GND)))
-- \MODULO_TIEMPOS|Add1~11\ = CARRY((!\MODULO_TIEMPOS|Add1~9\) # (!\MODULO_TIEMPOS|div_1hz\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MODULO_TIEMPOS|div_1hz\(5),
	datad => VCC,
	cin => \MODULO_TIEMPOS|Add1~9\,
	combout => \MODULO_TIEMPOS|Add1~10_combout\,
	cout => \MODULO_TIEMPOS|Add1~11\);

-- Location: FF_X6_Y11_N17
\MODULO_TIEMPOS|div_1hz[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \MODULO_TIEMPOS|Add1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MODULO_TIEMPOS|div_1hz\(5));

-- Location: LCCOMB_X6_Y11_N18
\MODULO_TIEMPOS|Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_TIEMPOS|Add1~12_combout\ = (\MODULO_TIEMPOS|div_1hz\(6) & (\MODULO_TIEMPOS|Add1~11\ $ (GND))) # (!\MODULO_TIEMPOS|div_1hz\(6) & (!\MODULO_TIEMPOS|Add1~11\ & VCC))
-- \MODULO_TIEMPOS|Add1~13\ = CARRY((\MODULO_TIEMPOS|div_1hz\(6) & !\MODULO_TIEMPOS|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MODULO_TIEMPOS|div_1hz\(6),
	datad => VCC,
	cin => \MODULO_TIEMPOS|Add1~11\,
	combout => \MODULO_TIEMPOS|Add1~12_combout\,
	cout => \MODULO_TIEMPOS|Add1~13\);

-- Location: FF_X6_Y11_N19
\MODULO_TIEMPOS|div_1hz[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \MODULO_TIEMPOS|Add1~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MODULO_TIEMPOS|div_1hz\(6));

-- Location: LCCOMB_X6_Y11_N20
\MODULO_TIEMPOS|Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_TIEMPOS|Add1~14_combout\ = (\MODULO_TIEMPOS|div_1hz\(7) & (!\MODULO_TIEMPOS|Add1~13\)) # (!\MODULO_TIEMPOS|div_1hz\(7) & ((\MODULO_TIEMPOS|Add1~13\) # (GND)))
-- \MODULO_TIEMPOS|Add1~15\ = CARRY((!\MODULO_TIEMPOS|Add1~13\) # (!\MODULO_TIEMPOS|div_1hz\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MODULO_TIEMPOS|div_1hz\(7),
	datad => VCC,
	cin => \MODULO_TIEMPOS|Add1~13\,
	combout => \MODULO_TIEMPOS|Add1~14_combout\,
	cout => \MODULO_TIEMPOS|Add1~15\);

-- Location: LCCOMB_X6_Y11_N2
\MODULO_TIEMPOS|div_1hz~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_TIEMPOS|div_1hz~1_combout\ = (\MODULO_TIEMPOS|Add1~14_combout\ & !\MODULO_TIEMPOS|Equal1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MODULO_TIEMPOS|Add1~14_combout\,
	datad => \MODULO_TIEMPOS|Equal1~8_combout\,
	combout => \MODULO_TIEMPOS|div_1hz~1_combout\);

-- Location: FF_X6_Y11_N3
\MODULO_TIEMPOS|div_1hz[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \MODULO_TIEMPOS|div_1hz~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MODULO_TIEMPOS|div_1hz\(7));

-- Location: LCCOMB_X6_Y11_N22
\MODULO_TIEMPOS|Add1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_TIEMPOS|Add1~16_combout\ = (\MODULO_TIEMPOS|div_1hz\(8) & (\MODULO_TIEMPOS|Add1~15\ $ (GND))) # (!\MODULO_TIEMPOS|div_1hz\(8) & (!\MODULO_TIEMPOS|Add1~15\ & VCC))
-- \MODULO_TIEMPOS|Add1~17\ = CARRY((\MODULO_TIEMPOS|div_1hz\(8) & !\MODULO_TIEMPOS|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_TIEMPOS|div_1hz\(8),
	datad => VCC,
	cin => \MODULO_TIEMPOS|Add1~15\,
	combout => \MODULO_TIEMPOS|Add1~16_combout\,
	cout => \MODULO_TIEMPOS|Add1~17\);

-- Location: FF_X6_Y11_N23
\MODULO_TIEMPOS|div_1hz[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \MODULO_TIEMPOS|Add1~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MODULO_TIEMPOS|div_1hz\(8));

-- Location: LCCOMB_X6_Y11_N24
\MODULO_TIEMPOS|Add1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_TIEMPOS|Add1~18_combout\ = (\MODULO_TIEMPOS|div_1hz\(9) & (!\MODULO_TIEMPOS|Add1~17\)) # (!\MODULO_TIEMPOS|div_1hz\(9) & ((\MODULO_TIEMPOS|Add1~17\) # (GND)))
-- \MODULO_TIEMPOS|Add1~19\ = CARRY((!\MODULO_TIEMPOS|Add1~17\) # (!\MODULO_TIEMPOS|div_1hz\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MODULO_TIEMPOS|div_1hz\(9),
	datad => VCC,
	cin => \MODULO_TIEMPOS|Add1~17\,
	combout => \MODULO_TIEMPOS|Add1~18_combout\,
	cout => \MODULO_TIEMPOS|Add1~19\);

-- Location: FF_X6_Y11_N25
\MODULO_TIEMPOS|div_1hz[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \MODULO_TIEMPOS|Add1~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MODULO_TIEMPOS|div_1hz\(9));

-- Location: LCCOMB_X6_Y11_N26
\MODULO_TIEMPOS|Add1~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_TIEMPOS|Add1~20_combout\ = (\MODULO_TIEMPOS|div_1hz\(10) & (\MODULO_TIEMPOS|Add1~19\ $ (GND))) # (!\MODULO_TIEMPOS|div_1hz\(10) & (!\MODULO_TIEMPOS|Add1~19\ & VCC))
-- \MODULO_TIEMPOS|Add1~21\ = CARRY((\MODULO_TIEMPOS|div_1hz\(10) & !\MODULO_TIEMPOS|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_TIEMPOS|div_1hz\(10),
	datad => VCC,
	cin => \MODULO_TIEMPOS|Add1~19\,
	combout => \MODULO_TIEMPOS|Add1~20_combout\,
	cout => \MODULO_TIEMPOS|Add1~21\);

-- Location: FF_X6_Y11_N27
\MODULO_TIEMPOS|div_1hz[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \MODULO_TIEMPOS|Add1~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MODULO_TIEMPOS|div_1hz\(10));

-- Location: LCCOMB_X6_Y11_N28
\MODULO_TIEMPOS|Add1~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_TIEMPOS|Add1~22_combout\ = (\MODULO_TIEMPOS|div_1hz\(11) & (!\MODULO_TIEMPOS|Add1~21\)) # (!\MODULO_TIEMPOS|div_1hz\(11) & ((\MODULO_TIEMPOS|Add1~21\) # (GND)))
-- \MODULO_TIEMPOS|Add1~23\ = CARRY((!\MODULO_TIEMPOS|Add1~21\) # (!\MODULO_TIEMPOS|div_1hz\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MODULO_TIEMPOS|div_1hz\(11),
	datad => VCC,
	cin => \MODULO_TIEMPOS|Add1~21\,
	combout => \MODULO_TIEMPOS|Add1~22_combout\,
	cout => \MODULO_TIEMPOS|Add1~23\);

-- Location: FF_X6_Y11_N29
\MODULO_TIEMPOS|div_1hz[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \MODULO_TIEMPOS|Add1~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MODULO_TIEMPOS|div_1hz\(11));

-- Location: LCCOMB_X6_Y11_N30
\MODULO_TIEMPOS|Add1~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_TIEMPOS|Add1~24_combout\ = (\MODULO_TIEMPOS|div_1hz\(12) & (\MODULO_TIEMPOS|Add1~23\ $ (GND))) # (!\MODULO_TIEMPOS|div_1hz\(12) & (!\MODULO_TIEMPOS|Add1~23\ & VCC))
-- \MODULO_TIEMPOS|Add1~25\ = CARRY((\MODULO_TIEMPOS|div_1hz\(12) & !\MODULO_TIEMPOS|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MODULO_TIEMPOS|div_1hz\(12),
	datad => VCC,
	cin => \MODULO_TIEMPOS|Add1~23\,
	combout => \MODULO_TIEMPOS|Add1~24_combout\,
	cout => \MODULO_TIEMPOS|Add1~25\);

-- Location: LCCOMB_X6_Y11_N4
\MODULO_TIEMPOS|div_1hz~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_TIEMPOS|div_1hz~2_combout\ = (\MODULO_TIEMPOS|Add1~24_combout\ & !\MODULO_TIEMPOS|Equal1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MODULO_TIEMPOS|Add1~24_combout\,
	datad => \MODULO_TIEMPOS|Equal1~8_combout\,
	combout => \MODULO_TIEMPOS|div_1hz~2_combout\);

-- Location: FF_X6_Y11_N5
\MODULO_TIEMPOS|div_1hz[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \MODULO_TIEMPOS|div_1hz~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MODULO_TIEMPOS|div_1hz\(12));

-- Location: LCCOMB_X6_Y10_N0
\MODULO_TIEMPOS|Add1~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_TIEMPOS|Add1~26_combout\ = (\MODULO_TIEMPOS|div_1hz\(13) & (!\MODULO_TIEMPOS|Add1~25\)) # (!\MODULO_TIEMPOS|div_1hz\(13) & ((\MODULO_TIEMPOS|Add1~25\) # (GND)))
-- \MODULO_TIEMPOS|Add1~27\ = CARRY((!\MODULO_TIEMPOS|Add1~25\) # (!\MODULO_TIEMPOS|div_1hz\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_TIEMPOS|div_1hz\(13),
	datad => VCC,
	cin => \MODULO_TIEMPOS|Add1~25\,
	combout => \MODULO_TIEMPOS|Add1~26_combout\,
	cout => \MODULO_TIEMPOS|Add1~27\);

-- Location: LCCOMB_X7_Y10_N30
\MODULO_TIEMPOS|div_1hz~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_TIEMPOS|div_1hz~3_combout\ = (\MODULO_TIEMPOS|Add1~26_combout\ & !\MODULO_TIEMPOS|Equal1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MODULO_TIEMPOS|Add1~26_combout\,
	datad => \MODULO_TIEMPOS|Equal1~8_combout\,
	combout => \MODULO_TIEMPOS|div_1hz~3_combout\);

-- Location: FF_X7_Y10_N31
\MODULO_TIEMPOS|div_1hz[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \MODULO_TIEMPOS|div_1hz~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MODULO_TIEMPOS|div_1hz\(13));

-- Location: LCCOMB_X6_Y10_N2
\MODULO_TIEMPOS|Add1~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_TIEMPOS|Add1~28_combout\ = (\MODULO_TIEMPOS|div_1hz\(14) & (\MODULO_TIEMPOS|Add1~27\ $ (GND))) # (!\MODULO_TIEMPOS|div_1hz\(14) & (!\MODULO_TIEMPOS|Add1~27\ & VCC))
-- \MODULO_TIEMPOS|Add1~29\ = CARRY((\MODULO_TIEMPOS|div_1hz\(14) & !\MODULO_TIEMPOS|Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_TIEMPOS|div_1hz\(14),
	datad => VCC,
	cin => \MODULO_TIEMPOS|Add1~27\,
	combout => \MODULO_TIEMPOS|Add1~28_combout\,
	cout => \MODULO_TIEMPOS|Add1~29\);

-- Location: LCCOMB_X7_Y10_N20
\MODULO_TIEMPOS|div_1hz~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_TIEMPOS|div_1hz~4_combout\ = (\MODULO_TIEMPOS|Add1~28_combout\ & !\MODULO_TIEMPOS|Equal1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_TIEMPOS|Add1~28_combout\,
	datad => \MODULO_TIEMPOS|Equal1~8_combout\,
	combout => \MODULO_TIEMPOS|div_1hz~4_combout\);

-- Location: FF_X7_Y10_N21
\MODULO_TIEMPOS|div_1hz[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \MODULO_TIEMPOS|div_1hz~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MODULO_TIEMPOS|div_1hz\(14));

-- Location: LCCOMB_X6_Y10_N4
\MODULO_TIEMPOS|Add1~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_TIEMPOS|Add1~30_combout\ = (\MODULO_TIEMPOS|div_1hz\(15) & (!\MODULO_TIEMPOS|Add1~29\)) # (!\MODULO_TIEMPOS|div_1hz\(15) & ((\MODULO_TIEMPOS|Add1~29\) # (GND)))
-- \MODULO_TIEMPOS|Add1~31\ = CARRY((!\MODULO_TIEMPOS|Add1~29\) # (!\MODULO_TIEMPOS|div_1hz\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_TIEMPOS|div_1hz\(15),
	datad => VCC,
	cin => \MODULO_TIEMPOS|Add1~29\,
	combout => \MODULO_TIEMPOS|Add1~30_combout\,
	cout => \MODULO_TIEMPOS|Add1~31\);

-- Location: LCCOMB_X7_Y10_N6
\MODULO_TIEMPOS|div_1hz~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_TIEMPOS|div_1hz~5_combout\ = (\MODULO_TIEMPOS|Add1~30_combout\ & !\MODULO_TIEMPOS|Equal1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MODULO_TIEMPOS|Add1~30_combout\,
	datad => \MODULO_TIEMPOS|Equal1~8_combout\,
	combout => \MODULO_TIEMPOS|div_1hz~5_combout\);

-- Location: FF_X7_Y10_N7
\MODULO_TIEMPOS|div_1hz[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \MODULO_TIEMPOS|div_1hz~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MODULO_TIEMPOS|div_1hz\(15));

-- Location: LCCOMB_X6_Y10_N6
\MODULO_TIEMPOS|Add1~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_TIEMPOS|Add1~32_combout\ = (\MODULO_TIEMPOS|div_1hz\(16) & (\MODULO_TIEMPOS|Add1~31\ $ (GND))) # (!\MODULO_TIEMPOS|div_1hz\(16) & (!\MODULO_TIEMPOS|Add1~31\ & VCC))
-- \MODULO_TIEMPOS|Add1~33\ = CARRY((\MODULO_TIEMPOS|div_1hz\(16) & !\MODULO_TIEMPOS|Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_TIEMPOS|div_1hz\(16),
	datad => VCC,
	cin => \MODULO_TIEMPOS|Add1~31\,
	combout => \MODULO_TIEMPOS|Add1~32_combout\,
	cout => \MODULO_TIEMPOS|Add1~33\);

-- Location: FF_X6_Y10_N7
\MODULO_TIEMPOS|div_1hz[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \MODULO_TIEMPOS|Add1~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MODULO_TIEMPOS|div_1hz\(16));

-- Location: LCCOMB_X6_Y10_N8
\MODULO_TIEMPOS|Add1~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_TIEMPOS|Add1~34_combout\ = (\MODULO_TIEMPOS|div_1hz\(17) & (!\MODULO_TIEMPOS|Add1~33\)) # (!\MODULO_TIEMPOS|div_1hz\(17) & ((\MODULO_TIEMPOS|Add1~33\) # (GND)))
-- \MODULO_TIEMPOS|Add1~35\ = CARRY((!\MODULO_TIEMPOS|Add1~33\) # (!\MODULO_TIEMPOS|div_1hz\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_TIEMPOS|div_1hz\(17),
	datad => VCC,
	cin => \MODULO_TIEMPOS|Add1~33\,
	combout => \MODULO_TIEMPOS|Add1~34_combout\,
	cout => \MODULO_TIEMPOS|Add1~35\);

-- Location: LCCOMB_X6_Y10_N30
\MODULO_TIEMPOS|div_1hz~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_TIEMPOS|div_1hz~6_combout\ = (\MODULO_TIEMPOS|Add1~34_combout\ & !\MODULO_TIEMPOS|Equal1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MODULO_TIEMPOS|Add1~34_combout\,
	datad => \MODULO_TIEMPOS|Equal1~8_combout\,
	combout => \MODULO_TIEMPOS|div_1hz~6_combout\);

-- Location: FF_X6_Y10_N31
\MODULO_TIEMPOS|div_1hz[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \MODULO_TIEMPOS|div_1hz~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MODULO_TIEMPOS|div_1hz\(17));

-- Location: LCCOMB_X6_Y10_N10
\MODULO_TIEMPOS|Add1~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_TIEMPOS|Add1~36_combout\ = (\MODULO_TIEMPOS|div_1hz\(18) & (\MODULO_TIEMPOS|Add1~35\ $ (GND))) # (!\MODULO_TIEMPOS|div_1hz\(18) & (!\MODULO_TIEMPOS|Add1~35\ & VCC))
-- \MODULO_TIEMPOS|Add1~37\ = CARRY((\MODULO_TIEMPOS|div_1hz\(18) & !\MODULO_TIEMPOS|Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_TIEMPOS|div_1hz\(18),
	datad => VCC,
	cin => \MODULO_TIEMPOS|Add1~35\,
	combout => \MODULO_TIEMPOS|Add1~36_combout\,
	cout => \MODULO_TIEMPOS|Add1~37\);

-- Location: FF_X6_Y10_N11
\MODULO_TIEMPOS|div_1hz[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \MODULO_TIEMPOS|Add1~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MODULO_TIEMPOS|div_1hz\(18));

-- Location: LCCOMB_X6_Y10_N12
\MODULO_TIEMPOS|Add1~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_TIEMPOS|Add1~38_combout\ = (\MODULO_TIEMPOS|div_1hz\(19) & (!\MODULO_TIEMPOS|Add1~37\)) # (!\MODULO_TIEMPOS|div_1hz\(19) & ((\MODULO_TIEMPOS|Add1~37\) # (GND)))
-- \MODULO_TIEMPOS|Add1~39\ = CARRY((!\MODULO_TIEMPOS|Add1~37\) # (!\MODULO_TIEMPOS|div_1hz\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_TIEMPOS|div_1hz\(19),
	datad => VCC,
	cin => \MODULO_TIEMPOS|Add1~37\,
	combout => \MODULO_TIEMPOS|Add1~38_combout\,
	cout => \MODULO_TIEMPOS|Add1~39\);

-- Location: LCCOMB_X7_Y10_N4
\MODULO_TIEMPOS|div_1hz~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_TIEMPOS|div_1hz~7_combout\ = (\MODULO_TIEMPOS|Add1~38_combout\ & !\MODULO_TIEMPOS|Equal1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_TIEMPOS|Add1~38_combout\,
	datad => \MODULO_TIEMPOS|Equal1~8_combout\,
	combout => \MODULO_TIEMPOS|div_1hz~7_combout\);

-- Location: FF_X7_Y10_N5
\MODULO_TIEMPOS|div_1hz[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \MODULO_TIEMPOS|div_1hz~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MODULO_TIEMPOS|div_1hz\(19));

-- Location: LCCOMB_X6_Y10_N14
\MODULO_TIEMPOS|Add1~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_TIEMPOS|Add1~40_combout\ = (\MODULO_TIEMPOS|div_1hz\(20) & (\MODULO_TIEMPOS|Add1~39\ $ (GND))) # (!\MODULO_TIEMPOS|div_1hz\(20) & (!\MODULO_TIEMPOS|Add1~39\ & VCC))
-- \MODULO_TIEMPOS|Add1~41\ = CARRY((\MODULO_TIEMPOS|div_1hz\(20) & !\MODULO_TIEMPOS|Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MODULO_TIEMPOS|div_1hz\(20),
	datad => VCC,
	cin => \MODULO_TIEMPOS|Add1~39\,
	combout => \MODULO_TIEMPOS|Add1~40_combout\,
	cout => \MODULO_TIEMPOS|Add1~41\);

-- Location: LCCOMB_X6_Y10_N28
\MODULO_TIEMPOS|div_1hz~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_TIEMPOS|div_1hz~8_combout\ = (\MODULO_TIEMPOS|Add1~40_combout\ & !\MODULO_TIEMPOS|Equal1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MODULO_TIEMPOS|Add1~40_combout\,
	datad => \MODULO_TIEMPOS|Equal1~8_combout\,
	combout => \MODULO_TIEMPOS|div_1hz~8_combout\);

-- Location: FF_X6_Y10_N29
\MODULO_TIEMPOS|div_1hz[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \MODULO_TIEMPOS|div_1hz~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MODULO_TIEMPOS|div_1hz\(20));

-- Location: LCCOMB_X6_Y10_N16
\MODULO_TIEMPOS|Add1~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_TIEMPOS|Add1~42_combout\ = (\MODULO_TIEMPOS|div_1hz\(21) & (!\MODULO_TIEMPOS|Add1~41\)) # (!\MODULO_TIEMPOS|div_1hz\(21) & ((\MODULO_TIEMPOS|Add1~41\) # (GND)))
-- \MODULO_TIEMPOS|Add1~43\ = CARRY((!\MODULO_TIEMPOS|Add1~41\) # (!\MODULO_TIEMPOS|div_1hz\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_TIEMPOS|div_1hz\(21),
	datad => VCC,
	cin => \MODULO_TIEMPOS|Add1~41\,
	combout => \MODULO_TIEMPOS|Add1~42_combout\,
	cout => \MODULO_TIEMPOS|Add1~43\);

-- Location: LCCOMB_X6_Y10_N26
\MODULO_TIEMPOS|div_1hz~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_TIEMPOS|div_1hz~9_combout\ = (!\MODULO_TIEMPOS|Equal1~8_combout\ & \MODULO_TIEMPOS|Add1~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MODULO_TIEMPOS|Equal1~8_combout\,
	datad => \MODULO_TIEMPOS|Add1~42_combout\,
	combout => \MODULO_TIEMPOS|div_1hz~9_combout\);

-- Location: FF_X6_Y10_N27
\MODULO_TIEMPOS|div_1hz[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \MODULO_TIEMPOS|div_1hz~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MODULO_TIEMPOS|div_1hz\(21));

-- Location: LCCOMB_X6_Y10_N18
\MODULO_TIEMPOS|Add1~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_TIEMPOS|Add1~44_combout\ = (\MODULO_TIEMPOS|div_1hz\(22) & (\MODULO_TIEMPOS|Add1~43\ $ (GND))) # (!\MODULO_TIEMPOS|div_1hz\(22) & (!\MODULO_TIEMPOS|Add1~43\ & VCC))
-- \MODULO_TIEMPOS|Add1~45\ = CARRY((\MODULO_TIEMPOS|div_1hz\(22) & !\MODULO_TIEMPOS|Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MODULO_TIEMPOS|div_1hz\(22),
	datad => VCC,
	cin => \MODULO_TIEMPOS|Add1~43\,
	combout => \MODULO_TIEMPOS|Add1~44_combout\,
	cout => \MODULO_TIEMPOS|Add1~45\);

-- Location: LCCOMB_X7_Y10_N28
\MODULO_TIEMPOS|div_1hz~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_TIEMPOS|div_1hz~10_combout\ = (\MODULO_TIEMPOS|Add1~44_combout\ & !\MODULO_TIEMPOS|Equal1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MODULO_TIEMPOS|Add1~44_combout\,
	datad => \MODULO_TIEMPOS|Equal1~8_combout\,
	combout => \MODULO_TIEMPOS|div_1hz~10_combout\);

-- Location: FF_X7_Y10_N29
\MODULO_TIEMPOS|div_1hz[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \MODULO_TIEMPOS|div_1hz~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MODULO_TIEMPOS|div_1hz\(22));

-- Location: LCCOMB_X6_Y10_N20
\MODULO_TIEMPOS|Add1~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_TIEMPOS|Add1~46_combout\ = (\MODULO_TIEMPOS|div_1hz\(23) & (!\MODULO_TIEMPOS|Add1~45\)) # (!\MODULO_TIEMPOS|div_1hz\(23) & ((\MODULO_TIEMPOS|Add1~45\) # (GND)))
-- \MODULO_TIEMPOS|Add1~47\ = CARRY((!\MODULO_TIEMPOS|Add1~45\) # (!\MODULO_TIEMPOS|div_1hz\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MODULO_TIEMPOS|div_1hz\(23),
	datad => VCC,
	cin => \MODULO_TIEMPOS|Add1~45\,
	combout => \MODULO_TIEMPOS|Add1~46_combout\,
	cout => \MODULO_TIEMPOS|Add1~47\);

-- Location: LCCOMB_X7_Y10_N26
\MODULO_TIEMPOS|div_1hz~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_TIEMPOS|div_1hz~11_combout\ = (!\MODULO_TIEMPOS|Equal1~8_combout\ & \MODULO_TIEMPOS|Add1~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MODULO_TIEMPOS|Equal1~8_combout\,
	datad => \MODULO_TIEMPOS|Add1~46_combout\,
	combout => \MODULO_TIEMPOS|div_1hz~11_combout\);

-- Location: FF_X7_Y10_N27
\MODULO_TIEMPOS|div_1hz[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \MODULO_TIEMPOS|div_1hz~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MODULO_TIEMPOS|div_1hz\(23));

-- Location: LCCOMB_X7_Y10_N12
\MODULO_TIEMPOS|Equal1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_TIEMPOS|Equal1~6_combout\ = (\MODULO_TIEMPOS|div_1hz\(21) & (\MODULO_TIEMPOS|div_1hz\(22) & (\MODULO_TIEMPOS|div_1hz\(23) & \MODULO_TIEMPOS|div_1hz\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_TIEMPOS|div_1hz\(21),
	datab => \MODULO_TIEMPOS|div_1hz\(22),
	datac => \MODULO_TIEMPOS|div_1hz\(23),
	datad => \MODULO_TIEMPOS|div_1hz\(20),
	combout => \MODULO_TIEMPOS|Equal1~6_combout\);

-- Location: LCCOMB_X6_Y10_N22
\MODULO_TIEMPOS|Add1~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_TIEMPOS|Add1~48_combout\ = (\MODULO_TIEMPOS|div_1hz\(24) & (\MODULO_TIEMPOS|Add1~47\ $ (GND))) # (!\MODULO_TIEMPOS|div_1hz\(24) & (!\MODULO_TIEMPOS|Add1~47\ & VCC))
-- \MODULO_TIEMPOS|Add1~49\ = CARRY((\MODULO_TIEMPOS|div_1hz\(24) & !\MODULO_TIEMPOS|Add1~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_TIEMPOS|div_1hz\(24),
	datad => VCC,
	cin => \MODULO_TIEMPOS|Add1~47\,
	combout => \MODULO_TIEMPOS|Add1~48_combout\,
	cout => \MODULO_TIEMPOS|Add1~49\);

-- Location: FF_X6_Y10_N23
\MODULO_TIEMPOS|div_1hz[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \MODULO_TIEMPOS|Add1~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MODULO_TIEMPOS|div_1hz\(24));

-- Location: LCCOMB_X6_Y10_N24
\MODULO_TIEMPOS|Add1~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_TIEMPOS|Add1~50_combout\ = \MODULO_TIEMPOS|Add1~49\ $ (\MODULO_TIEMPOS|div_1hz\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \MODULO_TIEMPOS|div_1hz\(25),
	cin => \MODULO_TIEMPOS|Add1~49\,
	combout => \MODULO_TIEMPOS|Add1~50_combout\);

-- Location: LCCOMB_X7_Y10_N22
\MODULO_TIEMPOS|div_1hz~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_TIEMPOS|div_1hz~12_combout\ = (!\MODULO_TIEMPOS|Equal1~8_combout\ & \MODULO_TIEMPOS|Add1~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MODULO_TIEMPOS|Equal1~8_combout\,
	datad => \MODULO_TIEMPOS|Add1~50_combout\,
	combout => \MODULO_TIEMPOS|div_1hz~12_combout\);

-- Location: FF_X7_Y10_N23
\MODULO_TIEMPOS|div_1hz[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \MODULO_TIEMPOS|div_1hz~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MODULO_TIEMPOS|div_1hz\(25));

-- Location: LCCOMB_X7_Y10_N0
\MODULO_TIEMPOS|Equal1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_TIEMPOS|Equal1~7_combout\ = (\MODULO_TIEMPOS|div_1hz\(25) & !\MODULO_TIEMPOS|div_1hz\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MODULO_TIEMPOS|div_1hz\(25),
	datad => \MODULO_TIEMPOS|div_1hz\(24),
	combout => \MODULO_TIEMPOS|Equal1~7_combout\);

-- Location: LCCOMB_X7_Y10_N14
\MODULO_TIEMPOS|Equal1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_TIEMPOS|Equal1~5_combout\ = (!\MODULO_TIEMPOS|div_1hz\(18) & (!\MODULO_TIEMPOS|div_1hz\(16) & (\MODULO_TIEMPOS|div_1hz\(19) & \MODULO_TIEMPOS|div_1hz\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_TIEMPOS|div_1hz\(18),
	datab => \MODULO_TIEMPOS|div_1hz\(16),
	datac => \MODULO_TIEMPOS|div_1hz\(19),
	datad => \MODULO_TIEMPOS|div_1hz\(17),
	combout => \MODULO_TIEMPOS|Equal1~5_combout\);

-- Location: LCCOMB_X7_Y10_N24
\MODULO_TIEMPOS|Equal1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_TIEMPOS|Equal1~3_combout\ = (\MODULO_TIEMPOS|div_1hz\(13) & (\MODULO_TIEMPOS|div_1hz\(14) & (\MODULO_TIEMPOS|div_1hz\(12) & \MODULO_TIEMPOS|div_1hz\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_TIEMPOS|div_1hz\(13),
	datab => \MODULO_TIEMPOS|div_1hz\(14),
	datac => \MODULO_TIEMPOS|div_1hz\(12),
	datad => \MODULO_TIEMPOS|div_1hz\(15),
	combout => \MODULO_TIEMPOS|Equal1~3_combout\);

-- Location: LCCOMB_X7_Y11_N12
\MODULO_TIEMPOS|Equal1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_TIEMPOS|Equal1~2_combout\ = (!\MODULO_TIEMPOS|div_1hz\(11) & (!\MODULO_TIEMPOS|div_1hz\(9) & (!\MODULO_TIEMPOS|div_1hz\(10) & !\MODULO_TIEMPOS|div_1hz\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_TIEMPOS|div_1hz\(11),
	datab => \MODULO_TIEMPOS|div_1hz\(9),
	datac => \MODULO_TIEMPOS|div_1hz\(10),
	datad => \MODULO_TIEMPOS|div_1hz\(8),
	combout => \MODULO_TIEMPOS|Equal1~2_combout\);

-- Location: LCCOMB_X7_Y11_N30
\MODULO_TIEMPOS|Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_TIEMPOS|Equal1~1_combout\ = (!\MODULO_TIEMPOS|div_1hz\(4) & (!\MODULO_TIEMPOS|div_1hz\(6) & (!\MODULO_TIEMPOS|div_1hz\(5) & \MODULO_TIEMPOS|div_1hz\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_TIEMPOS|div_1hz\(4),
	datab => \MODULO_TIEMPOS|div_1hz\(6),
	datac => \MODULO_TIEMPOS|div_1hz\(5),
	datad => \MODULO_TIEMPOS|div_1hz\(7),
	combout => \MODULO_TIEMPOS|Equal1~1_combout\);

-- Location: LCCOMB_X7_Y11_N8
\MODULO_TIEMPOS|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_TIEMPOS|Equal1~0_combout\ = (!\MODULO_TIEMPOS|div_1hz\(2) & (!\MODULO_TIEMPOS|div_1hz\(1) & (!\MODULO_TIEMPOS|div_1hz\(0) & !\MODULO_TIEMPOS|div_1hz\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_TIEMPOS|div_1hz\(2),
	datab => \MODULO_TIEMPOS|div_1hz\(1),
	datac => \MODULO_TIEMPOS|div_1hz\(0),
	datad => \MODULO_TIEMPOS|div_1hz\(3),
	combout => \MODULO_TIEMPOS|Equal1~0_combout\);

-- Location: LCCOMB_X7_Y10_N10
\MODULO_TIEMPOS|Equal1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_TIEMPOS|Equal1~4_combout\ = (\MODULO_TIEMPOS|Equal1~3_combout\ & (\MODULO_TIEMPOS|Equal1~2_combout\ & (\MODULO_TIEMPOS|Equal1~1_combout\ & \MODULO_TIEMPOS|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_TIEMPOS|Equal1~3_combout\,
	datab => \MODULO_TIEMPOS|Equal1~2_combout\,
	datac => \MODULO_TIEMPOS|Equal1~1_combout\,
	datad => \MODULO_TIEMPOS|Equal1~0_combout\,
	combout => \MODULO_TIEMPOS|Equal1~4_combout\);

-- Location: LCCOMB_X7_Y10_N18
\MODULO_TIEMPOS|Equal1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_TIEMPOS|Equal1~8_combout\ = (\MODULO_TIEMPOS|Equal1~6_combout\ & (\MODULO_TIEMPOS|Equal1~7_combout\ & (\MODULO_TIEMPOS|Equal1~5_combout\ & \MODULO_TIEMPOS|Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_TIEMPOS|Equal1~6_combout\,
	datab => \MODULO_TIEMPOS|Equal1~7_combout\,
	datac => \MODULO_TIEMPOS|Equal1~5_combout\,
	datad => \MODULO_TIEMPOS|Equal1~4_combout\,
	combout => \MODULO_TIEMPOS|Equal1~8_combout\);

-- Location: LCCOMB_X7_Y10_N16
\MODULO_TIEMPOS|tick_1hz~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_TIEMPOS|tick_1hz~feeder_combout\ = \MODULO_TIEMPOS|Equal1~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MODULO_TIEMPOS|Equal1~8_combout\,
	combout => \MODULO_TIEMPOS|tick_1hz~feeder_combout\);

-- Location: FF_X7_Y10_N17
\MODULO_TIEMPOS|tick_1hz\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \MODULO_TIEMPOS|tick_1hz~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MODULO_TIEMPOS|tick_1hz~q\);

-- Location: LCCOMB_X7_Y24_N26
\MODULO_TIEMPOS|c_c~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_TIEMPOS|c_c~3_combout\ = (\MODULO_TIEMPOS|tick_1hz~q\ & (\MODULO_TIEMPOS|Equal5~0_combout\ & ((!\SW_Modo[0]~input_o\) # (!\SW_Modo[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW_Modo[1]~input_o\,
	datab => \SW_Modo[0]~input_o\,
	datac => \MODULO_TIEMPOS|tick_1hz~q\,
	datad => \MODULO_TIEMPOS|Equal5~0_combout\,
	combout => \MODULO_TIEMPOS|c_c~3_combout\);

-- Location: FF_X7_Y24_N5
\MODULO_TIEMPOS|c_t[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \MODULO_TIEMPOS|c_t[0]~3_combout\,
	clrn => \Reset~input_o\,
	ena => \MODULO_TIEMPOS|c_c~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MODULO_TIEMPOS|c_t\(0));

-- Location: LCCOMB_X7_Y24_N28
\MODULO_TIEMPOS|c_t[2]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_TIEMPOS|c_t[2]~1_combout\ = \MODULO_TIEMPOS|c_t\(2) $ (((\MODULO_TIEMPOS|c_c~3_combout\ & (\MODULO_TIEMPOS|c_t\(0) & \MODULO_TIEMPOS|c_t\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_TIEMPOS|c_c~3_combout\,
	datab => \MODULO_TIEMPOS|c_t\(0),
	datac => \MODULO_TIEMPOS|c_t\(2),
	datad => \MODULO_TIEMPOS|c_t\(1),
	combout => \MODULO_TIEMPOS|c_t[2]~1_combout\);

-- Location: FF_X7_Y24_N29
\MODULO_TIEMPOS|c_t[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \MODULO_TIEMPOS|c_t[2]~1_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MODULO_TIEMPOS|c_t\(2));

-- Location: LCCOMB_X6_Y24_N26
\MODULO_TIEMPOS|c_t~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_TIEMPOS|c_t~2_combout\ = (\MODULO_TIEMPOS|c_t\(0) & ((\MODULO_TIEMPOS|c_t\(2) & (\MODULO_TIEMPOS|c_t\(3) $ (\MODULO_TIEMPOS|c_t\(1)))) # (!\MODULO_TIEMPOS|c_t\(2) & (\MODULO_TIEMPOS|c_t\(3) & \MODULO_TIEMPOS|c_t\(1))))) # (!\MODULO_TIEMPOS|c_t\(0) 
-- & (((\MODULO_TIEMPOS|c_t\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_TIEMPOS|c_t\(0),
	datab => \MODULO_TIEMPOS|c_t\(2),
	datac => \MODULO_TIEMPOS|c_t\(3),
	datad => \MODULO_TIEMPOS|c_t\(1),
	combout => \MODULO_TIEMPOS|c_t~2_combout\);

-- Location: FF_X7_Y24_N15
\MODULO_TIEMPOS|c_t[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \MODULO_TIEMPOS|c_t~2_combout\,
	clrn => \Reset~input_o\,
	sload => VCC,
	ena => \MODULO_TIEMPOS|c_c~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MODULO_TIEMPOS|c_t\(3));

-- Location: LCCOMB_X7_Y24_N22
\MODULO_TIEMPOS|c_t~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_TIEMPOS|c_t~0_combout\ = (\MODULO_TIEMPOS|c_t\(0) & (!\MODULO_TIEMPOS|c_t\(1) & ((\MODULO_TIEMPOS|c_t\(2)) # (!\MODULO_TIEMPOS|c_t\(3))))) # (!\MODULO_TIEMPOS|c_t\(0) & (((\MODULO_TIEMPOS|c_t\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_TIEMPOS|c_t\(3),
	datab => \MODULO_TIEMPOS|c_t\(0),
	datac => \MODULO_TIEMPOS|c_t\(1),
	datad => \MODULO_TIEMPOS|c_t\(2),
	combout => \MODULO_TIEMPOS|c_t~0_combout\);

-- Location: FF_X7_Y24_N23
\MODULO_TIEMPOS|c_t[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \MODULO_TIEMPOS|c_t~0_combout\,
	clrn => \Reset~input_o\,
	ena => \MODULO_TIEMPOS|c_c~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MODULO_TIEMPOS|c_t\(1));

-- Location: LCCOMB_X7_Y24_N18
\MODULO_TIEMPOS|c_u[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_TIEMPOS|c_u[3]~0_combout\ = (\MODULO_TIEMPOS|tick_1hz~q\ & ((!\SW_Modo[0]~input_o\) # (!\SW_Modo[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW_Modo[1]~input_o\,
	datab => \SW_Modo[0]~input_o\,
	datac => \MODULO_TIEMPOS|tick_1hz~q\,
	combout => \MODULO_TIEMPOS|c_u[3]~0_combout\);

-- Location: LCCOMB_X7_Y24_N16
\MODULO_TIEMPOS|Equal6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_TIEMPOS|Equal6~0_combout\ = (\MODULO_TIEMPOS|c_t\(3) & (!\MODULO_TIEMPOS|c_t\(1) & (\MODULO_TIEMPOS|c_t\(0) & !\MODULO_TIEMPOS|c_t\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_TIEMPOS|c_t\(3),
	datab => \MODULO_TIEMPOS|c_t\(1),
	datac => \MODULO_TIEMPOS|c_t\(0),
	datad => \MODULO_TIEMPOS|c_t\(2),
	combout => \MODULO_TIEMPOS|Equal6~0_combout\);

-- Location: LCCOMB_X7_Y24_N0
\MODULO_TIEMPOS|c_c~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_TIEMPOS|c_c~2_combout\ = (\MODULO_TIEMPOS|c_c~q\) # ((\MODULO_TIEMPOS|Equal5~0_combout\ & (\MODULO_TIEMPOS|c_u[3]~0_combout\ & \MODULO_TIEMPOS|Equal6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_TIEMPOS|Equal5~0_combout\,
	datab => \MODULO_TIEMPOS|c_u[3]~0_combout\,
	datac => \MODULO_TIEMPOS|c_c~q\,
	datad => \MODULO_TIEMPOS|Equal6~0_combout\,
	combout => \MODULO_TIEMPOS|c_c~2_combout\);

-- Location: FF_X7_Y24_N1
\MODULO_TIEMPOS|c_c\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \MODULO_TIEMPOS|c_c~2_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MODULO_TIEMPOS|c_c~q\);

-- Location: LCCOMB_X7_Y24_N14
\MODULO_TIEMPOS|process_1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_TIEMPOS|process_1~0_combout\ = (!\MODULO_TIEMPOS|c_t\(1) & (\MODULO_TIEMPOS|c_c~q\ & (\MODULO_TIEMPOS|c_t\(3) & !\MODULO_TIEMPOS|c_t\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_TIEMPOS|c_t\(1),
	datab => \MODULO_TIEMPOS|c_c~q\,
	datac => \MODULO_TIEMPOS|c_t\(3),
	datad => \MODULO_TIEMPOS|c_t\(2),
	combout => \MODULO_TIEMPOS|process_1~0_combout\);

-- Location: LCCOMB_X7_Y24_N2
\MODULO_TIEMPOS|c_u[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_TIEMPOS|c_u[3]~1_combout\ = (\MODULO_TIEMPOS|c_u[3]~0_combout\ & (((\MODULO_TIEMPOS|c_t\(0)) # (!\MODULO_TIEMPOS|process_1~0_combout\)) # (!\MODULO_TIEMPOS|process_1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_TIEMPOS|process_1~1_combout\,
	datab => \MODULO_TIEMPOS|c_t\(0),
	datac => \MODULO_TIEMPOS|process_1~0_combout\,
	datad => \MODULO_TIEMPOS|c_u[3]~0_combout\,
	combout => \MODULO_TIEMPOS|c_u[3]~1_combout\);

-- Location: LCCOMB_X7_Y24_N24
\MODULO_TIEMPOS|c_u[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_TIEMPOS|c_u[0]~2_combout\ = \MODULO_TIEMPOS|c_u\(0) $ (\MODULO_TIEMPOS|c_u[3]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MODULO_TIEMPOS|c_u\(0),
	datad => \MODULO_TIEMPOS|c_u[3]~1_combout\,
	combout => \MODULO_TIEMPOS|c_u[0]~2_combout\);

-- Location: FF_X7_Y24_N25
\MODULO_TIEMPOS|c_u[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \MODULO_TIEMPOS|c_u[0]~2_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MODULO_TIEMPOS|c_u\(0));

-- Location: LCCOMB_X7_Y24_N6
\MODULO_TIEMPOS|Add3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_TIEMPOS|Add3~0_combout\ = \MODULO_TIEMPOS|c_u\(3) $ (((\MODULO_TIEMPOS|c_u\(0) & (\MODULO_TIEMPOS|c_u\(1) & \MODULO_TIEMPOS|c_u\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_TIEMPOS|c_u\(3),
	datab => \MODULO_TIEMPOS|c_u\(0),
	datac => \MODULO_TIEMPOS|c_u\(1),
	datad => \MODULO_TIEMPOS|c_u\(2),
	combout => \MODULO_TIEMPOS|Add3~0_combout\);

-- Location: LCCOMB_X7_Y24_N10
\MODULO_TIEMPOS|c_u[3]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_TIEMPOS|c_u[3]~5_combout\ = (\MODULO_TIEMPOS|c_u[3]~1_combout\ & (\MODULO_TIEMPOS|Add3~0_combout\ & (!\MODULO_TIEMPOS|Equal5~0_combout\))) # (!\MODULO_TIEMPOS|c_u[3]~1_combout\ & (((\MODULO_TIEMPOS|c_u\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_TIEMPOS|Add3~0_combout\,
	datab => \MODULO_TIEMPOS|Equal5~0_combout\,
	datac => \MODULO_TIEMPOS|c_u\(3),
	datad => \MODULO_TIEMPOS|c_u[3]~1_combout\,
	combout => \MODULO_TIEMPOS|c_u[3]~5_combout\);

-- Location: FF_X7_Y24_N11
\MODULO_TIEMPOS|c_u[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \MODULO_TIEMPOS|c_u[3]~5_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MODULO_TIEMPOS|c_u\(3));

-- Location: LCCOMB_X7_Y24_N12
\MODULO_TIEMPOS|Equal5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_TIEMPOS|Equal5~0_combout\ = (\MODULO_TIEMPOS|c_u\(3) & (!\MODULO_TIEMPOS|c_u\(2) & (!\MODULO_TIEMPOS|c_u\(1) & \MODULO_TIEMPOS|c_u\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_TIEMPOS|c_u\(3),
	datab => \MODULO_TIEMPOS|c_u\(2),
	datac => \MODULO_TIEMPOS|c_u\(1),
	datad => \MODULO_TIEMPOS|c_u\(0),
	combout => \MODULO_TIEMPOS|Equal5~0_combout\);

-- Location: LCCOMB_X7_Y24_N30
\MODULO_TIEMPOS|c_u[1]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_TIEMPOS|c_u[1]~3_combout\ = (\MODULO_TIEMPOS|c_u[3]~1_combout\ & (!\MODULO_TIEMPOS|Equal5~0_combout\ & (\MODULO_TIEMPOS|c_u\(0) $ (\MODULO_TIEMPOS|c_u\(1))))) # (!\MODULO_TIEMPOS|c_u[3]~1_combout\ & (((\MODULO_TIEMPOS|c_u\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_TIEMPOS|Equal5~0_combout\,
	datab => \MODULO_TIEMPOS|c_u\(0),
	datac => \MODULO_TIEMPOS|c_u\(1),
	datad => \MODULO_TIEMPOS|c_u[3]~1_combout\,
	combout => \MODULO_TIEMPOS|c_u[1]~3_combout\);

-- Location: FF_X7_Y24_N31
\MODULO_TIEMPOS|c_u[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \MODULO_TIEMPOS|c_u[1]~3_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MODULO_TIEMPOS|c_u\(1));

-- Location: LCCOMB_X7_Y24_N20
\MODULO_TIEMPOS|c_u[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_TIEMPOS|c_u[2]~4_combout\ = \MODULO_TIEMPOS|c_u\(2) $ (((\MODULO_TIEMPOS|c_u\(1) & (\MODULO_TIEMPOS|c_u\(0) & \MODULO_TIEMPOS|c_u[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_TIEMPOS|c_u\(1),
	datab => \MODULO_TIEMPOS|c_u\(0),
	datac => \MODULO_TIEMPOS|c_u\(2),
	datad => \MODULO_TIEMPOS|c_u[3]~1_combout\,
	combout => \MODULO_TIEMPOS|c_u[2]~4_combout\);

-- Location: FF_X7_Y24_N21
\MODULO_TIEMPOS|c_u[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \MODULO_TIEMPOS|c_u[2]~4_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MODULO_TIEMPOS|c_u\(2));

-- Location: LCCOMB_X7_Y25_N14
\MODULO_VISTAS|Mux12~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_VISTAS|Mux12~4_combout\ = (\MODULO_VISTAS|mux_hex0~0_combout\ & ((\R_TT_D|Reg_Out\(2)) # ((\MODULO_TIEMPOS|c_u\(2) & \MODULO_VISTAS|Mux14~1_combout\)))) # (!\MODULO_VISTAS|mux_hex0~0_combout\ & (((\MODULO_TIEMPOS|c_u\(2) & 
-- \MODULO_VISTAS|Mux14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_VISTAS|mux_hex0~0_combout\,
	datab => \R_TT_D|Reg_Out\(2),
	datac => \MODULO_TIEMPOS|c_u\(2),
	datad => \MODULO_VISTAS|Mux14~1_combout\,
	combout => \MODULO_VISTAS|Mux12~4_combout\);

-- Location: LCCOMB_X5_Y25_N16
\MODULO_VISTAS|Mux12~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_VISTAS|Mux12~5_combout\ = (\SW_Vista[0]~input_o\ & (\MODULO_ENRUTADOR|last_color_reg\(1) & (\MODULO_ENRUTADOR|last_color_reg\(0)))) # (!\SW_Vista[0]~input_o\ & (((\BANCO_VERDE|R_T|Reg_Out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW_Vista[0]~input_o\,
	datab => \MODULO_ENRUTADOR|last_color_reg\(1),
	datac => \MODULO_ENRUTADOR|last_color_reg\(0),
	datad => \BANCO_VERDE|R_T|Reg_Out\(2),
	combout => \MODULO_VISTAS|Mux12~5_combout\);

-- Location: LCCOMB_X8_Y25_N28
\MODULO_VISTAS|Mux12~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_VISTAS|Mux12~6_combout\ = (!\SW_Modo[1]~input_o\ & ((\SW_Modo[0]~input_o\ & (\MODULO_VISTAS|Mux12~4_combout\)) # (!\SW_Modo[0]~input_o\ & ((\MODULO_VISTAS|Mux12~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_VISTAS|Mux12~4_combout\,
	datab => \MODULO_VISTAS|Mux12~5_combout\,
	datac => \SW_Modo[0]~input_o\,
	datad => \SW_Modo[1]~input_o\,
	combout => \MODULO_VISTAS|Mux12~6_combout\);

-- Location: LCCOMB_X8_Y25_N16
\MODULO_VISTAS|Mux12~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_VISTAS|Mux12~7_combout\ = (\MODULO_VISTAS|Mux12~6_combout\) # ((\SW_Modo[1]~input_o\ & (!\MODULO_VISTAS|mux_hex3~0_combout\ & !\SW_Modo[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW_Modo[1]~input_o\,
	datab => \MODULO_VISTAS|mux_hex3~0_combout\,
	datac => \SW_Modo[0]~input_o\,
	datad => \MODULO_VISTAS|Mux12~6_combout\,
	combout => \MODULO_VISTAS|Mux12~7_combout\);

-- Location: LCCOMB_X5_Y25_N2
\MODULO_VISTAS|Mux13~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_VISTAS|Mux13~1_combout\ = (\SW_Vista[0]~input_o\ & (\MODULO_ENRUTADOR|last_color_reg\(0) $ ((\MODULO_ENRUTADOR|last_color_reg\(1))))) # (!\SW_Vista[0]~input_o\ & (((\BANCO_VERDE|R_T|Reg_Out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_ENRUTADOR|last_color_reg\(0),
	datab => \MODULO_ENRUTADOR|last_color_reg\(1),
	datac => \BANCO_VERDE|R_T|Reg_Out\(1),
	datad => \SW_Vista[0]~input_o\,
	combout => \MODULO_VISTAS|Mux13~1_combout\);

-- Location: FF_X5_Y24_N17
\R_TT_D|Reg_Out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \C_TT_D|CNT_int\(1),
	clrn => \Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R_TT_D|Reg_Out\(1));

-- Location: LCCOMB_X5_Y25_N28
\MODULO_VISTAS|Mux13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_VISTAS|Mux13~0_combout\ = (\R_TT_D|Reg_Out\(1) & ((\MODULO_VISTAS|mux_hex0~0_combout\) # ((\MODULO_VISTAS|Mux14~1_combout\ & \MODULO_TIEMPOS|c_u\(1))))) # (!\R_TT_D|Reg_Out\(1) & (\MODULO_VISTAS|Mux14~1_combout\ & ((\MODULO_TIEMPOS|c_u\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_TT_D|Reg_Out\(1),
	datab => \MODULO_VISTAS|Mux14~1_combout\,
	datac => \MODULO_VISTAS|mux_hex0~0_combout\,
	datad => \MODULO_TIEMPOS|c_u\(1),
	combout => \MODULO_VISTAS|Mux13~0_combout\);

-- Location: LCCOMB_X5_Y25_N22
\MODULO_VISTAS|Mux13~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_VISTAS|Mux13~2_combout\ = (\SW_Modo[1]~input_o\ & (((\SW_Modo[0]~input_o\)))) # (!\SW_Modo[1]~input_o\ & ((\SW_Modo[0]~input_o\ & ((\MODULO_VISTAS|Mux13~0_combout\))) # (!\SW_Modo[0]~input_o\ & (\MODULO_VISTAS|Mux13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW_Modo[1]~input_o\,
	datab => \MODULO_VISTAS|Mux13~1_combout\,
	datac => \SW_Modo[0]~input_o\,
	datad => \MODULO_VISTAS|Mux13~0_combout\,
	combout => \MODULO_VISTAS|Mux13~2_combout\);

-- Location: LCCOMB_X3_Y25_N30
\MODULO_VISTAS|Mux14~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_VISTAS|Mux14~3_combout\ = (!\SW_Color[1]~input_o\ & (\SW_Modo[1]~input_o\ & !\SW_Color[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW_Color[1]~input_o\,
	datab => \SW_Modo[1]~input_o\,
	datac => \SW_Color[0]~input_o\,
	combout => \MODULO_VISTAS|Mux14~3_combout\);

-- Location: FF_X5_Y24_N9
\R_TT_D|Reg_Out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \C_TT_D|CNT_int\(0),
	clrn => \Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R_TT_D|Reg_Out\(0));

-- Location: LCCOMB_X5_Y24_N8
\MODULO_VISTAS|Mux14~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_VISTAS|Mux14~0_combout\ = (\SW_Modo[1]~input_o\) # ((\SW_Vista[0]~input_o\ & (\R_TT_D|Reg_Out\(0) & \SW_Vista[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW_Vista[0]~input_o\,
	datab => \SW_Modo[1]~input_o\,
	datac => \R_TT_D|Reg_Out\(0),
	datad => \SW_Vista[1]~input_o\,
	combout => \MODULO_VISTAS|Mux14~0_combout\);

-- Location: LCCOMB_X6_Y24_N0
\MODULO_VISTAS|Mux14~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_VISTAS|Mux14~2_combout\ = (\SW_Modo[0]~input_o\ & ((\MODULO_VISTAS|Mux14~0_combout\) # ((\MODULO_VISTAS|Mux14~1_combout\ & \MODULO_TIEMPOS|c_u\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_VISTAS|Mux14~0_combout\,
	datab => \SW_Modo[0]~input_o\,
	datac => \MODULO_VISTAS|Mux14~1_combout\,
	datad => \MODULO_TIEMPOS|c_u\(0),
	combout => \MODULO_VISTAS|Mux14~2_combout\);

-- Location: LCCOMB_X2_Y25_N28
\MODULO_VISTAS|Mux14~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_VISTAS|Mux14~4_combout\ = (\SW_Vista[0]~input_o\ & (((\MODULO_ENRUTADOR|last_color_reg\(1) & !\MODULO_ENRUTADOR|last_color_reg\(0))))) # (!\SW_Vista[0]~input_o\ & (\BANCO_VERDE|R_T|Reg_Out\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_VERDE|R_T|Reg_Out\(0),
	datab => \MODULO_ENRUTADOR|last_color_reg\(1),
	datac => \MODULO_ENRUTADOR|last_color_reg\(0),
	datad => \SW_Vista[0]~input_o\,
	combout => \MODULO_VISTAS|Mux14~4_combout\);

-- Location: LCCOMB_X3_Y25_N26
\MODULO_VISTAS|Mux14~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_VISTAS|Mux14~5_combout\ = (\MODULO_VISTAS|Mux14~3_combout\) # ((\MODULO_VISTAS|Mux14~2_combout\) # ((\MODULO_VISTAS|Mux1~0_combout\ & \MODULO_VISTAS|Mux14~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_VISTAS|Mux14~3_combout\,
	datab => \MODULO_VISTAS|Mux1~0_combout\,
	datac => \MODULO_VISTAS|Mux14~2_combout\,
	datad => \MODULO_VISTAS|Mux14~4_combout\,
	combout => \MODULO_VISTAS|Mux14~5_combout\);

-- Location: FF_X5_Y24_N1
\R_TT_D|Reg_Out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \C_TT_D|CNT_int\(3),
	clrn => \Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R_TT_D|Reg_Out\(3));

-- Location: LCCOMB_X5_Y24_N0
\MODULO_VISTAS|Mux11~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_VISTAS|Mux11~1_combout\ = (\MODULO_VISTAS|Mux14~1_combout\ & ((\MODULO_TIEMPOS|c_u\(3)) # ((\R_TT_D|Reg_Out\(3) & \MODULO_VISTAS|mux_hex0~0_combout\)))) # (!\MODULO_VISTAS|Mux14~1_combout\ & (((\R_TT_D|Reg_Out\(3) & 
-- \MODULO_VISTAS|mux_hex0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_VISTAS|Mux14~1_combout\,
	datab => \MODULO_TIEMPOS|c_u\(3),
	datac => \R_TT_D|Reg_Out\(3),
	datad => \MODULO_VISTAS|mux_hex0~0_combout\,
	combout => \MODULO_VISTAS|Mux11~1_combout\);

-- Location: LCCOMB_X8_Y25_N24
\MODULO_VISTAS|Mux11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_VISTAS|Mux11~0_combout\ = (!\SW_Modo[0]~input_o\ & ((\SW_Vista[0]~input_o\ & ((!\MODULO_VISTAS|Mux15~0_combout\))) # (!\SW_Vista[0]~input_o\ & (\BANCO_VERDE|R_T|Reg_Out\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW_Modo[0]~input_o\,
	datab => \SW_Vista[0]~input_o\,
	datac => \BANCO_VERDE|R_T|Reg_Out\(3),
	datad => \MODULO_VISTAS|Mux15~0_combout\,
	combout => \MODULO_VISTAS|Mux11~0_combout\);

-- Location: LCCOMB_X8_Y25_N8
\MODULO_VISTAS|Mux11~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_VISTAS|Mux11~2_combout\ = (\SW_Modo[1]~input_o\ & (((\SW_Modo[0]~input_o\)))) # (!\SW_Modo[1]~input_o\ & ((\MODULO_VISTAS|Mux11~0_combout\) # ((\MODULO_VISTAS|Mux11~1_combout\ & \SW_Modo[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_VISTAS|Mux11~1_combout\,
	datab => \MODULO_VISTAS|Mux11~0_combout\,
	datac => \SW_Modo[0]~input_o\,
	datad => \SW_Modo[1]~input_o\,
	combout => \MODULO_VISTAS|Mux11~2_combout\);

-- Location: LCCOMB_X9_Y25_N16
\DECO_1|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DECO_1|Mux6~0_combout\ = (\MODULO_VISTAS|Mux11~2_combout\ & ((\MODULO_VISTAS|Mux12~7_combout\ & ((\MODULO_VISTAS|Mux14~5_combout\))) # (!\MODULO_VISTAS|Mux12~7_combout\ & (\MODULO_VISTAS|Mux13~2_combout\)))) # (!\MODULO_VISTAS|Mux11~2_combout\ & 
-- (!\MODULO_VISTAS|Mux13~2_combout\ & (\MODULO_VISTAS|Mux12~7_combout\ $ (\MODULO_VISTAS|Mux14~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_VISTAS|Mux12~7_combout\,
	datab => \MODULO_VISTAS|Mux13~2_combout\,
	datac => \MODULO_VISTAS|Mux14~5_combout\,
	datad => \MODULO_VISTAS|Mux11~2_combout\,
	combout => \DECO_1|Mux6~0_combout\);

-- Location: LCCOMB_X3_Y25_N0
\MODULO_LEDS|LEDG[9]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_LEDS|LEDG[9]~25_combout\ = (\SW_Color[1]~input_o\) # (((\SW_Color[0]~input_o\) # (\SW_Modo[0]~input_o\)) # (!\SW_Modo[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW_Color[1]~input_o\,
	datab => \SW_Modo[1]~input_o\,
	datac => \SW_Color[0]~input_o\,
	datad => \SW_Modo[0]~input_o\,
	combout => \MODULO_LEDS|LEDG[9]~25_combout\);

-- Location: LCCOMB_X8_Y25_N2
\DECO_1|Mux6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DECO_1|Mux6~1_combout\ = (!\MODULO_VISTAS|Mux12~6_combout\ & (\MODULO_LEDS|LEDG[9]~25_combout\ & !\MODULO_VISTAS|Mux11~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MODULO_VISTAS|Mux12~6_combout\,
	datac => \MODULO_LEDS|LEDG[9]~25_combout\,
	datad => \MODULO_VISTAS|Mux11~2_combout\,
	combout => \DECO_1|Mux6~1_combout\);

-- Location: LCCOMB_X9_Y25_N6
\DECO_1|Mux6~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DECO_1|Mux6~2_combout\ = (\MODULO_VISTAS|Mux10~3_combout\ & (((!\MODULO_VISTAS|Mux13~2_combout\) # (!\DECO_1|Mux6~1_combout\)))) # (!\MODULO_VISTAS|Mux10~3_combout\ & (\DECO_1|Mux6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_VISTAS|Mux10~3_combout\,
	datab => \DECO_1|Mux6~0_combout\,
	datac => \DECO_1|Mux6~1_combout\,
	datad => \MODULO_VISTAS|Mux13~2_combout\,
	combout => \DECO_1|Mux6~2_combout\);

-- Location: LCCOMB_X9_Y25_N26
\DECO_1|Mux5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DECO_1|Mux5~1_combout\ = (\MODULO_VISTAS|Mux12~7_combout\ & (\MODULO_VISTAS|Mux14~5_combout\ $ (((\MODULO_VISTAS|Mux13~2_combout\ & !\MODULO_VISTAS|Mux11~2_combout\))))) # (!\MODULO_VISTAS|Mux12~7_combout\ & (\MODULO_VISTAS|Mux13~2_combout\ & 
-- (!\MODULO_VISTAS|Mux14~5_combout\ & \MODULO_VISTAS|Mux11~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_VISTAS|Mux12~7_combout\,
	datab => \MODULO_VISTAS|Mux13~2_combout\,
	datac => \MODULO_VISTAS|Mux14~5_combout\,
	datad => \MODULO_VISTAS|Mux11~2_combout\,
	combout => \DECO_1|Mux5~1_combout\);

-- Location: LCCOMB_X9_Y25_N20
\DECO_1|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DECO_1|Mux5~0_combout\ = (\MODULO_VISTAS|Mux10~3_combout\ & (((\MODULO_VISTAS|Mux13~2_combout\) # (!\MODULO_VISTAS|Mux14~5_combout\)) # (!\DECO_1|Mux6~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DECO_1|Mux6~1_combout\,
	datab => \MODULO_VISTAS|Mux13~2_combout\,
	datac => \MODULO_VISTAS|Mux14~5_combout\,
	datad => \MODULO_VISTAS|Mux10~3_combout\,
	combout => \DECO_1|Mux5~0_combout\);

-- Location: LCCOMB_X9_Y25_N12
\DECO_1|Mux5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DECO_1|Mux5~2_combout\ = (\DECO_1|Mux5~0_combout\) # ((!\MODULO_VISTAS|Mux10~3_combout\ & \DECO_1|Mux5~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_VISTAS|Mux10~3_combout\,
	datac => \DECO_1|Mux5~1_combout\,
	datad => \DECO_1|Mux5~0_combout\,
	combout => \DECO_1|Mux5~2_combout\);

-- Location: LCCOMB_X9_Y25_N22
\DECO_1|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DECO_1|Mux4~0_combout\ = (\MODULO_VISTAS|Mux12~7_combout\ & (\MODULO_VISTAS|Mux11~2_combout\ & ((\MODULO_VISTAS|Mux13~2_combout\) # (\MODULO_VISTAS|Mux14~5_combout\)))) # (!\MODULO_VISTAS|Mux12~7_combout\ & (\MODULO_VISTAS|Mux13~2_combout\ & 
-- (!\MODULO_VISTAS|Mux14~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_VISTAS|Mux12~7_combout\,
	datab => \MODULO_VISTAS|Mux13~2_combout\,
	datac => \MODULO_VISTAS|Mux14~5_combout\,
	datad => \MODULO_VISTAS|Mux11~2_combout\,
	combout => \DECO_1|Mux4~0_combout\);

-- Location: LCCOMB_X9_Y25_N24
\DECO_1|Mux4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DECO_1|Mux4~1_combout\ = (\DECO_1|Mux5~0_combout\) # ((!\MODULO_VISTAS|Mux10~3_combout\ & \DECO_1|Mux4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_VISTAS|Mux10~3_combout\,
	datac => \DECO_1|Mux4~0_combout\,
	datad => \DECO_1|Mux5~0_combout\,
	combout => \DECO_1|Mux4~1_combout\);

-- Location: LCCOMB_X9_Y25_N4
\DECO_1|Mux3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DECO_1|Mux3~1_combout\ = (!\MODULO_VISTAS|Mux12~7_combout\ & (!\MODULO_VISTAS|Mux11~2_combout\ & ((\MODULO_VISTAS|Mux13~2_combout\) # (\MODULO_VISTAS|Mux14~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_VISTAS|Mux12~7_combout\,
	datab => \MODULO_VISTAS|Mux13~2_combout\,
	datac => \MODULO_VISTAS|Mux14~5_combout\,
	datad => \MODULO_VISTAS|Mux11~2_combout\,
	combout => \DECO_1|Mux3~1_combout\);

-- Location: LCCOMB_X9_Y25_N2
\DECO_1|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DECO_1|Mux3~0_combout\ = (\MODULO_VISTAS|Mux14~5_combout\ & (!\MODULO_VISTAS|Mux11~2_combout\ & (\MODULO_VISTAS|Mux12~7_combout\ $ (!\MODULO_VISTAS|Mux13~2_combout\)))) # (!\MODULO_VISTAS|Mux14~5_combout\ & ((\MODULO_VISTAS|Mux13~2_combout\ & 
-- ((\MODULO_VISTAS|Mux11~2_combout\))) # (!\MODULO_VISTAS|Mux13~2_combout\ & (\MODULO_VISTAS|Mux12~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_VISTAS|Mux12~7_combout\,
	datab => \MODULO_VISTAS|Mux13~2_combout\,
	datac => \MODULO_VISTAS|Mux14~5_combout\,
	datad => \MODULO_VISTAS|Mux11~2_combout\,
	combout => \DECO_1|Mux3~0_combout\);

-- Location: LCCOMB_X9_Y25_N10
\DECO_1|Mux3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DECO_1|Mux3~2_combout\ = (\MODULO_VISTAS|Mux10~3_combout\ & (!\DECO_1|Mux3~1_combout\)) # (!\MODULO_VISTAS|Mux10~3_combout\ & ((\DECO_1|Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_VISTAS|Mux10~3_combout\,
	datac => \DECO_1|Mux3~1_combout\,
	datad => \DECO_1|Mux3~0_combout\,
	combout => \DECO_1|Mux3~2_combout\);

-- Location: LCCOMB_X9_Y25_N28
\DECO_1|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DECO_1|Mux2~0_combout\ = (\MODULO_VISTAS|Mux13~2_combout\ & (((\MODULO_VISTAS|Mux14~5_combout\ & !\MODULO_VISTAS|Mux11~2_combout\)))) # (!\MODULO_VISTAS|Mux13~2_combout\ & ((\MODULO_VISTAS|Mux12~7_combout\ & ((!\MODULO_VISTAS|Mux11~2_combout\))) # 
-- (!\MODULO_VISTAS|Mux12~7_combout\ & (\MODULO_VISTAS|Mux14~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_VISTAS|Mux12~7_combout\,
	datab => \MODULO_VISTAS|Mux13~2_combout\,
	datac => \MODULO_VISTAS|Mux14~5_combout\,
	datad => \MODULO_VISTAS|Mux11~2_combout\,
	combout => \DECO_1|Mux2~0_combout\);

-- Location: LCCOMB_X9_Y25_N18
\DECO_1|Mux2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DECO_1|Mux2~1_combout\ = (\MODULO_VISTAS|Mux10~3_combout\ & (!\DECO_1|Mux3~1_combout\)) # (!\MODULO_VISTAS|Mux10~3_combout\ & ((\DECO_1|Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_VISTAS|Mux10~3_combout\,
	datac => \DECO_1|Mux3~1_combout\,
	datad => \DECO_1|Mux2~0_combout\,
	combout => \DECO_1|Mux2~1_combout\);

-- Location: LCCOMB_X9_Y25_N8
\DECO_1|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DECO_1|Mux1~0_combout\ = (\MODULO_VISTAS|Mux14~5_combout\ & (!\MODULO_VISTAS|Mux11~2_combout\ & ((\MODULO_VISTAS|Mux13~2_combout\) # (!\MODULO_VISTAS|Mux12~7_combout\)))) # (!\MODULO_VISTAS|Mux14~5_combout\ & (!\MODULO_VISTAS|Mux12~7_combout\ & 
-- (\MODULO_VISTAS|Mux13~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_VISTAS|Mux12~7_combout\,
	datab => \MODULO_VISTAS|Mux13~2_combout\,
	datac => \MODULO_VISTAS|Mux14~5_combout\,
	datad => \MODULO_VISTAS|Mux11~2_combout\,
	combout => \DECO_1|Mux1~0_combout\);

-- Location: LCCOMB_X9_Y25_N14
\DECO_1|Mux1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DECO_1|Mux1~1_combout\ = (\MODULO_VISTAS|Mux10~3_combout\ & (((!\MODULO_VISTAS|Mux13~2_combout\)) # (!\DECO_1|Mux6~1_combout\))) # (!\MODULO_VISTAS|Mux10~3_combout\ & (((\DECO_1|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DECO_1|Mux6~1_combout\,
	datab => \MODULO_VISTAS|Mux13~2_combout\,
	datac => \DECO_1|Mux1~0_combout\,
	datad => \MODULO_VISTAS|Mux10~3_combout\,
	combout => \DECO_1|Mux1~1_combout\);

-- Location: LCCOMB_X9_Y25_N0
\DECO_1|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DECO_1|Mux0~0_combout\ = (\MODULO_VISTAS|Mux12~7_combout\) # (\MODULO_VISTAS|Mux11~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MODULO_VISTAS|Mux12~7_combout\,
	datad => \MODULO_VISTAS|Mux11~2_combout\,
	combout => \DECO_1|Mux0~0_combout\);

-- Location: LCCOMB_X9_Y25_N30
\DECO_1|Mux0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DECO_1|Mux0~1_combout\ = (\MODULO_VISTAS|Mux10~3_combout\ & ((\DECO_1|Mux0~0_combout\) # ((\MODULO_VISTAS|Mux13~2_combout\ & \MODULO_VISTAS|Mux14~5_combout\)))) # (!\MODULO_VISTAS|Mux10~3_combout\ & ((\MODULO_VISTAS|Mux13~2_combout\ & 
-- (\MODULO_VISTAS|Mux14~5_combout\ & \DECO_1|Mux0~0_combout\)) # (!\MODULO_VISTAS|Mux13~2_combout\ & ((!\DECO_1|Mux0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_VISTAS|Mux10~3_combout\,
	datab => \MODULO_VISTAS|Mux13~2_combout\,
	datac => \MODULO_VISTAS|Mux14~5_combout\,
	datad => \DECO_1|Mux0~0_combout\,
	combout => \DECO_1|Mux0~1_combout\);

-- Location: LCCOMB_X8_Y25_N0
\MODULO_VISTAS|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_VISTAS|Mux5~0_combout\ = ((\MODULO_VISTAS|Mux15~1_combout\ & (!\MODULO_VISTAS|mux_hex0~0_combout\ & \MODULO_VISTAS|Mux10~2_combout\))) # (!\MODULO_LEDS|LEDG[9]~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_VISTAS|Mux15~1_combout\,
	datab => \MODULO_LEDS|LEDG[9]~25_combout\,
	datac => \MODULO_VISTAS|mux_hex0~0_combout\,
	datad => \MODULO_VISTAS|Mux10~2_combout\,
	combout => \MODULO_VISTAS|Mux5~0_combout\);

-- Location: LCCOMB_X6_Y24_N22
\MODULO_VISTAS|Mux6~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_VISTAS|Mux6~6_combout\ = (\MODULO_VISTAS|Mux14~1_combout\ & (((\MODULO_TIEMPOS|c_t\(3))))) # (!\MODULO_VISTAS|Mux14~1_combout\ & ((\SW_Color[0]~input_o\) # ((\SW_Color[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_VISTAS|Mux14~1_combout\,
	datab => \SW_Color[0]~input_o\,
	datac => \MODULO_TIEMPOS|c_t\(3),
	datad => \SW_Color[1]~input_o\,
	combout => \MODULO_VISTAS|Mux6~6_combout\);

-- Location: LCCOMB_X6_Y25_N18
\MODULO_VISTAS|Mux6~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_VISTAS|Mux6~2_combout\ = (\SW_Modo[0]~input_o\ & (\SW_Vista[0]~input_o\ & \SW_Vista[1]~input_o\)) # (!\SW_Modo[0]~input_o\ & (!\SW_Vista[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW_Modo[0]~input_o\,
	datab => \SW_Vista[0]~input_o\,
	datad => \SW_Vista[1]~input_o\,
	combout => \MODULO_VISTAS|Mux6~2_combout\);

-- Location: LCCOMB_X6_Y25_N20
\MODULO_VISTAS|Mux6~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_VISTAS|Mux6~3_combout\ = (\SW_Modo[0]~input_o\ & ((\MODULO_VISTAS|Mux6~6_combout\) # ((\MODULO_VISTAS|Mux6~2_combout\)))) # (!\SW_Modo[0]~input_o\ & (((\R_TT_U|Reg_Out\(3) & !\MODULO_VISTAS|Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW_Modo[0]~input_o\,
	datab => \MODULO_VISTAS|Mux6~6_combout\,
	datac => \R_TT_U|Reg_Out\(3),
	datad => \MODULO_VISTAS|Mux6~2_combout\,
	combout => \MODULO_VISTAS|Mux6~3_combout\);

-- Location: LCCOMB_X6_Y25_N28
\MODULO_VISTAS|Mux6~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_VISTAS|Mux6~4_combout\ = (\MODULO_VISTAS|Mux6~3_combout\ & (((\MODULO_TIEMPOS|c_u\(3))) # (!\MODULO_VISTAS|Mux6~2_combout\))) # (!\MODULO_VISTAS|Mux6~3_combout\ & (\MODULO_VISTAS|Mux6~2_combout\ & (\BANCO_AZUL|R_T|Reg_Out\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_VISTAS|Mux6~3_combout\,
	datab => \MODULO_VISTAS|Mux6~2_combout\,
	datac => \BANCO_AZUL|R_T|Reg_Out\(3),
	datad => \MODULO_TIEMPOS|c_u\(3),
	combout => \MODULO_VISTAS|Mux6~4_combout\);

-- Location: LCCOMB_X7_Y25_N6
\MODULO_VISTAS|Mux6~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_VISTAS|Mux6~5_combout\ = (\SW_Modo[1]~input_o\ & (((\SW_Modo[0]~input_o\) # (\MODULO_VISTAS|mux_hex3~0_combout\)))) # (!\SW_Modo[1]~input_o\ & (\MODULO_VISTAS|Mux6~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_VISTAS|Mux6~4_combout\,
	datab => \SW_Modo[1]~input_o\,
	datac => \SW_Modo[0]~input_o\,
	datad => \MODULO_VISTAS|mux_hex3~0_combout\,
	combout => \MODULO_VISTAS|Mux6~5_combout\);

-- Location: LCCOMB_X6_Y24_N12
\MODULO_VISTAS|Mux7~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_VISTAS|Mux7~6_combout\ = (\MODULO_VISTAS|Mux14~1_combout\ & (((\MODULO_TIEMPOS|c_t\(2))))) # (!\MODULO_VISTAS|Mux14~1_combout\ & ((\SW_Color[0]~input_o\) # ((\SW_Color[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_VISTAS|Mux14~1_combout\,
	datab => \SW_Color[0]~input_o\,
	datac => \SW_Color[1]~input_o\,
	datad => \MODULO_TIEMPOS|c_t\(2),
	combout => \MODULO_VISTAS|Mux7~6_combout\);

-- Location: LCCOMB_X6_Y25_N0
\MODULO_VISTAS|Mux7~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_VISTAS|Mux7~3_combout\ = (\MODULO_VISTAS|Mux6~2_combout\ & (((\SW_Modo[0]~input_o\)))) # (!\MODULO_VISTAS|Mux6~2_combout\ & ((\SW_Modo[0]~input_o\ & (\MODULO_VISTAS|Mux7~6_combout\)) # (!\SW_Modo[0]~input_o\ & ((\R_TT_U|Reg_Out\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_VISTAS|Mux7~6_combout\,
	datab => \MODULO_VISTAS|Mux6~2_combout\,
	datac => \R_TT_U|Reg_Out\(2),
	datad => \SW_Modo[0]~input_o\,
	combout => \MODULO_VISTAS|Mux7~3_combout\);

-- Location: LCCOMB_X7_Y25_N10
\MODULO_VISTAS|Mux7~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_VISTAS|Mux7~4_combout\ = (\MODULO_VISTAS|Mux7~3_combout\ & (((\MODULO_TIEMPOS|c_u\(2)) # (!\MODULO_VISTAS|Mux6~2_combout\)))) # (!\MODULO_VISTAS|Mux7~3_combout\ & (\BANCO_AZUL|R_T|Reg_Out\(2) & ((\MODULO_VISTAS|Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BANCO_AZUL|R_T|Reg_Out\(2),
	datab => \MODULO_TIEMPOS|c_u\(2),
	datac => \MODULO_VISTAS|Mux7~3_combout\,
	datad => \MODULO_VISTAS|Mux6~2_combout\,
	combout => \MODULO_VISTAS|Mux7~4_combout\);

-- Location: LCCOMB_X7_Y25_N28
\MODULO_VISTAS|Mux7~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_VISTAS|Mux7~5_combout\ = (\SW_Modo[1]~input_o\ & (((\SW_Modo[0]~input_o\) # (\MODULO_VISTAS|mux_hex3~0_combout\)))) # (!\SW_Modo[1]~input_o\ & (\MODULO_VISTAS|Mux7~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_VISTAS|Mux7~4_combout\,
	datab => \SW_Modo[1]~input_o\,
	datac => \SW_Modo[0]~input_o\,
	datad => \MODULO_VISTAS|mux_hex3~0_combout\,
	combout => \MODULO_VISTAS|Mux7~5_combout\);

-- Location: LCCOMB_X15_Y25_N28
\DECO_2|Mux6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DECO_2|Mux6~1_combout\ = (!\MODULO_VISTAS|Mux6~5_combout\ & !\MODULO_VISTAS|Mux7~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MODULO_VISTAS|Mux6~5_combout\,
	datad => \MODULO_VISTAS|Mux7~5_combout\,
	combout => \DECO_2|Mux6~1_combout\);

-- Location: LCCOMB_X3_Y24_N30
\MODULO_VISTAS|Mux8~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_VISTAS|Mux8~4_combout\ = (!\MODULO_VISTAS|mux_hex0~0_combout\ & (!\MODULO_VISTAS|Mux15~1_combout\ & ((\MODULO_TIEMPOS|c_t\(1)) # (!\MODULO_VISTAS|Equal6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_VISTAS|mux_hex0~0_combout\,
	datab => \MODULO_TIEMPOS|c_t\(1),
	datac => \MODULO_VISTAS|Mux15~1_combout\,
	datad => \MODULO_VISTAS|Equal6~0_combout\,
	combout => \MODULO_VISTAS|Mux8~4_combout\);

-- Location: LCCOMB_X6_Y24_N16
\MODULO_VISTAS|Mux8~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_VISTAS|Mux8~5_combout\ = (\SW_Modo[0]~input_o\ & ((\MODULO_VISTAS|Mux8~4_combout\) # ((\MODULO_TIEMPOS|c_u\(1) & \MODULO_VISTAS|mux_hex0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_VISTAS|Mux8~4_combout\,
	datab => \MODULO_TIEMPOS|c_u\(1),
	datac => \SW_Modo[0]~input_o\,
	datad => \MODULO_VISTAS|mux_hex0~0_combout\,
	combout => \MODULO_VISTAS|Mux8~5_combout\);

-- Location: LCCOMB_X5_Y25_N6
\MODULO_VISTAS|Mux8~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_VISTAS|Mux8~3_combout\ = (!\SW_Modo[0]~input_o\ & ((\SW_Vista[0]~input_o\ & ((\R_TT_U|Reg_Out\(1)))) # (!\SW_Vista[0]~input_o\ & (\BANCO_AZUL|R_T|Reg_Out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW_Vista[0]~input_o\,
	datab => \BANCO_AZUL|R_T|Reg_Out\(1),
	datac => \R_TT_U|Reg_Out\(1),
	datad => \SW_Modo[0]~input_o\,
	combout => \MODULO_VISTAS|Mux8~3_combout\);

-- Location: LCCOMB_X5_Y25_N14
\MODULO_VISTAS|Mux8~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_VISTAS|Mux8~6_combout\ = (\SW_Modo[1]~input_o\ & (!\SW_Modo[0]~input_o\)) # (!\SW_Modo[1]~input_o\ & (((\MODULO_VISTAS|Mux8~5_combout\) # (\MODULO_VISTAS|Mux8~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW_Modo[0]~input_o\,
	datab => \MODULO_VISTAS|Mux8~5_combout\,
	datac => \SW_Modo[1]~input_o\,
	datad => \MODULO_VISTAS|Mux8~3_combout\,
	combout => \MODULO_VISTAS|Mux8~6_combout\);

-- Location: LCCOMB_X3_Y25_N22
\MODULO_VISTAS|Mux9~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_VISTAS|Mux9~1_combout\ = (!\SW_Modo[0]~input_o\ & ((\SW_Vista[0]~input_o\ & ((\R_TT_U|Reg_Out\(0)))) # (!\SW_Vista[0]~input_o\ & (\BANCO_AZUL|R_T|Reg_Out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW_Modo[0]~input_o\,
	datab => \BANCO_AZUL|R_T|Reg_Out\(0),
	datac => \SW_Vista[0]~input_o\,
	datad => \R_TT_U|Reg_Out\(0),
	combout => \MODULO_VISTAS|Mux9~1_combout\);

-- Location: LCCOMB_X7_Y25_N22
\MODULO_VISTAS|Mux9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_VISTAS|Mux9~0_combout\ = (!\SW_Modo[0]~input_o\ & (\SW_Modo[1]~input_o\ & (\SW_Tamano~input_o\ & !\MODULO_VISTAS|Mux15~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW_Modo[0]~input_o\,
	datab => \SW_Modo[1]~input_o\,
	datac => \SW_Tamano~input_o\,
	datad => \MODULO_VISTAS|Mux15~1_combout\,
	combout => \MODULO_VISTAS|Mux9~0_combout\);

-- Location: LCCOMB_X6_Y24_N14
\MODULO_VISTAS|Mux9~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_VISTAS|Mux9~2_combout\ = (!\MODULO_VISTAS|Mux15~1_combout\ & (!\SW_Vista[0]~input_o\ & ((\MODULO_TIEMPOS|c_t\(0)) # (\SW_Vista[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_TIEMPOS|c_t\(0),
	datab => \SW_Vista[1]~input_o\,
	datac => \MODULO_VISTAS|Mux15~1_combout\,
	datad => \SW_Vista[0]~input_o\,
	combout => \MODULO_VISTAS|Mux9~2_combout\);

-- Location: LCCOMB_X8_Y24_N0
\MODULO_VISTAS|Mux9~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_VISTAS|Mux9~3_combout\ = (\SW_Modo[0]~input_o\ & ((\MODULO_VISTAS|Mux9~2_combout\) # ((\MODULO_VISTAS|mux_hex0~0_combout\ & \MODULO_TIEMPOS|c_u\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW_Modo[0]~input_o\,
	datab => \MODULO_VISTAS|Mux9~2_combout\,
	datac => \MODULO_VISTAS|mux_hex0~0_combout\,
	datad => \MODULO_TIEMPOS|c_u\(0),
	combout => \MODULO_VISTAS|Mux9~3_combout\);

-- Location: LCCOMB_X7_Y25_N12
\MODULO_VISTAS|Mux9~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_VISTAS|Mux9~4_combout\ = (\MODULO_VISTAS|Mux9~0_combout\) # ((!\SW_Modo[1]~input_o\ & ((\MODULO_VISTAS|Mux9~1_combout\) # (\MODULO_VISTAS|Mux9~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_VISTAS|Mux9~1_combout\,
	datab => \SW_Modo[1]~input_o\,
	datac => \MODULO_VISTAS|Mux9~0_combout\,
	datad => \MODULO_VISTAS|Mux9~3_combout\,
	combout => \MODULO_VISTAS|Mux9~4_combout\);

-- Location: LCCOMB_X28_Y25_N16
\DECO_2|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DECO_2|Mux6~0_combout\ = (\MODULO_VISTAS|Mux6~5_combout\ & ((\MODULO_VISTAS|Mux7~5_combout\ & ((\MODULO_VISTAS|Mux9~4_combout\))) # (!\MODULO_VISTAS|Mux7~5_combout\ & (\MODULO_VISTAS|Mux8~6_combout\)))) # (!\MODULO_VISTAS|Mux6~5_combout\ & 
-- (!\MODULO_VISTAS|Mux8~6_combout\ & (\MODULO_VISTAS|Mux7~5_combout\ $ (\MODULO_VISTAS|Mux9~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_VISTAS|Mux7~5_combout\,
	datab => \MODULO_VISTAS|Mux6~5_combout\,
	datac => \MODULO_VISTAS|Mux8~6_combout\,
	datad => \MODULO_VISTAS|Mux9~4_combout\,
	combout => \DECO_2|Mux6~0_combout\);

-- Location: LCCOMB_X28_Y25_N26
\DECO_2|Mux6~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DECO_2|Mux6~2_combout\ = (\MODULO_VISTAS|Mux5~0_combout\ & (((!\MODULO_VISTAS|Mux8~6_combout\)) # (!\DECO_2|Mux6~1_combout\))) # (!\MODULO_VISTAS|Mux5~0_combout\ & (((\DECO_2|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_VISTAS|Mux5~0_combout\,
	datab => \DECO_2|Mux6~1_combout\,
	datac => \MODULO_VISTAS|Mux8~6_combout\,
	datad => \DECO_2|Mux6~0_combout\,
	combout => \DECO_2|Mux6~2_combout\);

-- Location: LCCOMB_X28_Y25_N22
\DECO_2|Mux5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DECO_2|Mux5~1_combout\ = (\MODULO_VISTAS|Mux7~5_combout\ & (\MODULO_VISTAS|Mux9~4_combout\ $ (((!\MODULO_VISTAS|Mux6~5_combout\ & \MODULO_VISTAS|Mux8~6_combout\))))) # (!\MODULO_VISTAS|Mux7~5_combout\ & (\MODULO_VISTAS|Mux6~5_combout\ & 
-- (\MODULO_VISTAS|Mux8~6_combout\ & !\MODULO_VISTAS|Mux9~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_VISTAS|Mux7~5_combout\,
	datab => \MODULO_VISTAS|Mux6~5_combout\,
	datac => \MODULO_VISTAS|Mux8~6_combout\,
	datad => \MODULO_VISTAS|Mux9~4_combout\,
	combout => \DECO_2|Mux5~1_combout\);

-- Location: LCCOMB_X28_Y25_N8
\DECO_2|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DECO_2|Mux5~0_combout\ = (\MODULO_VISTAS|Mux5~0_combout\ & (((\MODULO_VISTAS|Mux8~6_combout\) # (!\DECO_2|Mux6~1_combout\)) # (!\MODULO_VISTAS|Mux9~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_VISTAS|Mux9~4_combout\,
	datab => \MODULO_VISTAS|Mux8~6_combout\,
	datac => \MODULO_VISTAS|Mux5~0_combout\,
	datad => \DECO_2|Mux6~1_combout\,
	combout => \DECO_2|Mux5~0_combout\);

-- Location: LCCOMB_X28_Y25_N20
\DECO_2|Mux5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DECO_2|Mux5~2_combout\ = (\DECO_2|Mux5~0_combout\) # ((\DECO_2|Mux5~1_combout\ & !\MODULO_VISTAS|Mux5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DECO_2|Mux5~1_combout\,
	datab => \DECO_2|Mux5~0_combout\,
	datac => \MODULO_VISTAS|Mux5~0_combout\,
	combout => \DECO_2|Mux5~2_combout\);

-- Location: LCCOMB_X28_Y25_N10
\DECO_2|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DECO_2|Mux4~0_combout\ = (\MODULO_VISTAS|Mux7~5_combout\ & (\MODULO_VISTAS|Mux6~5_combout\ & ((\MODULO_VISTAS|Mux8~6_combout\) # (\MODULO_VISTAS|Mux9~4_combout\)))) # (!\MODULO_VISTAS|Mux7~5_combout\ & (((\MODULO_VISTAS|Mux8~6_combout\ & 
-- !\MODULO_VISTAS|Mux9~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_VISTAS|Mux7~5_combout\,
	datab => \MODULO_VISTAS|Mux6~5_combout\,
	datac => \MODULO_VISTAS|Mux8~6_combout\,
	datad => \MODULO_VISTAS|Mux9~4_combout\,
	combout => \DECO_2|Mux4~0_combout\);

-- Location: LCCOMB_X28_Y25_N0
\DECO_2|Mux4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DECO_2|Mux4~1_combout\ = (\DECO_2|Mux5~0_combout\) # ((\DECO_2|Mux4~0_combout\ & !\MODULO_VISTAS|Mux5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DECO_2|Mux4~0_combout\,
	datab => \DECO_2|Mux5~0_combout\,
	datac => \MODULO_VISTAS|Mux5~0_combout\,
	combout => \DECO_2|Mux4~1_combout\);

-- Location: LCCOMB_X28_Y25_N12
\DECO_2|Mux3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DECO_2|Mux3~1_combout\ = (!\MODULO_VISTAS|Mux7~5_combout\ & (!\MODULO_VISTAS|Mux6~5_combout\ & ((\MODULO_VISTAS|Mux8~6_combout\) # (\MODULO_VISTAS|Mux9~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_VISTAS|Mux7~5_combout\,
	datab => \MODULO_VISTAS|Mux6~5_combout\,
	datac => \MODULO_VISTAS|Mux8~6_combout\,
	datad => \MODULO_VISTAS|Mux9~4_combout\,
	combout => \DECO_2|Mux3~1_combout\);

-- Location: LCCOMB_X28_Y25_N18
\DECO_2|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DECO_2|Mux3~0_combout\ = (\MODULO_VISTAS|Mux9~4_combout\ & (!\MODULO_VISTAS|Mux6~5_combout\ & (\MODULO_VISTAS|Mux7~5_combout\ $ (!\MODULO_VISTAS|Mux8~6_combout\)))) # (!\MODULO_VISTAS|Mux9~4_combout\ & ((\MODULO_VISTAS|Mux8~6_combout\ & 
-- ((\MODULO_VISTAS|Mux6~5_combout\))) # (!\MODULO_VISTAS|Mux8~6_combout\ & (\MODULO_VISTAS|Mux7~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_VISTAS|Mux7~5_combout\,
	datab => \MODULO_VISTAS|Mux6~5_combout\,
	datac => \MODULO_VISTAS|Mux8~6_combout\,
	datad => \MODULO_VISTAS|Mux9~4_combout\,
	combout => \DECO_2|Mux3~0_combout\);

-- Location: LCCOMB_X28_Y25_N6
\DECO_2|Mux3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DECO_2|Mux3~2_combout\ = (\MODULO_VISTAS|Mux5~0_combout\ & (!\DECO_2|Mux3~1_combout\)) # (!\MODULO_VISTAS|Mux5~0_combout\ & ((\DECO_2|Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DECO_2|Mux3~1_combout\,
	datac => \MODULO_VISTAS|Mux5~0_combout\,
	datad => \DECO_2|Mux3~0_combout\,
	combout => \DECO_2|Mux3~2_combout\);

-- Location: LCCOMB_X28_Y25_N4
\DECO_2|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DECO_2|Mux2~0_combout\ = (\MODULO_VISTAS|Mux8~6_combout\ & (((!\MODULO_VISTAS|Mux6~5_combout\ & \MODULO_VISTAS|Mux9~4_combout\)))) # (!\MODULO_VISTAS|Mux8~6_combout\ & ((\MODULO_VISTAS|Mux7~5_combout\ & (!\MODULO_VISTAS|Mux6~5_combout\)) # 
-- (!\MODULO_VISTAS|Mux7~5_combout\ & ((\MODULO_VISTAS|Mux9~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_VISTAS|Mux7~5_combout\,
	datab => \MODULO_VISTAS|Mux6~5_combout\,
	datac => \MODULO_VISTAS|Mux8~6_combout\,
	datad => \MODULO_VISTAS|Mux9~4_combout\,
	combout => \DECO_2|Mux2~0_combout\);

-- Location: LCCOMB_X28_Y25_N30
\DECO_2|Mux2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DECO_2|Mux2~1_combout\ = (\MODULO_VISTAS|Mux5~0_combout\ & (!\DECO_2|Mux3~1_combout\)) # (!\MODULO_VISTAS|Mux5~0_combout\ & ((\DECO_2|Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DECO_2|Mux3~1_combout\,
	datab => \DECO_2|Mux2~0_combout\,
	datac => \MODULO_VISTAS|Mux5~0_combout\,
	combout => \DECO_2|Mux2~1_combout\);

-- Location: LCCOMB_X28_Y25_N28
\DECO_2|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DECO_2|Mux1~0_combout\ = (\MODULO_VISTAS|Mux9~4_combout\ & (!\MODULO_VISTAS|Mux6~5_combout\ & ((\MODULO_VISTAS|Mux8~6_combout\) # (!\MODULO_VISTAS|Mux7~5_combout\)))) # (!\MODULO_VISTAS|Mux9~4_combout\ & (!\MODULO_VISTAS|Mux7~5_combout\ & 
-- ((\MODULO_VISTAS|Mux8~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_VISTAS|Mux7~5_combout\,
	datab => \MODULO_VISTAS|Mux6~5_combout\,
	datac => \MODULO_VISTAS|Mux8~6_combout\,
	datad => \MODULO_VISTAS|Mux9~4_combout\,
	combout => \DECO_2|Mux1~0_combout\);

-- Location: LCCOMB_X28_Y25_N14
\DECO_2|Mux1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DECO_2|Mux1~1_combout\ = (\MODULO_VISTAS|Mux5~0_combout\ & (((!\MODULO_VISTAS|Mux8~6_combout\)) # (!\DECO_2|Mux6~1_combout\))) # (!\MODULO_VISTAS|Mux5~0_combout\ & (((\DECO_2|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_VISTAS|Mux5~0_combout\,
	datab => \DECO_2|Mux6~1_combout\,
	datac => \MODULO_VISTAS|Mux8~6_combout\,
	datad => \DECO_2|Mux1~0_combout\,
	combout => \DECO_2|Mux1~1_combout\);

-- Location: LCCOMB_X28_Y25_N24
\DECO_2|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DECO_2|Mux0~0_combout\ = (\MODULO_VISTAS|Mux6~5_combout\) # (\MODULO_VISTAS|Mux7~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MODULO_VISTAS|Mux6~5_combout\,
	datad => \MODULO_VISTAS|Mux7~5_combout\,
	combout => \DECO_2|Mux0~0_combout\);

-- Location: LCCOMB_X28_Y25_N2
\DECO_2|Mux0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DECO_2|Mux0~1_combout\ = (\MODULO_VISTAS|Mux8~6_combout\ & ((\MODULO_VISTAS|Mux9~4_combout\ & ((\MODULO_VISTAS|Mux5~0_combout\) # (\DECO_2|Mux0~0_combout\))) # (!\MODULO_VISTAS|Mux9~4_combout\ & (\MODULO_VISTAS|Mux5~0_combout\ & 
-- \DECO_2|Mux0~0_combout\)))) # (!\MODULO_VISTAS|Mux8~6_combout\ & ((\MODULO_VISTAS|Mux5~0_combout\ $ (!\DECO_2|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_VISTAS|Mux9~4_combout\,
	datab => \MODULO_VISTAS|Mux8~6_combout\,
	datac => \MODULO_VISTAS|Mux5~0_combout\,
	datad => \DECO_2|Mux0~0_combout\,
	combout => \DECO_2|Mux0~1_combout\);

-- Location: LCCOMB_X5_Y23_N18
\MODULO_FRECUENCIA|C_FR|CNT_int[0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_FRECUENCIA|C_FR|CNT_int[0]~3_combout\ = !\MODULO_FRECUENCIA|C_FR|CNT_int\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MODULO_FRECUENCIA|C_FR|CNT_int\(0),
	combout => \MODULO_FRECUENCIA|C_FR|CNT_int[0]~3_combout\);

-- Location: LCCOMB_X6_Y23_N8
\MODULO_VISTAS|Mux19~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_VISTAS|Mux19~15_combout\ = (\SW_Modo[1]~input_o\ & \SW_Modo[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW_Modo[1]~input_o\,
	datad => \SW_Modo[0]~input_o\,
	combout => \MODULO_VISTAS|Mux19~15_combout\);

-- Location: LCCOMB_X11_Y14_N6
\MODULO_FRECUENCIA|DIV_FREC|count1[0]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_FRECUENCIA|DIV_FREC|count1[0]~26_combout\ = \MODULO_FRECUENCIA|DIV_FREC|count1\(0) $ (VCC)
-- \MODULO_FRECUENCIA|DIV_FREC|count1[0]~27\ = CARRY(\MODULO_FRECUENCIA|DIV_FREC|count1\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_FRECUENCIA|DIV_FREC|count1\(0),
	datad => VCC,
	combout => \MODULO_FRECUENCIA|DIV_FREC|count1[0]~26_combout\,
	cout => \MODULO_FRECUENCIA|DIV_FREC|count1[0]~27\);

-- Location: IOIBUF_X0_Y23_N15
\BTN_FrecDown~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BTN_FrecDown,
	o => \BTN_FrecDown~input_o\);

-- Location: LCCOMB_X4_Y23_N2
\BOTON_MENOS|sync[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BOTON_MENOS|sync[0]~0_combout\ = !\BTN_FrecDown~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BTN_FrecDown~input_o\,
	combout => \BOTON_MENOS|sync[0]~0_combout\);

-- Location: FF_X4_Y23_N3
\BOTON_MENOS|sync[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \BOTON_MENOS|sync[0]~0_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BOTON_MENOS|sync\(0));

-- Location: LCCOMB_X4_Y23_N22
\BOTON_MENOS|sync[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BOTON_MENOS|sync[1]~feeder_combout\ = \BOTON_MENOS|sync\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BOTON_MENOS|sync\(0),
	combout => \BOTON_MENOS|sync[1]~feeder_combout\);

-- Location: FF_X4_Y23_N23
\BOTON_MENOS|sync[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \BOTON_MENOS|sync[1]~feeder_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BOTON_MENOS|sync\(1));

-- Location: FF_X4_Y23_N19
\BOTON_MENOS|stable\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \BOTON_MENOS|sync\(1),
	clrn => \Reset~input_o\,
	sload => VCC,
	ena => \MODULO_TIEMPOS|t_10ms~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BOTON_MENOS|stable~q\);

-- Location: FF_X9_Y14_N7
\BOTON_MENOS|last_stable\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \BOTON_MENOS|stable~q\,
	clrn => \Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BOTON_MENOS|last_stable~q\);

-- Location: LCCOMB_X9_Y14_N12
\MODULO_FRECUENCIA|DIV_FREC|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_FRECUENCIA|DIV_FREC|Mux6~0_combout\ = (\MODULO_FRECUENCIA|vel_state\(1) & \MODULO_FRECUENCIA|vel_state\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MODULO_FRECUENCIA|vel_state\(1),
	datac => \MODULO_FRECUENCIA|vel_state\(0),
	combout => \MODULO_FRECUENCIA|DIV_FREC|Mux6~0_combout\);

-- Location: IOIBUF_X0_Y23_N1
\BTN_FrecUp~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BTN_FrecUp,
	o => \BTN_FrecUp~input_o\);

-- Location: LCCOMB_X4_Y23_N12
\BOTON_MAS|sync[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BOTON_MAS|sync[0]~0_combout\ = !\BTN_FrecUp~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BTN_FrecUp~input_o\,
	combout => \BOTON_MAS|sync[0]~0_combout\);

-- Location: FF_X4_Y23_N13
\BOTON_MAS|sync[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \BOTON_MAS|sync[0]~0_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BOTON_MAS|sync\(0));

-- Location: LCCOMB_X4_Y23_N0
\BOTON_MAS|sync[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BOTON_MAS|sync[1]~feeder_combout\ = \BOTON_MAS|sync\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BOTON_MAS|sync\(0),
	combout => \BOTON_MAS|sync[1]~feeder_combout\);

-- Location: FF_X4_Y23_N1
\BOTON_MAS|sync[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \BOTON_MAS|sync[1]~feeder_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BOTON_MAS|sync\(1));

-- Location: LCCOMB_X4_Y23_N16
\BOTON_MAS|stable~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BOTON_MAS|stable~feeder_combout\ = \BOTON_MAS|sync\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BOTON_MAS|sync\(1),
	combout => \BOTON_MAS|stable~feeder_combout\);

-- Location: FF_X4_Y23_N17
\BOTON_MAS|stable\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \BOTON_MAS|stable~feeder_combout\,
	clrn => \Reset~input_o\,
	ena => \MODULO_TIEMPOS|t_10ms~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BOTON_MAS|stable~q\);

-- Location: FF_X9_Y14_N29
\BOTON_MAS|last_stable\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \BOTON_MAS|stable~q\,
	clrn => \Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BOTON_MAS|last_stable~q\);

-- Location: LCCOMB_X9_Y14_N28
\MODULO_FRECUENCIA|process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_FRECUENCIA|process_0~0_combout\ = (!\MODULO_FRECUENCIA|DIV_FREC|Mux6~0_combout\ & (\BOTON_MAS|stable~q\ & (!\BOTON_MAS|last_stable~q\ & !\MODULO_VISTAS|Mux19~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_FRECUENCIA|DIV_FREC|Mux6~0_combout\,
	datab => \BOTON_MAS|stable~q\,
	datac => \BOTON_MAS|last_stable~q\,
	datad => \MODULO_VISTAS|Mux19~15_combout\,
	combout => \MODULO_FRECUENCIA|process_0~0_combout\);

-- Location: LCCOMB_X9_Y14_N8
\MODULO_FRECUENCIA|vel_state[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_FRECUENCIA|vel_state[0]~1_combout\ = \MODULO_FRECUENCIA|vel_state\(0) $ (((\MODULO_FRECUENCIA|process_0~0_combout\) # (!\MODULO_FRECUENCIA|vel_state[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MODULO_FRECUENCIA|process_0~0_combout\,
	datac => \MODULO_FRECUENCIA|vel_state\(0),
	datad => \MODULO_FRECUENCIA|vel_state[0]~0_combout\,
	combout => \MODULO_FRECUENCIA|vel_state[0]~1_combout\);

-- Location: FF_X9_Y14_N9
\MODULO_FRECUENCIA|vel_state[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \MODULO_FRECUENCIA|vel_state[0]~1_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MODULO_FRECUENCIA|vel_state\(0));

-- Location: LCCOMB_X9_Y14_N30
\MODULO_FRECUENCIA|DIV_FREC|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_FRECUENCIA|DIV_FREC|Mux2~0_combout\ = (\MODULO_FRECUENCIA|vel_state\(1)) # (\MODULO_FRECUENCIA|vel_state\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MODULO_FRECUENCIA|vel_state\(1),
	datad => \MODULO_FRECUENCIA|vel_state\(0),
	combout => \MODULO_FRECUENCIA|DIV_FREC|Mux2~0_combout\);

-- Location: LCCOMB_X9_Y14_N6
\MODULO_FRECUENCIA|vel_state[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_FRECUENCIA|vel_state[0]~0_combout\ = ((\MODULO_VISTAS|Mux19~15_combout\) # ((\BOTON_MENOS|last_stable~q\) # (!\MODULO_FRECUENCIA|DIV_FREC|Mux2~0_combout\))) # (!\BOTON_MENOS|stable~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BOTON_MENOS|stable~q\,
	datab => \MODULO_VISTAS|Mux19~15_combout\,
	datac => \BOTON_MENOS|last_stable~q\,
	datad => \MODULO_FRECUENCIA|DIV_FREC|Mux2~0_combout\,
	combout => \MODULO_FRECUENCIA|vel_state[0]~0_combout\);

-- Location: LCCOMB_X9_Y14_N10
\MODULO_FRECUENCIA|vel_state[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_FRECUENCIA|vel_state[1]~2_combout\ = \MODULO_FRECUENCIA|vel_state\(1) $ (((\MODULO_FRECUENCIA|vel_state\(0) & ((\MODULO_FRECUENCIA|process_0~0_combout\))) # (!\MODULO_FRECUENCIA|vel_state\(0) & (!\MODULO_FRECUENCIA|vel_state[0]~0_combout\ & 
-- !\MODULO_FRECUENCIA|process_0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_FRECUENCIA|vel_state[0]~0_combout\,
	datab => \MODULO_FRECUENCIA|vel_state\(0),
	datac => \MODULO_FRECUENCIA|vel_state\(1),
	datad => \MODULO_FRECUENCIA|process_0~0_combout\,
	combout => \MODULO_FRECUENCIA|vel_state[1]~2_combout\);

-- Location: FF_X9_Y14_N11
\MODULO_FRECUENCIA|vel_state[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \MODULO_FRECUENCIA|vel_state[1]~2_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MODULO_FRECUENCIA|vel_state\(1));

-- Location: LCCOMB_X9_Y14_N20
\MODULO_FRECUENCIA|DIV_FREC|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_FRECUENCIA|DIV_FREC|LessThan0~0_combout\ = (\MODULO_FRECUENCIA|vel_state\(0) & (!\MODULO_FRECUENCIA|DIV_FREC|count1\(24) & (\MODULO_FRECUENCIA|vel_state\(1) $ (\MODULO_FRECUENCIA|DIV_FREC|count1\(23))))) # (!\MODULO_FRECUENCIA|vel_state\(0) & 
-- (!\MODULO_FRECUENCIA|DIV_FREC|count1\(23) & (\MODULO_FRECUENCIA|vel_state\(1) $ (\MODULO_FRECUENCIA|DIV_FREC|count1\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_FRECUENCIA|vel_state\(1),
	datab => \MODULO_FRECUENCIA|DIV_FREC|count1\(24),
	datac => \MODULO_FRECUENCIA|DIV_FREC|count1\(23),
	datad => \MODULO_FRECUENCIA|vel_state\(0),
	combout => \MODULO_FRECUENCIA|DIV_FREC|LessThan0~0_combout\);

-- Location: LCCOMB_X9_Y14_N18
\MODULO_FRECUENCIA|DIV_FREC|LessThan0~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_FRECUENCIA|DIV_FREC|LessThan0~23_combout\ = (!\MODULO_FRECUENCIA|vel_state\(1) & (!\MODULO_FRECUENCIA|DIV_FREC|count1\(24) & ((!\MODULO_FRECUENCIA|vel_state\(0)) # (!\MODULO_FRECUENCIA|DIV_FREC|count1\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_FRECUENCIA|vel_state\(1),
	datab => \MODULO_FRECUENCIA|DIV_FREC|count1\(24),
	datac => \MODULO_FRECUENCIA|DIV_FREC|count1\(23),
	datad => \MODULO_FRECUENCIA|vel_state\(0),
	combout => \MODULO_FRECUENCIA|DIV_FREC|LessThan0~23_combout\);

-- Location: LCCOMB_X9_Y14_N16
\MODULO_FRECUENCIA|DIV_FREC|LessThan0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_FRECUENCIA|DIV_FREC|LessThan0~20_combout\ = (((\MODULO_FRECUENCIA|DIV_FREC|Mux2~0_combout\ & !\MODULO_FRECUENCIA|DIV_FREC|count1\(17))) # (!\MODULO_FRECUENCIA|DIV_FREC|count1\(18))) # (!\MODULO_FRECUENCIA|DIV_FREC|count1\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_FRECUENCIA|DIV_FREC|count1\(19),
	datab => \MODULO_FRECUENCIA|DIV_FREC|Mux2~0_combout\,
	datac => \MODULO_FRECUENCIA|DIV_FREC|count1\(17),
	datad => \MODULO_FRECUENCIA|DIV_FREC|count1\(18),
	combout => \MODULO_FRECUENCIA|DIV_FREC|LessThan0~20_combout\);

-- Location: LCCOMB_X9_Y14_N22
\MODULO_FRECUENCIA|DIV_FREC|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_FRECUENCIA|DIV_FREC|LessThan0~1_combout\ = (\MODULO_FRECUENCIA|DIV_FREC|count1\(20) & (!\MODULO_FRECUENCIA|DIV_FREC|count1\(21) & ((\MODULO_FRECUENCIA|vel_state\(0)) # (!\MODULO_FRECUENCIA|vel_state\(1))))) # 
-- (!\MODULO_FRECUENCIA|DIV_FREC|count1\(20) & (((!\MODULO_FRECUENCIA|vel_state\(1))) # (!\MODULO_FRECUENCIA|DIV_FREC|count1\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_FRECUENCIA|DIV_FREC|count1\(20),
	datab => \MODULO_FRECUENCIA|DIV_FREC|count1\(21),
	datac => \MODULO_FRECUENCIA|vel_state\(1),
	datad => \MODULO_FRECUENCIA|vel_state\(0),
	combout => \MODULO_FRECUENCIA|DIV_FREC|LessThan0~1_combout\);

-- Location: LCCOMB_X9_Y14_N4
\MODULO_FRECUENCIA|DIV_FREC|LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_FRECUENCIA|DIV_FREC|LessThan0~2_combout\ = (\MODULO_FRECUENCIA|vel_state\(0) & (\MODULO_FRECUENCIA|DIV_FREC|count1\(21) & (\MODULO_FRECUENCIA|DIV_FREC|count1\(20) $ (\MODULO_FRECUENCIA|vel_state\(1))))) # (!\MODULO_FRECUENCIA|vel_state\(0) & 
-- (\MODULO_FRECUENCIA|DIV_FREC|count1\(20) & (\MODULO_FRECUENCIA|DIV_FREC|count1\(21) $ (\MODULO_FRECUENCIA|vel_state\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_FRECUENCIA|DIV_FREC|count1\(20),
	datab => \MODULO_FRECUENCIA|DIV_FREC|count1\(21),
	datac => \MODULO_FRECUENCIA|vel_state\(1),
	datad => \MODULO_FRECUENCIA|vel_state\(0),
	combout => \MODULO_FRECUENCIA|DIV_FREC|LessThan0~2_combout\);

-- Location: LCCOMB_X9_Y14_N14
\MODULO_FRECUENCIA|DIV_FREC|LessThan0~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_FRECUENCIA|DIV_FREC|LessThan0~17_combout\ = (\MODULO_FRECUENCIA|vel_state\(0) & (\MODULO_FRECUENCIA|DIV_FREC|count1\(15) & (\MODULO_FRECUENCIA|vel_state\(1) $ (!\MODULO_FRECUENCIA|DIV_FREC|count1\(16))))) # (!\MODULO_FRECUENCIA|vel_state\(0) & 
-- (((\MODULO_FRECUENCIA|DIV_FREC|count1\(16) & !\MODULO_FRECUENCIA|DIV_FREC|count1\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_FRECUENCIA|vel_state\(1),
	datab => \MODULO_FRECUENCIA|vel_state\(0),
	datac => \MODULO_FRECUENCIA|DIV_FREC|count1\(16),
	datad => \MODULO_FRECUENCIA|DIV_FREC|count1\(15),
	combout => \MODULO_FRECUENCIA|DIV_FREC|LessThan0~17_combout\);

-- Location: LCCOMB_X9_Y14_N24
\MODULO_FRECUENCIA|DIV_FREC|LessThan0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_FRECUENCIA|DIV_FREC|LessThan0~18_combout\ = \MODULO_FRECUENCIA|DIV_FREC|count1\(17) $ (((\MODULO_FRECUENCIA|vel_state\(1)) # (\MODULO_FRECUENCIA|vel_state\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_FRECUENCIA|vel_state\(1),
	datab => \MODULO_FRECUENCIA|vel_state\(0),
	datac => \MODULO_FRECUENCIA|DIV_FREC|count1\(17),
	combout => \MODULO_FRECUENCIA|DIV_FREC|LessThan0~18_combout\);

-- Location: LCCOMB_X9_Y14_N26
\MODULO_FRECUENCIA|DIV_FREC|LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_FRECUENCIA|DIV_FREC|LessThan0~3_combout\ = (\MODULO_FRECUENCIA|vel_state\(1) & (((!\MODULO_FRECUENCIA|DIV_FREC|count1\(15) & \MODULO_FRECUENCIA|vel_state\(0))) # (!\MODULO_FRECUENCIA|DIV_FREC|count1\(16)))) # (!\MODULO_FRECUENCIA|vel_state\(1) & 
-- (!\MODULO_FRECUENCIA|DIV_FREC|count1\(16) & ((!\MODULO_FRECUENCIA|vel_state\(0)) # (!\MODULO_FRECUENCIA|DIV_FREC|count1\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_FRECUENCIA|vel_state\(1),
	datab => \MODULO_FRECUENCIA|DIV_FREC|count1\(15),
	datac => \MODULO_FRECUENCIA|DIV_FREC|count1\(16),
	datad => \MODULO_FRECUENCIA|vel_state\(0),
	combout => \MODULO_FRECUENCIA|DIV_FREC|LessThan0~3_combout\);

-- Location: LCCOMB_X10_Y14_N26
\MODULO_FRECUENCIA|DIV_FREC|LessThan0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_FRECUENCIA|DIV_FREC|LessThan0~4_combout\ = (!\MODULO_FRECUENCIA|DIV_FREC|count1\(13) & ((\MODULO_FRECUENCIA|vel_state\(0)) # (!\MODULO_FRECUENCIA|vel_state\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_FRECUENCIA|vel_state\(0),
	datab => \MODULO_FRECUENCIA|DIV_FREC|count1\(13),
	datad => \MODULO_FRECUENCIA|vel_state\(1),
	combout => \MODULO_FRECUENCIA|DIV_FREC|LessThan0~4_combout\);

-- Location: LCCOMB_X10_Y14_N20
\MODULO_FRECUENCIA|DIV_FREC|LessThan0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_FRECUENCIA|DIV_FREC|LessThan0~14_combout\ = \MODULO_FRECUENCIA|DIV_FREC|count1\(13) $ (((\MODULO_FRECUENCIA|vel_state\(0)) # (!\MODULO_FRECUENCIA|vel_state\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_FRECUENCIA|vel_state\(0),
	datab => \MODULO_FRECUENCIA|DIV_FREC|count1\(13),
	datad => \MODULO_FRECUENCIA|vel_state\(1),
	combout => \MODULO_FRECUENCIA|DIV_FREC|LessThan0~14_combout\);

-- Location: LCCOMB_X10_Y14_N24
\MODULO_FRECUENCIA|DIV_FREC|LessThan0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_FRECUENCIA|DIV_FREC|LessThan0~12_combout\ = (!\MODULO_FRECUENCIA|DIV_FREC|count1\(10)) # (!\MODULO_FRECUENCIA|DIV_FREC|count1\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_FRECUENCIA|DIV_FREC|count1\(9),
	datad => \MODULO_FRECUENCIA|DIV_FREC|count1\(10),
	combout => \MODULO_FRECUENCIA|DIV_FREC|LessThan0~12_combout\);

-- Location: LCCOMB_X10_Y14_N22
\MODULO_FRECUENCIA|DIV_FREC|LessThan0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_FRECUENCIA|DIV_FREC|LessThan0~8_combout\ = (!\MODULO_FRECUENCIA|DIV_FREC|count1\(9) & (((\MODULO_FRECUENCIA|vel_state\(0) & !\MODULO_FRECUENCIA|DIV_FREC|count1\(5))) # (!\MODULO_FRECUENCIA|DIV_FREC|count1\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_FRECUENCIA|vel_state\(0),
	datab => \MODULO_FRECUENCIA|DIV_FREC|count1\(10),
	datac => \MODULO_FRECUENCIA|DIV_FREC|count1\(9),
	datad => \MODULO_FRECUENCIA|DIV_FREC|count1\(5),
	combout => \MODULO_FRECUENCIA|DIV_FREC|LessThan0~8_combout\);

-- Location: LCCOMB_X11_Y14_N0
\MODULO_FRECUENCIA|DIV_FREC|LessThan0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_FRECUENCIA|DIV_FREC|LessThan0~6_combout\ = (!\MODULO_FRECUENCIA|DIV_FREC|count1\(6) & (!\MODULO_FRECUENCIA|DIV_FREC|count1\(8) & !\MODULO_FRECUENCIA|DIV_FREC|count1\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MODULO_FRECUENCIA|DIV_FREC|count1\(6),
	datac => \MODULO_FRECUENCIA|DIV_FREC|count1\(8),
	datad => \MODULO_FRECUENCIA|DIV_FREC|count1\(7),
	combout => \MODULO_FRECUENCIA|DIV_FREC|LessThan0~6_combout\);

-- Location: LCCOMB_X10_Y14_N14
\MODULO_FRECUENCIA|DIV_FREC|LessThan0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_FRECUENCIA|DIV_FREC|LessThan0~7_combout\ = (!\MODULO_FRECUENCIA|DIV_FREC|count1\(5) & (!\MODULO_FRECUENCIA|DIV_FREC|count1\(4) & \MODULO_FRECUENCIA|vel_state\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_FRECUENCIA|DIV_FREC|count1\(5),
	datab => \MODULO_FRECUENCIA|DIV_FREC|count1\(4),
	datad => \MODULO_FRECUENCIA|vel_state\(1),
	combout => \MODULO_FRECUENCIA|DIV_FREC|LessThan0~7_combout\);

-- Location: LCCOMB_X10_Y14_N12
\MODULO_FRECUENCIA|DIV_FREC|LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_FRECUENCIA|DIV_FREC|LessThan0~5_combout\ = ((\MODULO_FRECUENCIA|vel_state\(0) & !\MODULO_FRECUENCIA|DIV_FREC|count1\(10))) # (!\MODULO_FRECUENCIA|DIV_FREC|count1\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_FRECUENCIA|DIV_FREC|count1\(11),
	datab => \MODULO_FRECUENCIA|vel_state\(0),
	datad => \MODULO_FRECUENCIA|DIV_FREC|count1\(10),
	combout => \MODULO_FRECUENCIA|DIV_FREC|LessThan0~5_combout\);

-- Location: LCCOMB_X10_Y14_N4
\MODULO_FRECUENCIA|DIV_FREC|LessThan0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_FRECUENCIA|DIV_FREC|LessThan0~9_combout\ = (\MODULO_FRECUENCIA|DIV_FREC|LessThan0~5_combout\) # ((\MODULO_FRECUENCIA|DIV_FREC|LessThan0~6_combout\ & ((\MODULO_FRECUENCIA|DIV_FREC|LessThan0~8_combout\) # 
-- (\MODULO_FRECUENCIA|DIV_FREC|LessThan0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_FRECUENCIA|DIV_FREC|LessThan0~8_combout\,
	datab => \MODULO_FRECUENCIA|DIV_FREC|LessThan0~6_combout\,
	datac => \MODULO_FRECUENCIA|DIV_FREC|LessThan0~7_combout\,
	datad => \MODULO_FRECUENCIA|DIV_FREC|LessThan0~5_combout\,
	combout => \MODULO_FRECUENCIA|DIV_FREC|LessThan0~9_combout\);

-- Location: LCCOMB_X11_Y14_N2
\MODULO_FRECUENCIA|DIV_FREC|LessThan0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_FRECUENCIA|DIV_FREC|LessThan0~10_combout\ = (!\MODULO_FRECUENCIA|DIV_FREC|count1\(7) & (!\MODULO_FRECUENCIA|DIV_FREC|count1\(6) & (!\MODULO_FRECUENCIA|DIV_FREC|count1\(4) & !\MODULO_FRECUENCIA|DIV_FREC|count1\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_FRECUENCIA|DIV_FREC|count1\(7),
	datab => \MODULO_FRECUENCIA|DIV_FREC|count1\(6),
	datac => \MODULO_FRECUENCIA|DIV_FREC|count1\(4),
	datad => \MODULO_FRECUENCIA|DIV_FREC|count1\(5),
	combout => \MODULO_FRECUENCIA|DIV_FREC|LessThan0~10_combout\);

-- Location: LCCOMB_X11_Y14_N4
\MODULO_FRECUENCIA|DIV_FREC|LessThan0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_FRECUENCIA|DIV_FREC|LessThan0~11_combout\ = (\MODULO_FRECUENCIA|vel_state\(0) & (((!\MODULO_FRECUENCIA|DIV_FREC|count1\(3) & \MODULO_FRECUENCIA|DIV_FREC|LessThan0~10_combout\)) # (!\MODULO_FRECUENCIA|DIV_FREC|count1\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_FRECUENCIA|DIV_FREC|count1\(3),
	datab => \MODULO_FRECUENCIA|DIV_FREC|count1\(8),
	datac => \MODULO_FRECUENCIA|vel_state\(0),
	datad => \MODULO_FRECUENCIA|DIV_FREC|LessThan0~10_combout\,
	combout => \MODULO_FRECUENCIA|DIV_FREC|LessThan0~11_combout\);

-- Location: LCCOMB_X10_Y14_N10
\MODULO_FRECUENCIA|DIV_FREC|LessThan0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_FRECUENCIA|DIV_FREC|LessThan0~13_combout\ = (\MODULO_FRECUENCIA|DIV_FREC|LessThan0~9_combout\) # ((\MODULO_FRECUENCIA|vel_state\(1) & ((\MODULO_FRECUENCIA|DIV_FREC|LessThan0~12_combout\) # (\MODULO_FRECUENCIA|DIV_FREC|LessThan0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_FRECUENCIA|vel_state\(1),
	datab => \MODULO_FRECUENCIA|DIV_FREC|LessThan0~12_combout\,
	datac => \MODULO_FRECUENCIA|DIV_FREC|LessThan0~9_combout\,
	datad => \MODULO_FRECUENCIA|DIV_FREC|LessThan0~11_combout\,
	combout => \MODULO_FRECUENCIA|DIV_FREC|LessThan0~13_combout\);

-- Location: LCCOMB_X10_Y14_N0
\MODULO_FRECUENCIA|DIV_FREC|LessThan0~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_FRECUENCIA|DIV_FREC|LessThan0~15_combout\ = (!\MODULO_FRECUENCIA|DIV_FREC|LessThan0~14_combout\ & ((\MODULO_FRECUENCIA|DIV_FREC|Mux6~0_combout\ & (!\MODULO_FRECUENCIA|DIV_FREC|count1\(12) & \MODULO_FRECUENCIA|DIV_FREC|LessThan0~13_combout\)) # 
-- (!\MODULO_FRECUENCIA|DIV_FREC|Mux6~0_combout\ & ((\MODULO_FRECUENCIA|DIV_FREC|LessThan0~13_combout\) # (!\MODULO_FRECUENCIA|DIV_FREC|count1\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_FRECUENCIA|DIV_FREC|Mux6~0_combout\,
	datab => \MODULO_FRECUENCIA|DIV_FREC|LessThan0~14_combout\,
	datac => \MODULO_FRECUENCIA|DIV_FREC|count1\(12),
	datad => \MODULO_FRECUENCIA|DIV_FREC|LessThan0~13_combout\,
	combout => \MODULO_FRECUENCIA|DIV_FREC|LessThan0~15_combout\);

-- Location: LCCOMB_X10_Y14_N18
\MODULO_FRECUENCIA|DIV_FREC|LessThan0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_FRECUENCIA|DIV_FREC|LessThan0~16_combout\ = (\MODULO_FRECUENCIA|vel_state\(0) & (!\MODULO_FRECUENCIA|DIV_FREC|count1\(14) & ((\MODULO_FRECUENCIA|DIV_FREC|LessThan0~4_combout\) # (\MODULO_FRECUENCIA|DIV_FREC|LessThan0~15_combout\)))) # 
-- (!\MODULO_FRECUENCIA|vel_state\(0) & (((\MODULO_FRECUENCIA|DIV_FREC|LessThan0~4_combout\) # (\MODULO_FRECUENCIA|DIV_FREC|LessThan0~15_combout\)) # (!\MODULO_FRECUENCIA|DIV_FREC|count1\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_FRECUENCIA|vel_state\(0),
	datab => \MODULO_FRECUENCIA|DIV_FREC|count1\(14),
	datac => \MODULO_FRECUENCIA|DIV_FREC|LessThan0~4_combout\,
	datad => \MODULO_FRECUENCIA|DIV_FREC|LessThan0~15_combout\,
	combout => \MODULO_FRECUENCIA|DIV_FREC|LessThan0~16_combout\);

-- Location: LCCOMB_X10_Y14_N16
\MODULO_FRECUENCIA|DIV_FREC|LessThan0~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_FRECUENCIA|DIV_FREC|LessThan0~19_combout\ = (!\MODULO_FRECUENCIA|DIV_FREC|LessThan0~18_combout\ & ((\MODULO_FRECUENCIA|DIV_FREC|LessThan0~3_combout\) # ((\MODULO_FRECUENCIA|DIV_FREC|LessThan0~17_combout\ & 
-- \MODULO_FRECUENCIA|DIV_FREC|LessThan0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_FRECUENCIA|DIV_FREC|LessThan0~17_combout\,
	datab => \MODULO_FRECUENCIA|DIV_FREC|LessThan0~18_combout\,
	datac => \MODULO_FRECUENCIA|DIV_FREC|LessThan0~3_combout\,
	datad => \MODULO_FRECUENCIA|DIV_FREC|LessThan0~16_combout\,
	combout => \MODULO_FRECUENCIA|DIV_FREC|LessThan0~19_combout\);

-- Location: LCCOMB_X10_Y14_N6
\MODULO_FRECUENCIA|DIV_FREC|LessThan0~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_FRECUENCIA|DIV_FREC|LessThan0~21_combout\ = (\MODULO_FRECUENCIA|DIV_FREC|LessThan0~1_combout\) # ((\MODULO_FRECUENCIA|DIV_FREC|LessThan0~2_combout\ & ((\MODULO_FRECUENCIA|DIV_FREC|LessThan0~20_combout\) # 
-- (\MODULO_FRECUENCIA|DIV_FREC|LessThan0~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_FRECUENCIA|DIV_FREC|LessThan0~20_combout\,
	datab => \MODULO_FRECUENCIA|DIV_FREC|LessThan0~1_combout\,
	datac => \MODULO_FRECUENCIA|DIV_FREC|LessThan0~2_combout\,
	datad => \MODULO_FRECUENCIA|DIV_FREC|LessThan0~19_combout\,
	combout => \MODULO_FRECUENCIA|DIV_FREC|LessThan0~21_combout\);

-- Location: LCCOMB_X10_Y14_N2
\MODULO_FRECUENCIA|DIV_FREC|LessThan0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_FRECUENCIA|DIV_FREC|LessThan0~24_combout\ = (\MODULO_FRECUENCIA|vel_state\(0) & ((\MODULO_FRECUENCIA|DIV_FREC|count1\(22)) # (!\MODULO_FRECUENCIA|DIV_FREC|LessThan0~21_combout\))) # (!\MODULO_FRECUENCIA|vel_state\(0) & 
-- (\MODULO_FRECUENCIA|DIV_FREC|count1\(22) & !\MODULO_FRECUENCIA|DIV_FREC|LessThan0~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_FRECUENCIA|vel_state\(0),
	datab => \MODULO_FRECUENCIA|DIV_FREC|count1\(22),
	datad => \MODULO_FRECUENCIA|DIV_FREC|LessThan0~21_combout\,
	combout => \MODULO_FRECUENCIA|DIV_FREC|LessThan0~24_combout\);

-- Location: LCCOMB_X10_Y14_N30
\MODULO_FRECUENCIA|DIV_FREC|LessThan0~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_FRECUENCIA|DIV_FREC|LessThan0~25_combout\ = (\MODULO_FRECUENCIA|DIV_FREC|count1\(25)) # ((!\MODULO_FRECUENCIA|DIV_FREC|LessThan0~23_combout\ & ((\MODULO_FRECUENCIA|DIV_FREC|LessThan0~24_combout\) # 
-- (!\MODULO_FRECUENCIA|DIV_FREC|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_FRECUENCIA|DIV_FREC|count1\(25),
	datab => \MODULO_FRECUENCIA|DIV_FREC|LessThan0~0_combout\,
	datac => \MODULO_FRECUENCIA|DIV_FREC|LessThan0~23_combout\,
	datad => \MODULO_FRECUENCIA|DIV_FREC|LessThan0~24_combout\,
	combout => \MODULO_FRECUENCIA|DIV_FREC|LessThan0~25_combout\);

-- Location: FF_X11_Y14_N7
\MODULO_FRECUENCIA|DIV_FREC|count1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \MODULO_FRECUENCIA|DIV_FREC|count1[0]~26_combout\,
	sclr => \MODULO_FRECUENCIA|DIV_FREC|LessThan0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MODULO_FRECUENCIA|DIV_FREC|count1\(0));

-- Location: LCCOMB_X11_Y14_N8
\MODULO_FRECUENCIA|DIV_FREC|count1[1]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_FRECUENCIA|DIV_FREC|count1[1]~28_combout\ = (\MODULO_FRECUENCIA|DIV_FREC|count1\(1) & (!\MODULO_FRECUENCIA|DIV_FREC|count1[0]~27\)) # (!\MODULO_FRECUENCIA|DIV_FREC|count1\(1) & ((\MODULO_FRECUENCIA|DIV_FREC|count1[0]~27\) # (GND)))
-- \MODULO_FRECUENCIA|DIV_FREC|count1[1]~29\ = CARRY((!\MODULO_FRECUENCIA|DIV_FREC|count1[0]~27\) # (!\MODULO_FRECUENCIA|DIV_FREC|count1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MODULO_FRECUENCIA|DIV_FREC|count1\(1),
	datad => VCC,
	cin => \MODULO_FRECUENCIA|DIV_FREC|count1[0]~27\,
	combout => \MODULO_FRECUENCIA|DIV_FREC|count1[1]~28_combout\,
	cout => \MODULO_FRECUENCIA|DIV_FREC|count1[1]~29\);

-- Location: FF_X11_Y14_N9
\MODULO_FRECUENCIA|DIV_FREC|count1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \MODULO_FRECUENCIA|DIV_FREC|count1[1]~28_combout\,
	sclr => \MODULO_FRECUENCIA|DIV_FREC|LessThan0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MODULO_FRECUENCIA|DIV_FREC|count1\(1));

-- Location: LCCOMB_X11_Y14_N10
\MODULO_FRECUENCIA|DIV_FREC|count1[2]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_FRECUENCIA|DIV_FREC|count1[2]~30_combout\ = (\MODULO_FRECUENCIA|DIV_FREC|count1\(2) & (\MODULO_FRECUENCIA|DIV_FREC|count1[1]~29\ $ (GND))) # (!\MODULO_FRECUENCIA|DIV_FREC|count1\(2) & (!\MODULO_FRECUENCIA|DIV_FREC|count1[1]~29\ & VCC))
-- \MODULO_FRECUENCIA|DIV_FREC|count1[2]~31\ = CARRY((\MODULO_FRECUENCIA|DIV_FREC|count1\(2) & !\MODULO_FRECUENCIA|DIV_FREC|count1[1]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_FRECUENCIA|DIV_FREC|count1\(2),
	datad => VCC,
	cin => \MODULO_FRECUENCIA|DIV_FREC|count1[1]~29\,
	combout => \MODULO_FRECUENCIA|DIV_FREC|count1[2]~30_combout\,
	cout => \MODULO_FRECUENCIA|DIV_FREC|count1[2]~31\);

-- Location: FF_X11_Y14_N11
\MODULO_FRECUENCIA|DIV_FREC|count1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \MODULO_FRECUENCIA|DIV_FREC|count1[2]~30_combout\,
	sclr => \MODULO_FRECUENCIA|DIV_FREC|LessThan0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MODULO_FRECUENCIA|DIV_FREC|count1\(2));

-- Location: LCCOMB_X11_Y14_N12
\MODULO_FRECUENCIA|DIV_FREC|count1[3]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_FRECUENCIA|DIV_FREC|count1[3]~32_combout\ = (\MODULO_FRECUENCIA|DIV_FREC|count1\(3) & (!\MODULO_FRECUENCIA|DIV_FREC|count1[2]~31\)) # (!\MODULO_FRECUENCIA|DIV_FREC|count1\(3) & ((\MODULO_FRECUENCIA|DIV_FREC|count1[2]~31\) # (GND)))
-- \MODULO_FRECUENCIA|DIV_FREC|count1[3]~33\ = CARRY((!\MODULO_FRECUENCIA|DIV_FREC|count1[2]~31\) # (!\MODULO_FRECUENCIA|DIV_FREC|count1\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MODULO_FRECUENCIA|DIV_FREC|count1\(3),
	datad => VCC,
	cin => \MODULO_FRECUENCIA|DIV_FREC|count1[2]~31\,
	combout => \MODULO_FRECUENCIA|DIV_FREC|count1[3]~32_combout\,
	cout => \MODULO_FRECUENCIA|DIV_FREC|count1[3]~33\);

-- Location: FF_X11_Y14_N13
\MODULO_FRECUENCIA|DIV_FREC|count1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \MODULO_FRECUENCIA|DIV_FREC|count1[3]~32_combout\,
	sclr => \MODULO_FRECUENCIA|DIV_FREC|LessThan0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MODULO_FRECUENCIA|DIV_FREC|count1\(3));

-- Location: LCCOMB_X11_Y14_N14
\MODULO_FRECUENCIA|DIV_FREC|count1[4]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_FRECUENCIA|DIV_FREC|count1[4]~34_combout\ = (\MODULO_FRECUENCIA|DIV_FREC|count1\(4) & (\MODULO_FRECUENCIA|DIV_FREC|count1[3]~33\ $ (GND))) # (!\MODULO_FRECUENCIA|DIV_FREC|count1\(4) & (!\MODULO_FRECUENCIA|DIV_FREC|count1[3]~33\ & VCC))
-- \MODULO_FRECUENCIA|DIV_FREC|count1[4]~35\ = CARRY((\MODULO_FRECUENCIA|DIV_FREC|count1\(4) & !\MODULO_FRECUENCIA|DIV_FREC|count1[3]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MODULO_FRECUENCIA|DIV_FREC|count1\(4),
	datad => VCC,
	cin => \MODULO_FRECUENCIA|DIV_FREC|count1[3]~33\,
	combout => \MODULO_FRECUENCIA|DIV_FREC|count1[4]~34_combout\,
	cout => \MODULO_FRECUENCIA|DIV_FREC|count1[4]~35\);

-- Location: FF_X11_Y14_N15
\MODULO_FRECUENCIA|DIV_FREC|count1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \MODULO_FRECUENCIA|DIV_FREC|count1[4]~34_combout\,
	sclr => \MODULO_FRECUENCIA|DIV_FREC|LessThan0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MODULO_FRECUENCIA|DIV_FREC|count1\(4));

-- Location: LCCOMB_X11_Y14_N16
\MODULO_FRECUENCIA|DIV_FREC|count1[5]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_FRECUENCIA|DIV_FREC|count1[5]~36_combout\ = (\MODULO_FRECUENCIA|DIV_FREC|count1\(5) & (!\MODULO_FRECUENCIA|DIV_FREC|count1[4]~35\)) # (!\MODULO_FRECUENCIA|DIV_FREC|count1\(5) & ((\MODULO_FRECUENCIA|DIV_FREC|count1[4]~35\) # (GND)))
-- \MODULO_FRECUENCIA|DIV_FREC|count1[5]~37\ = CARRY((!\MODULO_FRECUENCIA|DIV_FREC|count1[4]~35\) # (!\MODULO_FRECUENCIA|DIV_FREC|count1\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MODULO_FRECUENCIA|DIV_FREC|count1\(5),
	datad => VCC,
	cin => \MODULO_FRECUENCIA|DIV_FREC|count1[4]~35\,
	combout => \MODULO_FRECUENCIA|DIV_FREC|count1[5]~36_combout\,
	cout => \MODULO_FRECUENCIA|DIV_FREC|count1[5]~37\);

-- Location: FF_X11_Y14_N17
\MODULO_FRECUENCIA|DIV_FREC|count1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \MODULO_FRECUENCIA|DIV_FREC|count1[5]~36_combout\,
	sclr => \MODULO_FRECUENCIA|DIV_FREC|LessThan0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MODULO_FRECUENCIA|DIV_FREC|count1\(5));

-- Location: LCCOMB_X11_Y14_N18
\MODULO_FRECUENCIA|DIV_FREC|count1[6]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_FRECUENCIA|DIV_FREC|count1[6]~38_combout\ = (\MODULO_FRECUENCIA|DIV_FREC|count1\(6) & (\MODULO_FRECUENCIA|DIV_FREC|count1[5]~37\ $ (GND))) # (!\MODULO_FRECUENCIA|DIV_FREC|count1\(6) & (!\MODULO_FRECUENCIA|DIV_FREC|count1[5]~37\ & VCC))
-- \MODULO_FRECUENCIA|DIV_FREC|count1[6]~39\ = CARRY((\MODULO_FRECUENCIA|DIV_FREC|count1\(6) & !\MODULO_FRECUENCIA|DIV_FREC|count1[5]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_FRECUENCIA|DIV_FREC|count1\(6),
	datad => VCC,
	cin => \MODULO_FRECUENCIA|DIV_FREC|count1[5]~37\,
	combout => \MODULO_FRECUENCIA|DIV_FREC|count1[6]~38_combout\,
	cout => \MODULO_FRECUENCIA|DIV_FREC|count1[6]~39\);

-- Location: FF_X11_Y14_N19
\MODULO_FRECUENCIA|DIV_FREC|count1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \MODULO_FRECUENCIA|DIV_FREC|count1[6]~38_combout\,
	sclr => \MODULO_FRECUENCIA|DIV_FREC|LessThan0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MODULO_FRECUENCIA|DIV_FREC|count1\(6));

-- Location: LCCOMB_X11_Y14_N20
\MODULO_FRECUENCIA|DIV_FREC|count1[7]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_FRECUENCIA|DIV_FREC|count1[7]~40_combout\ = (\MODULO_FRECUENCIA|DIV_FREC|count1\(7) & (!\MODULO_FRECUENCIA|DIV_FREC|count1[6]~39\)) # (!\MODULO_FRECUENCIA|DIV_FREC|count1\(7) & ((\MODULO_FRECUENCIA|DIV_FREC|count1[6]~39\) # (GND)))
-- \MODULO_FRECUENCIA|DIV_FREC|count1[7]~41\ = CARRY((!\MODULO_FRECUENCIA|DIV_FREC|count1[6]~39\) # (!\MODULO_FRECUENCIA|DIV_FREC|count1\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MODULO_FRECUENCIA|DIV_FREC|count1\(7),
	datad => VCC,
	cin => \MODULO_FRECUENCIA|DIV_FREC|count1[6]~39\,
	combout => \MODULO_FRECUENCIA|DIV_FREC|count1[7]~40_combout\,
	cout => \MODULO_FRECUENCIA|DIV_FREC|count1[7]~41\);

-- Location: FF_X11_Y14_N21
\MODULO_FRECUENCIA|DIV_FREC|count1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \MODULO_FRECUENCIA|DIV_FREC|count1[7]~40_combout\,
	sclr => \MODULO_FRECUENCIA|DIV_FREC|LessThan0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MODULO_FRECUENCIA|DIV_FREC|count1\(7));

-- Location: LCCOMB_X11_Y14_N22
\MODULO_FRECUENCIA|DIV_FREC|count1[8]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_FRECUENCIA|DIV_FREC|count1[8]~42_combout\ = (\MODULO_FRECUENCIA|DIV_FREC|count1\(8) & (\MODULO_FRECUENCIA|DIV_FREC|count1[7]~41\ $ (GND))) # (!\MODULO_FRECUENCIA|DIV_FREC|count1\(8) & (!\MODULO_FRECUENCIA|DIV_FREC|count1[7]~41\ & VCC))
-- \MODULO_FRECUENCIA|DIV_FREC|count1[8]~43\ = CARRY((\MODULO_FRECUENCIA|DIV_FREC|count1\(8) & !\MODULO_FRECUENCIA|DIV_FREC|count1[7]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MODULO_FRECUENCIA|DIV_FREC|count1\(8),
	datad => VCC,
	cin => \MODULO_FRECUENCIA|DIV_FREC|count1[7]~41\,
	combout => \MODULO_FRECUENCIA|DIV_FREC|count1[8]~42_combout\,
	cout => \MODULO_FRECUENCIA|DIV_FREC|count1[8]~43\);

-- Location: FF_X11_Y14_N23
\MODULO_FRECUENCIA|DIV_FREC|count1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \MODULO_FRECUENCIA|DIV_FREC|count1[8]~42_combout\,
	sclr => \MODULO_FRECUENCIA|DIV_FREC|LessThan0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MODULO_FRECUENCIA|DIV_FREC|count1\(8));

-- Location: LCCOMB_X11_Y14_N24
\MODULO_FRECUENCIA|DIV_FREC|count1[9]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_FRECUENCIA|DIV_FREC|count1[9]~44_combout\ = (\MODULO_FRECUENCIA|DIV_FREC|count1\(9) & (!\MODULO_FRECUENCIA|DIV_FREC|count1[8]~43\)) # (!\MODULO_FRECUENCIA|DIV_FREC|count1\(9) & ((\MODULO_FRECUENCIA|DIV_FREC|count1[8]~43\) # (GND)))
-- \MODULO_FRECUENCIA|DIV_FREC|count1[9]~45\ = CARRY((!\MODULO_FRECUENCIA|DIV_FREC|count1[8]~43\) # (!\MODULO_FRECUENCIA|DIV_FREC|count1\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MODULO_FRECUENCIA|DIV_FREC|count1\(9),
	datad => VCC,
	cin => \MODULO_FRECUENCIA|DIV_FREC|count1[8]~43\,
	combout => \MODULO_FRECUENCIA|DIV_FREC|count1[9]~44_combout\,
	cout => \MODULO_FRECUENCIA|DIV_FREC|count1[9]~45\);

-- Location: FF_X11_Y14_N25
\MODULO_FRECUENCIA|DIV_FREC|count1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \MODULO_FRECUENCIA|DIV_FREC|count1[9]~44_combout\,
	sclr => \MODULO_FRECUENCIA|DIV_FREC|LessThan0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MODULO_FRECUENCIA|DIV_FREC|count1\(9));

-- Location: LCCOMB_X11_Y14_N26
\MODULO_FRECUENCIA|DIV_FREC|count1[10]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_FRECUENCIA|DIV_FREC|count1[10]~46_combout\ = (\MODULO_FRECUENCIA|DIV_FREC|count1\(10) & (\MODULO_FRECUENCIA|DIV_FREC|count1[9]~45\ $ (GND))) # (!\MODULO_FRECUENCIA|DIV_FREC|count1\(10) & (!\MODULO_FRECUENCIA|DIV_FREC|count1[9]~45\ & VCC))
-- \MODULO_FRECUENCIA|DIV_FREC|count1[10]~47\ = CARRY((\MODULO_FRECUENCIA|DIV_FREC|count1\(10) & !\MODULO_FRECUENCIA|DIV_FREC|count1[9]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_FRECUENCIA|DIV_FREC|count1\(10),
	datad => VCC,
	cin => \MODULO_FRECUENCIA|DIV_FREC|count1[9]~45\,
	combout => \MODULO_FRECUENCIA|DIV_FREC|count1[10]~46_combout\,
	cout => \MODULO_FRECUENCIA|DIV_FREC|count1[10]~47\);

-- Location: FF_X11_Y14_N27
\MODULO_FRECUENCIA|DIV_FREC|count1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \MODULO_FRECUENCIA|DIV_FREC|count1[10]~46_combout\,
	sclr => \MODULO_FRECUENCIA|DIV_FREC|LessThan0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MODULO_FRECUENCIA|DIV_FREC|count1\(10));

-- Location: LCCOMB_X11_Y14_N28
\MODULO_FRECUENCIA|DIV_FREC|count1[11]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_FRECUENCIA|DIV_FREC|count1[11]~48_combout\ = (\MODULO_FRECUENCIA|DIV_FREC|count1\(11) & (!\MODULO_FRECUENCIA|DIV_FREC|count1[10]~47\)) # (!\MODULO_FRECUENCIA|DIV_FREC|count1\(11) & ((\MODULO_FRECUENCIA|DIV_FREC|count1[10]~47\) # (GND)))
-- \MODULO_FRECUENCIA|DIV_FREC|count1[11]~49\ = CARRY((!\MODULO_FRECUENCIA|DIV_FREC|count1[10]~47\) # (!\MODULO_FRECUENCIA|DIV_FREC|count1\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MODULO_FRECUENCIA|DIV_FREC|count1\(11),
	datad => VCC,
	cin => \MODULO_FRECUENCIA|DIV_FREC|count1[10]~47\,
	combout => \MODULO_FRECUENCIA|DIV_FREC|count1[11]~48_combout\,
	cout => \MODULO_FRECUENCIA|DIV_FREC|count1[11]~49\);

-- Location: FF_X10_Y14_N25
\MODULO_FRECUENCIA|DIV_FREC|count1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \MODULO_FRECUENCIA|DIV_FREC|count1[11]~48_combout\,
	sclr => \MODULO_FRECUENCIA|DIV_FREC|LessThan0~25_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MODULO_FRECUENCIA|DIV_FREC|count1\(11));

-- Location: LCCOMB_X11_Y14_N30
\MODULO_FRECUENCIA|DIV_FREC|count1[12]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_FRECUENCIA|DIV_FREC|count1[12]~50_combout\ = (\MODULO_FRECUENCIA|DIV_FREC|count1\(12) & (\MODULO_FRECUENCIA|DIV_FREC|count1[11]~49\ $ (GND))) # (!\MODULO_FRECUENCIA|DIV_FREC|count1\(12) & (!\MODULO_FRECUENCIA|DIV_FREC|count1[11]~49\ & VCC))
-- \MODULO_FRECUENCIA|DIV_FREC|count1[12]~51\ = CARRY((\MODULO_FRECUENCIA|DIV_FREC|count1\(12) & !\MODULO_FRECUENCIA|DIV_FREC|count1[11]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_FRECUENCIA|DIV_FREC|count1\(12),
	datad => VCC,
	cin => \MODULO_FRECUENCIA|DIV_FREC|count1[11]~49\,
	combout => \MODULO_FRECUENCIA|DIV_FREC|count1[12]~50_combout\,
	cout => \MODULO_FRECUENCIA|DIV_FREC|count1[12]~51\);

-- Location: FF_X11_Y14_N31
\MODULO_FRECUENCIA|DIV_FREC|count1[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \MODULO_FRECUENCIA|DIV_FREC|count1[12]~50_combout\,
	sclr => \MODULO_FRECUENCIA|DIV_FREC|LessThan0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MODULO_FRECUENCIA|DIV_FREC|count1\(12));

-- Location: LCCOMB_X11_Y13_N0
\MODULO_FRECUENCIA|DIV_FREC|count1[13]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_FRECUENCIA|DIV_FREC|count1[13]~52_combout\ = (\MODULO_FRECUENCIA|DIV_FREC|count1\(13) & (!\MODULO_FRECUENCIA|DIV_FREC|count1[12]~51\)) # (!\MODULO_FRECUENCIA|DIV_FREC|count1\(13) & ((\MODULO_FRECUENCIA|DIV_FREC|count1[12]~51\) # (GND)))
-- \MODULO_FRECUENCIA|DIV_FREC|count1[13]~53\ = CARRY((!\MODULO_FRECUENCIA|DIV_FREC|count1[12]~51\) # (!\MODULO_FRECUENCIA|DIV_FREC|count1\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MODULO_FRECUENCIA|DIV_FREC|count1\(13),
	datad => VCC,
	cin => \MODULO_FRECUENCIA|DIV_FREC|count1[12]~51\,
	combout => \MODULO_FRECUENCIA|DIV_FREC|count1[13]~52_combout\,
	cout => \MODULO_FRECUENCIA|DIV_FREC|count1[13]~53\);

-- Location: FF_X11_Y13_N1
\MODULO_FRECUENCIA|DIV_FREC|count1[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \MODULO_FRECUENCIA|DIV_FREC|count1[13]~52_combout\,
	sclr => \MODULO_FRECUENCIA|DIV_FREC|LessThan0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MODULO_FRECUENCIA|DIV_FREC|count1\(13));

-- Location: LCCOMB_X11_Y13_N2
\MODULO_FRECUENCIA|DIV_FREC|count1[14]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_FRECUENCIA|DIV_FREC|count1[14]~54_combout\ = (\MODULO_FRECUENCIA|DIV_FREC|count1\(14) & (\MODULO_FRECUENCIA|DIV_FREC|count1[13]~53\ $ (GND))) # (!\MODULO_FRECUENCIA|DIV_FREC|count1\(14) & (!\MODULO_FRECUENCIA|DIV_FREC|count1[13]~53\ & VCC))
-- \MODULO_FRECUENCIA|DIV_FREC|count1[14]~55\ = CARRY((\MODULO_FRECUENCIA|DIV_FREC|count1\(14) & !\MODULO_FRECUENCIA|DIV_FREC|count1[13]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MODULO_FRECUENCIA|DIV_FREC|count1\(14),
	datad => VCC,
	cin => \MODULO_FRECUENCIA|DIV_FREC|count1[13]~53\,
	combout => \MODULO_FRECUENCIA|DIV_FREC|count1[14]~54_combout\,
	cout => \MODULO_FRECUENCIA|DIV_FREC|count1[14]~55\);

-- Location: FF_X11_Y13_N3
\MODULO_FRECUENCIA|DIV_FREC|count1[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \MODULO_FRECUENCIA|DIV_FREC|count1[14]~54_combout\,
	sclr => \MODULO_FRECUENCIA|DIV_FREC|LessThan0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MODULO_FRECUENCIA|DIV_FREC|count1\(14));

-- Location: LCCOMB_X11_Y13_N4
\MODULO_FRECUENCIA|DIV_FREC|count1[15]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_FRECUENCIA|DIV_FREC|count1[15]~56_combout\ = (\MODULO_FRECUENCIA|DIV_FREC|count1\(15) & (!\MODULO_FRECUENCIA|DIV_FREC|count1[14]~55\)) # (!\MODULO_FRECUENCIA|DIV_FREC|count1\(15) & ((\MODULO_FRECUENCIA|DIV_FREC|count1[14]~55\) # (GND)))
-- \MODULO_FRECUENCIA|DIV_FREC|count1[15]~57\ = CARRY((!\MODULO_FRECUENCIA|DIV_FREC|count1[14]~55\) # (!\MODULO_FRECUENCIA|DIV_FREC|count1\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MODULO_FRECUENCIA|DIV_FREC|count1\(15),
	datad => VCC,
	cin => \MODULO_FRECUENCIA|DIV_FREC|count1[14]~55\,
	combout => \MODULO_FRECUENCIA|DIV_FREC|count1[15]~56_combout\,
	cout => \MODULO_FRECUENCIA|DIV_FREC|count1[15]~57\);

-- Location: FF_X8_Y14_N29
\MODULO_FRECUENCIA|DIV_FREC|count1[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \MODULO_FRECUENCIA|DIV_FREC|count1[15]~56_combout\,
	sclr => \MODULO_FRECUENCIA|DIV_FREC|LessThan0~25_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MODULO_FRECUENCIA|DIV_FREC|count1\(15));

-- Location: LCCOMB_X11_Y13_N6
\MODULO_FRECUENCIA|DIV_FREC|count1[16]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_FRECUENCIA|DIV_FREC|count1[16]~58_combout\ = (\MODULO_FRECUENCIA|DIV_FREC|count1\(16) & (\MODULO_FRECUENCIA|DIV_FREC|count1[15]~57\ $ (GND))) # (!\MODULO_FRECUENCIA|DIV_FREC|count1\(16) & (!\MODULO_FRECUENCIA|DIV_FREC|count1[15]~57\ & VCC))
-- \MODULO_FRECUENCIA|DIV_FREC|count1[16]~59\ = CARRY((\MODULO_FRECUENCIA|DIV_FREC|count1\(16) & !\MODULO_FRECUENCIA|DIV_FREC|count1[15]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MODULO_FRECUENCIA|DIV_FREC|count1\(16),
	datad => VCC,
	cin => \MODULO_FRECUENCIA|DIV_FREC|count1[15]~57\,
	combout => \MODULO_FRECUENCIA|DIV_FREC|count1[16]~58_combout\,
	cout => \MODULO_FRECUENCIA|DIV_FREC|count1[16]~59\);

-- Location: FF_X10_Y14_N3
\MODULO_FRECUENCIA|DIV_FREC|count1[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \MODULO_FRECUENCIA|DIV_FREC|count1[16]~58_combout\,
	sclr => \MODULO_FRECUENCIA|DIV_FREC|LessThan0~25_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MODULO_FRECUENCIA|DIV_FREC|count1\(16));

-- Location: LCCOMB_X11_Y13_N8
\MODULO_FRECUENCIA|DIV_FREC|count1[17]~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_FRECUENCIA|DIV_FREC|count1[17]~60_combout\ = (\MODULO_FRECUENCIA|DIV_FREC|count1\(17) & (!\MODULO_FRECUENCIA|DIV_FREC|count1[16]~59\)) # (!\MODULO_FRECUENCIA|DIV_FREC|count1\(17) & ((\MODULO_FRECUENCIA|DIV_FREC|count1[16]~59\) # (GND)))
-- \MODULO_FRECUENCIA|DIV_FREC|count1[17]~61\ = CARRY((!\MODULO_FRECUENCIA|DIV_FREC|count1[16]~59\) # (!\MODULO_FRECUENCIA|DIV_FREC|count1\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_FRECUENCIA|DIV_FREC|count1\(17),
	datad => VCC,
	cin => \MODULO_FRECUENCIA|DIV_FREC|count1[16]~59\,
	combout => \MODULO_FRECUENCIA|DIV_FREC|count1[17]~60_combout\,
	cout => \MODULO_FRECUENCIA|DIV_FREC|count1[17]~61\);

-- Location: FF_X10_Y14_N27
\MODULO_FRECUENCIA|DIV_FREC|count1[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \MODULO_FRECUENCIA|DIV_FREC|count1[17]~60_combout\,
	sclr => \MODULO_FRECUENCIA|DIV_FREC|LessThan0~25_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MODULO_FRECUENCIA|DIV_FREC|count1\(17));

-- Location: LCCOMB_X11_Y13_N10
\MODULO_FRECUENCIA|DIV_FREC|count1[18]~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_FRECUENCIA|DIV_FREC|count1[18]~62_combout\ = (\MODULO_FRECUENCIA|DIV_FREC|count1\(18) & (\MODULO_FRECUENCIA|DIV_FREC|count1[17]~61\ $ (GND))) # (!\MODULO_FRECUENCIA|DIV_FREC|count1\(18) & (!\MODULO_FRECUENCIA|DIV_FREC|count1[17]~61\ & VCC))
-- \MODULO_FRECUENCIA|DIV_FREC|count1[18]~63\ = CARRY((\MODULO_FRECUENCIA|DIV_FREC|count1\(18) & !\MODULO_FRECUENCIA|DIV_FREC|count1[17]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_FRECUENCIA|DIV_FREC|count1\(18),
	datad => VCC,
	cin => \MODULO_FRECUENCIA|DIV_FREC|count1[17]~61\,
	combout => \MODULO_FRECUENCIA|DIV_FREC|count1[18]~62_combout\,
	cout => \MODULO_FRECUENCIA|DIV_FREC|count1[18]~63\);

-- Location: FF_X10_Y14_N15
\MODULO_FRECUENCIA|DIV_FREC|count1[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \MODULO_FRECUENCIA|DIV_FREC|count1[18]~62_combout\,
	sclr => \MODULO_FRECUENCIA|DIV_FREC|LessThan0~25_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MODULO_FRECUENCIA|DIV_FREC|count1\(18));

-- Location: LCCOMB_X11_Y13_N12
\MODULO_FRECUENCIA|DIV_FREC|count1[19]~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_FRECUENCIA|DIV_FREC|count1[19]~64_combout\ = (\MODULO_FRECUENCIA|DIV_FREC|count1\(19) & (!\MODULO_FRECUENCIA|DIV_FREC|count1[18]~63\)) # (!\MODULO_FRECUENCIA|DIV_FREC|count1\(19) & ((\MODULO_FRECUENCIA|DIV_FREC|count1[18]~63\) # (GND)))
-- \MODULO_FRECUENCIA|DIV_FREC|count1[19]~65\ = CARRY((!\MODULO_FRECUENCIA|DIV_FREC|count1[18]~63\) # (!\MODULO_FRECUENCIA|DIV_FREC|count1\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_FRECUENCIA|DIV_FREC|count1\(19),
	datad => VCC,
	cin => \MODULO_FRECUENCIA|DIV_FREC|count1[18]~63\,
	combout => \MODULO_FRECUENCIA|DIV_FREC|count1[19]~64_combout\,
	cout => \MODULO_FRECUENCIA|DIV_FREC|count1[19]~65\);

-- Location: FF_X10_Y14_N21
\MODULO_FRECUENCIA|DIV_FREC|count1[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \MODULO_FRECUENCIA|DIV_FREC|count1[19]~64_combout\,
	sclr => \MODULO_FRECUENCIA|DIV_FREC|LessThan0~25_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MODULO_FRECUENCIA|DIV_FREC|count1\(19));

-- Location: LCCOMB_X11_Y13_N14
\MODULO_FRECUENCIA|DIV_FREC|count1[20]~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_FRECUENCIA|DIV_FREC|count1[20]~66_combout\ = (\MODULO_FRECUENCIA|DIV_FREC|count1\(20) & (\MODULO_FRECUENCIA|DIV_FREC|count1[19]~65\ $ (GND))) # (!\MODULO_FRECUENCIA|DIV_FREC|count1\(20) & (!\MODULO_FRECUENCIA|DIV_FREC|count1[19]~65\ & VCC))
-- \MODULO_FRECUENCIA|DIV_FREC|count1[20]~67\ = CARRY((\MODULO_FRECUENCIA|DIV_FREC|count1\(20) & !\MODULO_FRECUENCIA|DIV_FREC|count1[19]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MODULO_FRECUENCIA|DIV_FREC|count1\(20),
	datad => VCC,
	cin => \MODULO_FRECUENCIA|DIV_FREC|count1[19]~65\,
	combout => \MODULO_FRECUENCIA|DIV_FREC|count1[20]~66_combout\,
	cout => \MODULO_FRECUENCIA|DIV_FREC|count1[20]~67\);

-- Location: FF_X10_Y14_N13
\MODULO_FRECUENCIA|DIV_FREC|count1[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \MODULO_FRECUENCIA|DIV_FREC|count1[20]~66_combout\,
	sclr => \MODULO_FRECUENCIA|DIV_FREC|LessThan0~25_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MODULO_FRECUENCIA|DIV_FREC|count1\(20));

-- Location: LCCOMB_X11_Y13_N16
\MODULO_FRECUENCIA|DIV_FREC|count1[21]~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_FRECUENCIA|DIV_FREC|count1[21]~68_combout\ = (\MODULO_FRECUENCIA|DIV_FREC|count1\(21) & (!\MODULO_FRECUENCIA|DIV_FREC|count1[20]~67\)) # (!\MODULO_FRECUENCIA|DIV_FREC|count1\(21) & ((\MODULO_FRECUENCIA|DIV_FREC|count1[20]~67\) # (GND)))
-- \MODULO_FRECUENCIA|DIV_FREC|count1[21]~69\ = CARRY((!\MODULO_FRECUENCIA|DIV_FREC|count1[20]~67\) # (!\MODULO_FRECUENCIA|DIV_FREC|count1\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_FRECUENCIA|DIV_FREC|count1\(21),
	datad => VCC,
	cin => \MODULO_FRECUENCIA|DIV_FREC|count1[20]~67\,
	combout => \MODULO_FRECUENCIA|DIV_FREC|count1[21]~68_combout\,
	cout => \MODULO_FRECUENCIA|DIV_FREC|count1[21]~69\);

-- Location: FF_X10_Y13_N1
\MODULO_FRECUENCIA|DIV_FREC|count1[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \MODULO_FRECUENCIA|DIV_FREC|count1[21]~68_combout\,
	sclr => \MODULO_FRECUENCIA|DIV_FREC|LessThan0~25_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MODULO_FRECUENCIA|DIV_FREC|count1\(21));

-- Location: LCCOMB_X11_Y13_N18
\MODULO_FRECUENCIA|DIV_FREC|count1[22]~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_FRECUENCIA|DIV_FREC|count1[22]~70_combout\ = (\MODULO_FRECUENCIA|DIV_FREC|count1\(22) & (\MODULO_FRECUENCIA|DIV_FREC|count1[21]~69\ $ (GND))) # (!\MODULO_FRECUENCIA|DIV_FREC|count1\(22) & (!\MODULO_FRECUENCIA|DIV_FREC|count1[21]~69\ & VCC))
-- \MODULO_FRECUENCIA|DIV_FREC|count1[22]~71\ = CARRY((\MODULO_FRECUENCIA|DIV_FREC|count1\(22) & !\MODULO_FRECUENCIA|DIV_FREC|count1[21]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MODULO_FRECUENCIA|DIV_FREC|count1\(22),
	datad => VCC,
	cin => \MODULO_FRECUENCIA|DIV_FREC|count1[21]~69\,
	combout => \MODULO_FRECUENCIA|DIV_FREC|count1[22]~70_combout\,
	cout => \MODULO_FRECUENCIA|DIV_FREC|count1[22]~71\);

-- Location: FF_X11_Y13_N19
\MODULO_FRECUENCIA|DIV_FREC|count1[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \MODULO_FRECUENCIA|DIV_FREC|count1[22]~70_combout\,
	sclr => \MODULO_FRECUENCIA|DIV_FREC|LessThan0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MODULO_FRECUENCIA|DIV_FREC|count1\(22));

-- Location: LCCOMB_X11_Y13_N20
\MODULO_FRECUENCIA|DIV_FREC|count1[23]~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_FRECUENCIA|DIV_FREC|count1[23]~72_combout\ = (\MODULO_FRECUENCIA|DIV_FREC|count1\(23) & (!\MODULO_FRECUENCIA|DIV_FREC|count1[22]~71\)) # (!\MODULO_FRECUENCIA|DIV_FREC|count1\(23) & ((\MODULO_FRECUENCIA|DIV_FREC|count1[22]~71\) # (GND)))
-- \MODULO_FRECUENCIA|DIV_FREC|count1[23]~73\ = CARRY((!\MODULO_FRECUENCIA|DIV_FREC|count1[22]~71\) # (!\MODULO_FRECUENCIA|DIV_FREC|count1\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MODULO_FRECUENCIA|DIV_FREC|count1\(23),
	datad => VCC,
	cin => \MODULO_FRECUENCIA|DIV_FREC|count1[22]~71\,
	combout => \MODULO_FRECUENCIA|DIV_FREC|count1[23]~72_combout\,
	cout => \MODULO_FRECUENCIA|DIV_FREC|count1[23]~73\);

-- Location: FF_X11_Y13_N21
\MODULO_FRECUENCIA|DIV_FREC|count1[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \MODULO_FRECUENCIA|DIV_FREC|count1[23]~72_combout\,
	sclr => \MODULO_FRECUENCIA|DIV_FREC|LessThan0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MODULO_FRECUENCIA|DIV_FREC|count1\(23));

-- Location: LCCOMB_X11_Y13_N22
\MODULO_FRECUENCIA|DIV_FREC|count1[24]~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_FRECUENCIA|DIV_FREC|count1[24]~74_combout\ = (\MODULO_FRECUENCIA|DIV_FREC|count1\(24) & (\MODULO_FRECUENCIA|DIV_FREC|count1[23]~73\ $ (GND))) # (!\MODULO_FRECUENCIA|DIV_FREC|count1\(24) & (!\MODULO_FRECUENCIA|DIV_FREC|count1[23]~73\ & VCC))
-- \MODULO_FRECUENCIA|DIV_FREC|count1[24]~75\ = CARRY((\MODULO_FRECUENCIA|DIV_FREC|count1\(24) & !\MODULO_FRECUENCIA|DIV_FREC|count1[23]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_FRECUENCIA|DIV_FREC|count1\(24),
	datad => VCC,
	cin => \MODULO_FRECUENCIA|DIV_FREC|count1[23]~73\,
	combout => \MODULO_FRECUENCIA|DIV_FREC|count1[24]~74_combout\,
	cout => \MODULO_FRECUENCIA|DIV_FREC|count1[24]~75\);

-- Location: FF_X11_Y13_N23
\MODULO_FRECUENCIA|DIV_FREC|count1[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \MODULO_FRECUENCIA|DIV_FREC|count1[24]~74_combout\,
	sclr => \MODULO_FRECUENCIA|DIV_FREC|LessThan0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MODULO_FRECUENCIA|DIV_FREC|count1\(24));

-- Location: LCCOMB_X11_Y13_N24
\MODULO_FRECUENCIA|DIV_FREC|count1[25]~76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_FRECUENCIA|DIV_FREC|count1[25]~76_combout\ = \MODULO_FRECUENCIA|DIV_FREC|count1[24]~75\ $ (\MODULO_FRECUENCIA|DIV_FREC|count1\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \MODULO_FRECUENCIA|DIV_FREC|count1\(25),
	cin => \MODULO_FRECUENCIA|DIV_FREC|count1[24]~75\,
	combout => \MODULO_FRECUENCIA|DIV_FREC|count1[25]~76_combout\);

-- Location: FF_X11_Y13_N25
\MODULO_FRECUENCIA|DIV_FREC|count1[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \MODULO_FRECUENCIA|DIV_FREC|count1[25]~76_combout\,
	sclr => \MODULO_FRECUENCIA|DIV_FREC|LessThan0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MODULO_FRECUENCIA|DIV_FREC|count1\(25));

-- Location: LCCOMB_X10_Y14_N8
\MODULO_FRECUENCIA|DIV_FREC|LessThan0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_FRECUENCIA|DIV_FREC|LessThan0~22_combout\ = (\MODULO_FRECUENCIA|DIV_FREC|LessThan0~0_combout\ & ((\MODULO_FRECUENCIA|DIV_FREC|LessThan0~21_combout\ & ((!\MODULO_FRECUENCIA|vel_state\(0)) # (!\MODULO_FRECUENCIA|DIV_FREC|count1\(22)))) # 
-- (!\MODULO_FRECUENCIA|DIV_FREC|LessThan0~21_combout\ & (!\MODULO_FRECUENCIA|DIV_FREC|count1\(22) & !\MODULO_FRECUENCIA|vel_state\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_FRECUENCIA|DIV_FREC|LessThan0~21_combout\,
	datab => \MODULO_FRECUENCIA|DIV_FREC|count1\(22),
	datac => \MODULO_FRECUENCIA|vel_state\(0),
	datad => \MODULO_FRECUENCIA|DIV_FREC|LessThan0~0_combout\,
	combout => \MODULO_FRECUENCIA|DIV_FREC|LessThan0~22_combout\);

-- Location: LCCOMB_X10_Y14_N28
\MODULO_FRECUENCIA|DIV_FREC|out1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_FRECUENCIA|DIV_FREC|out1~0_combout\ = \MODULO_FRECUENCIA|DIV_FREC|out1~q\ $ (((\MODULO_FRECUENCIA|DIV_FREC|count1\(25)) # ((!\MODULO_FRECUENCIA|DIV_FREC|LessThan0~23_combout\ & !\MODULO_FRECUENCIA|DIV_FREC|LessThan0~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_FRECUENCIA|DIV_FREC|count1\(25),
	datab => \MODULO_FRECUENCIA|DIV_FREC|LessThan0~23_combout\,
	datac => \MODULO_FRECUENCIA|DIV_FREC|out1~q\,
	datad => \MODULO_FRECUENCIA|DIV_FREC|LessThan0~22_combout\,
	combout => \MODULO_FRECUENCIA|DIV_FREC|out1~0_combout\);

-- Location: FF_X10_Y14_N29
\MODULO_FRECUENCIA|DIV_FREC|out1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \MODULO_FRECUENCIA|DIV_FREC|out1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MODULO_FRECUENCIA|DIV_FREC|out1~q\);

-- Location: FF_X5_Y23_N7
\MODULO_FRECUENCIA|frec_int_last\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \MODULO_FRECUENCIA|DIV_FREC|out1~q\,
	clrn => \Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MODULO_FRECUENCIA|frec_int_last~q\);

-- Location: LCCOMB_X5_Y23_N6
\MODULO_FRECUENCIA|pulse_frec\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_FRECUENCIA|pulse_frec~combout\ = (!\MODULO_VISTAS|Mux19~15_combout\ & (\MODULO_FRECUENCIA|DIV_FREC|out1~q\ & (!\MODULO_FRECUENCIA|frec_int_last~q\ & \Reset~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_VISTAS|Mux19~15_combout\,
	datab => \MODULO_FRECUENCIA|DIV_FREC|out1~q\,
	datac => \MODULO_FRECUENCIA|frec_int_last~q\,
	datad => \Reset~input_o\,
	combout => \MODULO_FRECUENCIA|pulse_frec~combout\);

-- Location: FF_X5_Y23_N19
\MODULO_FRECUENCIA|C_FR|CNT_int[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \MODULO_FRECUENCIA|C_FR|CNT_int[0]~3_combout\,
	clrn => \Reset~input_o\,
	ena => \MODULO_FRECUENCIA|pulse_frec~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MODULO_FRECUENCIA|C_FR|CNT_int\(0));

-- Location: LCCOMB_X5_Y23_N8
\MODULO_FRECUENCIA|C_FR|CNT_int~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_FRECUENCIA|C_FR|CNT_int~0_combout\ = (\MODULO_FRECUENCIA|C_FR|CNT_int\(0) & (!\MODULO_FRECUENCIA|C_FR|CNT_int\(1) & ((\MODULO_FRECUENCIA|C_FR|CNT_int\(2)) # (!\MODULO_FRECUENCIA|C_FR|CNT_int\(3))))) # (!\MODULO_FRECUENCIA|C_FR|CNT_int\(0) & 
-- (((\MODULO_FRECUENCIA|C_FR|CNT_int\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_FRECUENCIA|C_FR|CNT_int\(0),
	datab => \MODULO_FRECUENCIA|C_FR|CNT_int\(2),
	datac => \MODULO_FRECUENCIA|C_FR|CNT_int\(1),
	datad => \MODULO_FRECUENCIA|C_FR|CNT_int\(3),
	combout => \MODULO_FRECUENCIA|C_FR|CNT_int~0_combout\);

-- Location: FF_X5_Y23_N9
\MODULO_FRECUENCIA|C_FR|CNT_int[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \MODULO_FRECUENCIA|C_FR|CNT_int~0_combout\,
	clrn => \Reset~input_o\,
	ena => \MODULO_FRECUENCIA|pulse_frec~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MODULO_FRECUENCIA|C_FR|CNT_int\(1));

-- Location: LCCOMB_X5_Y23_N14
\MODULO_FRECUENCIA|C_FR|CNT_int[2]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_FRECUENCIA|C_FR|CNT_int[2]~1_combout\ = \MODULO_FRECUENCIA|C_FR|CNT_int\(2) $ (((\MODULO_FRECUENCIA|C_FR|CNT_int\(0) & (\MODULO_FRECUENCIA|C_FR|CNT_int\(1) & \MODULO_FRECUENCIA|pulse_frec~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_FRECUENCIA|C_FR|CNT_int\(0),
	datab => \MODULO_FRECUENCIA|C_FR|CNT_int\(1),
	datac => \MODULO_FRECUENCIA|C_FR|CNT_int\(2),
	datad => \MODULO_FRECUENCIA|pulse_frec~combout\,
	combout => \MODULO_FRECUENCIA|C_FR|CNT_int[2]~1_combout\);

-- Location: FF_X5_Y23_N15
\MODULO_FRECUENCIA|C_FR|CNT_int[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \MODULO_FRECUENCIA|C_FR|CNT_int[2]~1_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MODULO_FRECUENCIA|C_FR|CNT_int\(2));

-- Location: LCCOMB_X5_Y23_N12
\MODULO_FRECUENCIA|C_FR|CNT_int~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_FRECUENCIA|C_FR|CNT_int~2_combout\ = (\MODULO_FRECUENCIA|C_FR|CNT_int\(0) & ((\MODULO_FRECUENCIA|C_FR|CNT_int\(2) & (\MODULO_FRECUENCIA|C_FR|CNT_int\(3) $ (\MODULO_FRECUENCIA|C_FR|CNT_int\(1)))) # (!\MODULO_FRECUENCIA|C_FR|CNT_int\(2) & 
-- (\MODULO_FRECUENCIA|C_FR|CNT_int\(3) & \MODULO_FRECUENCIA|C_FR|CNT_int\(1))))) # (!\MODULO_FRECUENCIA|C_FR|CNT_int\(0) & (((\MODULO_FRECUENCIA|C_FR|CNT_int\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_FRECUENCIA|C_FR|CNT_int\(0),
	datab => \MODULO_FRECUENCIA|C_FR|CNT_int\(2),
	datac => \MODULO_FRECUENCIA|C_FR|CNT_int\(3),
	datad => \MODULO_FRECUENCIA|C_FR|CNT_int\(1),
	combout => \MODULO_FRECUENCIA|C_FR|CNT_int~2_combout\);

-- Location: FF_X5_Y23_N13
\MODULO_FRECUENCIA|C_FR|CNT_int[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \MODULO_FRECUENCIA|C_FR|CNT_int~2_combout\,
	clrn => \Reset~input_o\,
	ena => \MODULO_FRECUENCIA|pulse_frec~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MODULO_FRECUENCIA|C_FR|CNT_int\(3));

-- Location: FF_X5_Y24_N11
\MODULO_FRECUENCIA|R_FR|Reg_Out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \MODULO_FRECUENCIA|C_FR|CNT_int\(3),
	clrn => \Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MODULO_FRECUENCIA|R_FR|Reg_Out\(3));

-- Location: LCCOMB_X5_Y24_N10
\MODULO_VISTAS|Mux1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_VISTAS|Mux1~1_combout\ = (\MODULO_VISTAS|Mux1~0_combout\ & ((\SW_Vista[0]~input_o\ & ((\R_TT_D|Reg_Out\(3)))) # (!\SW_Vista[0]~input_o\ & (\MODULO_FRECUENCIA|R_FR|Reg_Out\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW_Vista[0]~input_o\,
	datab => \MODULO_VISTAS|Mux1~0_combout\,
	datac => \MODULO_FRECUENCIA|R_FR|Reg_Out\(3),
	datad => \R_TT_D|Reg_Out\(3),
	combout => \MODULO_VISTAS|Mux1~1_combout\);

-- Location: LCCOMB_X6_Y24_N18
\MODULO_VISTAS|Mux1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_VISTAS|Mux1~2_combout\ = (\SW_Color[0]~input_o\ & ((\SW_Vista[1]~input_o\ $ (\SW_Vista[0]~input_o\)))) # (!\SW_Color[0]~input_o\ & (\SW_Color[1]~input_o\ & (\SW_Vista[1]~input_o\ $ (\SW_Vista[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW_Color[0]~input_o\,
	datab => \SW_Color[1]~input_o\,
	datac => \SW_Vista[1]~input_o\,
	datad => \SW_Vista[0]~input_o\,
	combout => \MODULO_VISTAS|Mux1~2_combout\);

-- Location: LCCOMB_X6_Y24_N20
\MODULO_VISTAS|Mux1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_VISTAS|Mux1~3_combout\ = (\SW_Modo[1]~input_o\) # ((\MODULO_VISTAS|Mux1~2_combout\) # ((\MODULO_TIEMPOS|c_t\(3) & \MODULO_VISTAS|mux_hex0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW_Modo[1]~input_o\,
	datab => \MODULO_VISTAS|Mux1~2_combout\,
	datac => \MODULO_TIEMPOS|c_t\(3),
	datad => \MODULO_VISTAS|mux_hex0~0_combout\,
	combout => \MODULO_VISTAS|Mux1~3_combout\);

-- Location: LCCOMB_X5_Y24_N6
\MODULO_VISTAS|Mux1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_VISTAS|Mux1~4_combout\ = (\MODULO_VISTAS|Mux1~1_combout\) # ((\MODULO_VISTAS|Mux7~2_combout\) # ((\SW_Modo[0]~input_o\ & \MODULO_VISTAS|Mux1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_VISTAS|Mux1~1_combout\,
	datab => \SW_Modo[0]~input_o\,
	datac => \MODULO_VISTAS|Mux1~3_combout\,
	datad => \MODULO_VISTAS|Mux7~2_combout\,
	combout => \MODULO_VISTAS|Mux1~4_combout\);

-- Location: FF_X5_Y24_N19
\MODULO_FRECUENCIA|R_FR|Reg_Out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \MODULO_FRECUENCIA|C_FR|CNT_int\(0),
	clrn => \Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MODULO_FRECUENCIA|R_FR|Reg_Out\(0));

-- Location: LCCOMB_X5_Y24_N18
\MODULO_VISTAS|Mux4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_VISTAS|Mux4~2_combout\ = (!\SW_Modo[0]~input_o\ & ((\SW_Vista[0]~input_o\ & ((\R_TT_D|Reg_Out\(0)))) # (!\SW_Vista[0]~input_o\ & (\MODULO_FRECUENCIA|R_FR|Reg_Out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW_Vista[0]~input_o\,
	datab => \SW_Modo[0]~input_o\,
	datac => \MODULO_FRECUENCIA|R_FR|Reg_Out\(0),
	datad => \R_TT_D|Reg_Out\(0),
	combout => \MODULO_VISTAS|Mux4~2_combout\);

-- Location: LCCOMB_X6_Y24_N2
\MODULO_VISTAS|Mux4~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_VISTAS|Mux4~3_combout\ = (\SW_Vista[1]~input_o\ & (((\SW_Vista[0]~input_o\)) # (!\SW_Color[0]~input_o\))) # (!\SW_Vista[1]~input_o\ & ((\SW_Vista[0]~input_o\ & (!\SW_Color[0]~input_o\)) # (!\SW_Vista[0]~input_o\ & ((\MODULO_TIEMPOS|c_c~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW_Color[0]~input_o\,
	datab => \SW_Vista[1]~input_o\,
	datac => \MODULO_TIEMPOS|c_c~q\,
	datad => \SW_Vista[0]~input_o\,
	combout => \MODULO_VISTAS|Mux4~3_combout\);

-- Location: LCCOMB_X6_Y24_N28
\MODULO_VISTAS|Mux4~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_VISTAS|Mux4~4_combout\ = (\MODULO_VISTAS|mux_hex0~0_combout\ & (((\MODULO_TIEMPOS|c_t\(0))))) # (!\MODULO_VISTAS|mux_hex0~0_combout\ & (\MODULO_VISTAS|Mux4~3_combout\ & (!\MODULO_VISTAS|Mux15~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_VISTAS|mux_hex0~0_combout\,
	datab => \MODULO_VISTAS|Mux4~3_combout\,
	datac => \MODULO_VISTAS|Mux15~1_combout\,
	datad => \MODULO_TIEMPOS|c_t\(0),
	combout => \MODULO_VISTAS|Mux4~4_combout\);

-- Location: LCCOMB_X6_Y24_N30
\MODULO_VISTAS|Mux4~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_VISTAS|Mux4~5_combout\ = (!\SW_Modo[1]~input_o\ & ((\MODULO_VISTAS|Mux4~2_combout\) # ((\SW_Modo[0]~input_o\ & \MODULO_VISTAS|Mux4~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW_Modo[1]~input_o\,
	datab => \MODULO_VISTAS|Mux4~2_combout\,
	datac => \SW_Modo[0]~input_o\,
	datad => \MODULO_VISTAS|Mux4~4_combout\,
	combout => \MODULO_VISTAS|Mux4~5_combout\);

-- Location: LCCOMB_X5_Y24_N4
\MODULO_VISTAS|Mux4~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_VISTAS|Mux4~6_combout\ = (\MODULO_VISTAS|Mux4~5_combout\) # ((!\SW_Color[0]~input_o\ & (!\SW_Modo[0]~input_o\ & \SW_Modo[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW_Color[0]~input_o\,
	datab => \SW_Modo[0]~input_o\,
	datac => \MODULO_VISTAS|Mux4~5_combout\,
	datad => \SW_Modo[1]~input_o\,
	combout => \MODULO_VISTAS|Mux4~6_combout\);

-- Location: FF_X5_Y25_N27
\MODULO_FRECUENCIA|R_FR|Reg_Out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \MODULO_FRECUENCIA|C_FR|CNT_int\(1),
	clrn => \Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MODULO_FRECUENCIA|R_FR|Reg_Out\(1));

-- Location: LCCOMB_X5_Y25_N26
\MODULO_VISTAS|Mux3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_VISTAS|Mux3~1_combout\ = (!\SW_Modo[0]~input_o\ & ((\SW_Vista[0]~input_o\ & ((\R_TT_D|Reg_Out\(1)))) # (!\SW_Vista[0]~input_o\ & (\MODULO_FRECUENCIA|R_FR|Reg_Out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW_Vista[0]~input_o\,
	datab => \SW_Modo[0]~input_o\,
	datac => \MODULO_FRECUENCIA|R_FR|Reg_Out\(1),
	datad => \R_TT_D|Reg_Out\(1),
	combout => \MODULO_VISTAS|Mux3~1_combout\);

-- Location: LCCOMB_X3_Y25_N8
\MODULO_VISTAS|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_VISTAS|Mux3~0_combout\ = (\SW_Modo[1]~input_o\ & ((\SW_Modo[0]~input_o\) # (\SW_Color[1]~input_o\ $ (\SW_Color[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW_Color[1]~input_o\,
	datab => \SW_Modo[1]~input_o\,
	datac => \SW_Color[0]~input_o\,
	datad => \SW_Modo[0]~input_o\,
	combout => \MODULO_VISTAS|Mux3~0_combout\);

-- Location: LCCOMB_X6_Y24_N24
\MODULO_VISTAS|Mux3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_VISTAS|Mux3~2_combout\ = (\SW_Color[0]~input_o\ & (!\SW_Color[1]~input_o\ & (\SW_Vista[1]~input_o\ $ (\SW_Vista[0]~input_o\)))) # (!\SW_Color[0]~input_o\ & (\SW_Color[1]~input_o\ & (\SW_Vista[1]~input_o\ $ (\SW_Vista[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW_Color[0]~input_o\,
	datab => \SW_Color[1]~input_o\,
	datac => \SW_Vista[1]~input_o\,
	datad => \SW_Vista[0]~input_o\,
	combout => \MODULO_VISTAS|Mux3~2_combout\);

-- Location: LCCOMB_X6_Y24_N6
\MODULO_VISTAS|Mux3~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_VISTAS|Mux3~3_combout\ = (\SW_Modo[0]~input_o\ & ((\MODULO_VISTAS|Mux3~2_combout\) # ((\MODULO_VISTAS|mux_hex0~0_combout\ & \MODULO_TIEMPOS|c_t\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_VISTAS|mux_hex0~0_combout\,
	datab => \MODULO_VISTAS|Mux3~2_combout\,
	datac => \SW_Modo[0]~input_o\,
	datad => \MODULO_TIEMPOS|c_t\(1),
	combout => \MODULO_VISTAS|Mux3~3_combout\);

-- Location: LCCOMB_X5_Y25_N24
\MODULO_VISTAS|Mux3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_VISTAS|Mux3~4_combout\ = (\MODULO_VISTAS|Mux3~0_combout\) # ((!\SW_Modo[1]~input_o\ & ((\MODULO_VISTAS|Mux3~1_combout\) # (\MODULO_VISTAS|Mux3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_VISTAS|Mux3~1_combout\,
	datab => \MODULO_VISTAS|Mux3~0_combout\,
	datac => \SW_Modo[1]~input_o\,
	datad => \MODULO_VISTAS|Mux3~3_combout\,
	combout => \MODULO_VISTAS|Mux3~4_combout\);

-- Location: FF_X5_Y24_N13
\MODULO_FRECUENCIA|R_FR|Reg_Out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \MODULO_FRECUENCIA|C_FR|CNT_int\(2),
	clrn => \Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MODULO_FRECUENCIA|R_FR|Reg_Out\(2));

-- Location: LCCOMB_X5_Y24_N12
\MODULO_VISTAS|Mux2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_VISTAS|Mux2~1_combout\ = (\MODULO_VISTAS|Mux1~0_combout\ & ((\SW_Vista[0]~input_o\ & (\R_TT_D|Reg_Out\(2))) # (!\SW_Vista[0]~input_o\ & ((\MODULO_FRECUENCIA|R_FR|Reg_Out\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R_TT_D|Reg_Out\(2),
	datab => \MODULO_VISTAS|Mux1~0_combout\,
	datac => \MODULO_FRECUENCIA|R_FR|Reg_Out\(2),
	datad => \SW_Vista[0]~input_o\,
	combout => \MODULO_VISTAS|Mux2~1_combout\);

-- Location: LCCOMB_X5_Y24_N20
\MODULO_VISTAS|Mux2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_VISTAS|Mux2~2_combout\ = (\SW_Modo[1]~input_o\) # ((\SW_Modo[0]~input_o\ & (\SW_Vista[1]~input_o\ $ (\SW_Vista[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW_Vista[1]~input_o\,
	datab => \SW_Modo[0]~input_o\,
	datac => \SW_Vista[0]~input_o\,
	datad => \SW_Modo[1]~input_o\,
	combout => \MODULO_VISTAS|Mux2~2_combout\);

-- Location: LCCOMB_X6_Y24_N4
\MODULO_VISTAS|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_VISTAS|Mux2~0_combout\ = (\SW_Modo[0]~input_o\ & ((\SW_Modo[1]~input_o\) # ((\MODULO_VISTAS|mux_hex0~0_combout\ & \MODULO_TIEMPOS|c_t\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_VISTAS|mux_hex0~0_combout\,
	datab => \SW_Modo[0]~input_o\,
	datac => \SW_Modo[1]~input_o\,
	datad => \MODULO_TIEMPOS|c_t\(2),
	combout => \MODULO_VISTAS|Mux2~0_combout\);

-- Location: LCCOMB_X5_Y24_N28
\MODULO_VISTAS|Mux2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_VISTAS|Mux2~3_combout\ = (\MODULO_VISTAS|Mux2~1_combout\) # ((\MODULO_VISTAS|Mux2~0_combout\) # ((\MODULO_VISTAS|Mux2~2_combout\ & \MODULO_ENRUTADOR|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_VISTAS|Mux2~1_combout\,
	datab => \MODULO_VISTAS|Mux2~2_combout\,
	datac => \MODULO_ENRUTADOR|Equal1~0_combout\,
	datad => \MODULO_VISTAS|Mux2~0_combout\,
	combout => \MODULO_VISTAS|Mux2~3_combout\);

-- Location: LCCOMB_X32_Y26_N12
\DECO_3|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DECO_3|Mux6~0_combout\ = (\MODULO_VISTAS|Mux1~4_combout\ & ((\MODULO_VISTAS|Mux2~3_combout\ & (\MODULO_VISTAS|Mux4~6_combout\)) # (!\MODULO_VISTAS|Mux2~3_combout\ & ((\MODULO_VISTAS|Mux3~4_combout\))))) # (!\MODULO_VISTAS|Mux1~4_combout\ & 
-- (!\MODULO_VISTAS|Mux3~4_combout\ & (\MODULO_VISTAS|Mux4~6_combout\ $ (\MODULO_VISTAS|Mux2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_VISTAS|Mux1~4_combout\,
	datab => \MODULO_VISTAS|Mux4~6_combout\,
	datac => \MODULO_VISTAS|Mux3~4_combout\,
	datad => \MODULO_VISTAS|Mux2~3_combout\,
	combout => \DECO_3|Mux6~0_combout\);

-- Location: LCCOMB_X32_Y26_N10
\DECO_3|Mux6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DECO_3|Mux6~1_combout\ = (!\MODULO_VISTAS|Mux1~4_combout\ & !\MODULO_VISTAS|Mux2~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MODULO_VISTAS|Mux1~4_combout\,
	datad => \MODULO_VISTAS|Mux2~3_combout\,
	combout => \DECO_3|Mux6~1_combout\);

-- Location: LCCOMB_X32_Y26_N0
\DECO_3|Mux6~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DECO_3|Mux6~2_combout\ = (\MODULO_VISTAS|Mux5~0_combout\ & (((!\DECO_3|Mux6~1_combout\) # (!\MODULO_VISTAS|Mux3~4_combout\)))) # (!\MODULO_VISTAS|Mux5~0_combout\ & (\DECO_3|Mux6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DECO_3|Mux6~0_combout\,
	datab => \MODULO_VISTAS|Mux5~0_combout\,
	datac => \MODULO_VISTAS|Mux3~4_combout\,
	datad => \DECO_3|Mux6~1_combout\,
	combout => \DECO_3|Mux6~2_combout\);

-- Location: LCCOMB_X32_Y26_N14
\DECO_3|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DECO_3|Mux5~0_combout\ = (\MODULO_VISTAS|Mux5~0_combout\ & (((\MODULO_VISTAS|Mux3~4_combout\) # (!\MODULO_VISTAS|Mux4~6_combout\)) # (!\DECO_3|Mux6~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DECO_3|Mux6~1_combout\,
	datab => \MODULO_VISTAS|Mux4~6_combout\,
	datac => \MODULO_VISTAS|Mux3~4_combout\,
	datad => \MODULO_VISTAS|Mux5~0_combout\,
	combout => \DECO_3|Mux5~0_combout\);

-- Location: LCCOMB_X32_Y26_N28
\DECO_3|Mux5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DECO_3|Mux5~1_combout\ = (\MODULO_VISTAS|Mux4~6_combout\ & (\MODULO_VISTAS|Mux2~3_combout\ & ((\MODULO_VISTAS|Mux1~4_combout\) # (!\MODULO_VISTAS|Mux3~4_combout\)))) # (!\MODULO_VISTAS|Mux4~6_combout\ & (\MODULO_VISTAS|Mux3~4_combout\ & 
-- (\MODULO_VISTAS|Mux1~4_combout\ $ (\MODULO_VISTAS|Mux2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_VISTAS|Mux1~4_combout\,
	datab => \MODULO_VISTAS|Mux4~6_combout\,
	datac => \MODULO_VISTAS|Mux3~4_combout\,
	datad => \MODULO_VISTAS|Mux2~3_combout\,
	combout => \DECO_3|Mux5~1_combout\);

-- Location: LCCOMB_X32_Y26_N2
\DECO_3|Mux5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DECO_3|Mux5~2_combout\ = (\DECO_3|Mux5~0_combout\) # ((!\MODULO_VISTAS|Mux5~0_combout\ & \DECO_3|Mux5~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MODULO_VISTAS|Mux5~0_combout\,
	datac => \DECO_3|Mux5~0_combout\,
	datad => \DECO_3|Mux5~1_combout\,
	combout => \DECO_3|Mux5~2_combout\);

-- Location: LCCOMB_X32_Y26_N24
\DECO_3|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DECO_3|Mux4~0_combout\ = (\MODULO_VISTAS|Mux4~6_combout\ & (\MODULO_VISTAS|Mux1~4_combout\ & ((\MODULO_VISTAS|Mux2~3_combout\)))) # (!\MODULO_VISTAS|Mux4~6_combout\ & (\MODULO_VISTAS|Mux3~4_combout\ & ((\MODULO_VISTAS|Mux1~4_combout\) # 
-- (!\MODULO_VISTAS|Mux2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_VISTAS|Mux1~4_combout\,
	datab => \MODULO_VISTAS|Mux4~6_combout\,
	datac => \MODULO_VISTAS|Mux3~4_combout\,
	datad => \MODULO_VISTAS|Mux2~3_combout\,
	combout => \DECO_3|Mux4~0_combout\);

-- Location: LCCOMB_X32_Y26_N26
\DECO_3|Mux4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DECO_3|Mux4~1_combout\ = (\DECO_3|Mux5~0_combout\) # ((!\MODULO_VISTAS|Mux5~0_combout\ & \DECO_3|Mux4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MODULO_VISTAS|Mux5~0_combout\,
	datac => \DECO_3|Mux5~0_combout\,
	datad => \DECO_3|Mux4~0_combout\,
	combout => \DECO_3|Mux4~1_combout\);

-- Location: LCCOMB_X32_Y26_N4
\DECO_3|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DECO_3|Mux3~0_combout\ = (\MODULO_VISTAS|Mux4~6_combout\ & (!\MODULO_VISTAS|Mux1~4_combout\ & (\MODULO_VISTAS|Mux3~4_combout\ $ (!\MODULO_VISTAS|Mux2~3_combout\)))) # (!\MODULO_VISTAS|Mux4~6_combout\ & ((\MODULO_VISTAS|Mux3~4_combout\ & 
-- (\MODULO_VISTAS|Mux1~4_combout\)) # (!\MODULO_VISTAS|Mux3~4_combout\ & ((\MODULO_VISTAS|Mux2~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_VISTAS|Mux1~4_combout\,
	datab => \MODULO_VISTAS|Mux4~6_combout\,
	datac => \MODULO_VISTAS|Mux3~4_combout\,
	datad => \MODULO_VISTAS|Mux2~3_combout\,
	combout => \DECO_3|Mux3~0_combout\);

-- Location: LCCOMB_X32_Y26_N6
\DECO_3|Mux3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DECO_3|Mux3~1_combout\ = (!\MODULO_VISTAS|Mux1~4_combout\ & (!\MODULO_VISTAS|Mux2~3_combout\ & ((\MODULO_VISTAS|Mux4~6_combout\) # (\MODULO_VISTAS|Mux3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_VISTAS|Mux1~4_combout\,
	datab => \MODULO_VISTAS|Mux4~6_combout\,
	datac => \MODULO_VISTAS|Mux3~4_combout\,
	datad => \MODULO_VISTAS|Mux2~3_combout\,
	combout => \DECO_3|Mux3~1_combout\);

-- Location: LCCOMB_X32_Y26_N8
\DECO_3|Mux3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DECO_3|Mux3~2_combout\ = (\MODULO_VISTAS|Mux5~0_combout\ & ((!\DECO_3|Mux3~1_combout\))) # (!\MODULO_VISTAS|Mux5~0_combout\ & (\DECO_3|Mux3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MODULO_VISTAS|Mux5~0_combout\,
	datac => \DECO_3|Mux3~0_combout\,
	datad => \DECO_3|Mux3~1_combout\,
	combout => \DECO_3|Mux3~2_combout\);

-- Location: LCCOMB_X32_Y26_N30
\DECO_3|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DECO_3|Mux2~0_combout\ = (\MODULO_VISTAS|Mux3~4_combout\ & (!\MODULO_VISTAS|Mux1~4_combout\ & (\MODULO_VISTAS|Mux4~6_combout\))) # (!\MODULO_VISTAS|Mux3~4_combout\ & ((\MODULO_VISTAS|Mux2~3_combout\ & (!\MODULO_VISTAS|Mux1~4_combout\)) # 
-- (!\MODULO_VISTAS|Mux2~3_combout\ & ((\MODULO_VISTAS|Mux4~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_VISTAS|Mux1~4_combout\,
	datab => \MODULO_VISTAS|Mux4~6_combout\,
	datac => \MODULO_VISTAS|Mux3~4_combout\,
	datad => \MODULO_VISTAS|Mux2~3_combout\,
	combout => \DECO_3|Mux2~0_combout\);

-- Location: LCCOMB_X31_Y26_N12
\DECO_3|Mux2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DECO_3|Mux2~1_combout\ = (\MODULO_VISTAS|Mux5~0_combout\ & ((!\DECO_3|Mux3~1_combout\))) # (!\MODULO_VISTAS|Mux5~0_combout\ & (\DECO_3|Mux2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DECO_3|Mux2~0_combout\,
	datac => \MODULO_VISTAS|Mux5~0_combout\,
	datad => \DECO_3|Mux3~1_combout\,
	combout => \DECO_3|Mux2~1_combout\);

-- Location: LCCOMB_X32_Y26_N16
\DECO_3|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DECO_3|Mux1~0_combout\ = (\MODULO_VISTAS|Mux4~6_combout\ & (!\MODULO_VISTAS|Mux1~4_combout\ & ((\MODULO_VISTAS|Mux3~4_combout\) # (!\MODULO_VISTAS|Mux2~3_combout\)))) # (!\MODULO_VISTAS|Mux4~6_combout\ & (((\MODULO_VISTAS|Mux3~4_combout\ & 
-- !\MODULO_VISTAS|Mux2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_VISTAS|Mux1~4_combout\,
	datab => \MODULO_VISTAS|Mux4~6_combout\,
	datac => \MODULO_VISTAS|Mux3~4_combout\,
	datad => \MODULO_VISTAS|Mux2~3_combout\,
	combout => \DECO_3|Mux1~0_combout\);

-- Location: LCCOMB_X32_Y26_N22
\DECO_3|Mux1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DECO_3|Mux1~1_combout\ = (\MODULO_VISTAS|Mux5~0_combout\ & (((!\MODULO_VISTAS|Mux3~4_combout\)) # (!\DECO_3|Mux6~1_combout\))) # (!\MODULO_VISTAS|Mux5~0_combout\ & (((\DECO_3|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DECO_3|Mux6~1_combout\,
	datab => \MODULO_VISTAS|Mux5~0_combout\,
	datac => \MODULO_VISTAS|Mux3~4_combout\,
	datad => \DECO_3|Mux1~0_combout\,
	combout => \DECO_3|Mux1~1_combout\);

-- Location: LCCOMB_X32_Y26_N20
\DECO_3|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DECO_3|Mux0~0_combout\ = (\MODULO_VISTAS|Mux1~4_combout\) # (\MODULO_VISTAS|Mux2~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MODULO_VISTAS|Mux1~4_combout\,
	datad => \MODULO_VISTAS|Mux2~3_combout\,
	combout => \DECO_3|Mux0~0_combout\);

-- Location: LCCOMB_X32_Y26_N18
\DECO_3|Mux0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DECO_3|Mux0~1_combout\ = (\MODULO_VISTAS|Mux3~4_combout\ & ((\MODULO_VISTAS|Mux5~0_combout\ & ((\MODULO_VISTAS|Mux4~6_combout\) # (\DECO_3|Mux0~0_combout\))) # (!\MODULO_VISTAS|Mux5~0_combout\ & (\MODULO_VISTAS|Mux4~6_combout\ & 
-- \DECO_3|Mux0~0_combout\)))) # (!\MODULO_VISTAS|Mux3~4_combout\ & (\MODULO_VISTAS|Mux5~0_combout\ $ (((!\DECO_3|Mux0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_VISTAS|Mux3~4_combout\,
	datab => \MODULO_VISTAS|Mux5~0_combout\,
	datac => \MODULO_VISTAS|Mux4~6_combout\,
	datad => \DECO_3|Mux0~0_combout\,
	combout => \DECO_3|Mux0~1_combout\);

-- Location: LCCOMB_X8_Y25_N30
\MODULO_VISTAS|Mux23~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_VISTAS|Mux23~0_combout\ = (\MODULO_VISTAS|Mux15~1_combout\) # ((\SW_Vista[0]~input_o\ $ (!\SW_Vista[1]~input_o\)) # (!\MODULO_VISTAS|Mux10~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_VISTAS|Mux15~1_combout\,
	datab => \SW_Vista[0]~input_o\,
	datac => \SW_Vista[1]~input_o\,
	datad => \MODULO_VISTAS|Mux10~2_combout\,
	combout => \MODULO_VISTAS|Mux23~0_combout\);

-- Location: LCCOMB_X4_Y24_N8
\MODULO_VISTAS|Mux22~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_VISTAS|Mux22~0_combout\ = (((\MODULO_VISTAS|Mux15~1_combout\) # (!\MODULO_VISTAS|Equal6~0_combout\)) # (!\MODULO_ENRUTADOR|Equal1~0_combout\)) # (!\MODULO_VISTAS|Mux10~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_VISTAS|Mux10~2_combout\,
	datab => \MODULO_ENRUTADOR|Equal1~0_combout\,
	datac => \MODULO_VISTAS|Equal6~0_combout\,
	datad => \MODULO_VISTAS|Mux15~1_combout\,
	combout => \MODULO_VISTAS|Mux22~0_combout\);

-- Location: LCCOMB_X4_Y24_N24
\MODULO_VISTAS|Mux21~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_VISTAS|Mux21~6_combout\ = (\SW_Color[0]~input_o\) # (((!\SW_Color[1]~input_o\) # (!\MODULO_VISTAS|Equal6~0_combout\)) # (!\MODULO_VISTAS|Mux10~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW_Color[0]~input_o\,
	datab => \MODULO_VISTAS|Mux10~2_combout\,
	datac => \MODULO_VISTAS|Equal6~0_combout\,
	datad => \SW_Color[1]~input_o\,
	combout => \MODULO_VISTAS|Mux21~6_combout\);

-- Location: LCCOMB_X4_Y24_N18
\MODULO_VISTAS|Mux20~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_VISTAS|Mux20~6_combout\ = (((\SW_Modo[1]~input_o\) # (!\SW_Modo[0]~input_o\)) # (!\MODULO_VISTAS|Equal6~0_combout\)) # (!\MODULO_LEDS|LEDG[2]~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_LEDS|LEDG[2]~26_combout\,
	datab => \MODULO_VISTAS|Equal6~0_combout\,
	datac => \SW_Modo[0]~input_o\,
	datad => \SW_Modo[1]~input_o\,
	combout => \MODULO_VISTAS|Mux20~6_combout\);

-- Location: LCCOMB_X5_Y23_N24
\MODULO_FRECUENCIA|pulse_frec~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_FRECUENCIA|pulse_frec~0_combout\ = (\Reset~input_o\ & (\MODULO_FRECUENCIA|DIV_FREC|out1~q\ & ((!\SW_Modo[0]~input_o\) # (!\SW_Modo[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW_Modo[1]~input_o\,
	datab => \Reset~input_o\,
	datac => \MODULO_FRECUENCIA|DIV_FREC|out1~q\,
	datad => \SW_Modo[0]~input_o\,
	combout => \MODULO_FRECUENCIA|pulse_frec~0_combout\);

-- Location: LCCOMB_X3_Y24_N2
\MODULO_LEDS|LEDG[1]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_LEDS|LEDG[1]~27_combout\ = (((\SW_Modo[0]~input_o\) # (\SW_Tamano~input_o\)) # (!\SW_Modo[1]~input_o\)) # (!\MODULO_LEDS|LEDG[2]~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODULO_LEDS|LEDG[2]~26_combout\,
	datab => \SW_Modo[1]~input_o\,
	datac => \SW_Modo[0]~input_o\,
	datad => \SW_Tamano~input_o\,
	combout => \MODULO_LEDS|LEDG[1]~27_combout\);

-- Location: LCCOMB_X4_Y24_N26
\MODULO_LEDS|LEDG[2]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_LEDS|LEDG[2]~28_combout\ = (\SW_Tamano~input_o\ & (\SW_Modo[1]~input_o\ & (!\SW_Modo[0]~input_o\ & \MODULO_LEDS|LEDG[2]~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW_Tamano~input_o\,
	datab => \SW_Modo[1]~input_o\,
	datac => \SW_Modo[0]~input_o\,
	datad => \MODULO_LEDS|LEDG[2]~26_combout\,
	combout => \MODULO_LEDS|LEDG[2]~28_combout\);

-- Location: LCCOMB_X3_Y25_N28
\MODULO_VISTAS|Mux8~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_VISTAS|Mux8~2_combout\ = (\SW_Modo[1]~input_o\ & !\SW_Modo[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW_Modo[1]~input_o\,
	datad => \SW_Modo[0]~input_o\,
	combout => \MODULO_VISTAS|Mux8~2_combout\);

-- Location: LCCOMB_X3_Y25_N10
\MODULO_LEDS|LEDG[3]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_LEDS|LEDG[3]~29_combout\ = (!\SW_Color[0]~input_o\ & (!\SW_Tamano~input_o\ & (\SW_Color[1]~input_o\ & \MODULO_VISTAS|Mux8~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW_Color[0]~input_o\,
	datab => \SW_Tamano~input_o\,
	datac => \SW_Color[1]~input_o\,
	datad => \MODULO_VISTAS|Mux8~2_combout\,
	combout => \MODULO_LEDS|LEDG[3]~29_combout\);

-- Location: LCCOMB_X3_Y25_N12
\MODULO_LEDS|LEDG[4]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_LEDS|LEDG[4]~30_combout\ = (!\SW_Color[0]~input_o\ & (\SW_Tamano~input_o\ & (\SW_Color[1]~input_o\ & \MODULO_VISTAS|Mux8~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW_Color[0]~input_o\,
	datab => \SW_Tamano~input_o\,
	datac => \SW_Color[1]~input_o\,
	datad => \MODULO_VISTAS|Mux8~2_combout\,
	combout => \MODULO_LEDS|LEDG[4]~30_combout\);

-- Location: LCCOMB_X4_Y24_N16
\MODULO_LEDS|LEDG[5]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_LEDS|LEDG[5]~31_combout\ = (!\SW_Tamano~input_o\ & (\SW_Modo[1]~input_o\ & (!\SW_Modo[0]~input_o\ & \MODULO_ENRUTADOR|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW_Tamano~input_o\,
	datab => \SW_Modo[1]~input_o\,
	datac => \SW_Modo[0]~input_o\,
	datad => \MODULO_ENRUTADOR|Equal1~0_combout\,
	combout => \MODULO_LEDS|LEDG[5]~31_combout\);

-- Location: LCCOMB_X4_Y24_N10
\MODULO_LEDS|LEDG[6]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MODULO_LEDS|LEDG[6]~32_combout\ = (\SW_Tamano~input_o\ & (\SW_Modo[1]~input_o\ & (!\SW_Modo[0]~input_o\ & \MODULO_ENRUTADOR|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW_Tamano~input_o\,
	datab => \SW_Modo[1]~input_o\,
	datac => \SW_Modo[0]~input_o\,
	datad => \MODULO_ENRUTADOR|Equal1~0_combout\,
	combout => \MODULO_LEDS|LEDG[6]~32_combout\);

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX3(0) <= \HEX3[0]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;

ww_DP0 <= \DP0~output_o\;

ww_DP1 <= \DP1~output_o\;

ww_DP2 <= \DP2~output_o\;

ww_DP3 <= \DP3~output_o\;

ww_LEDG(0) <= \LEDG[0]~output_o\;

ww_LEDG(1) <= \LEDG[1]~output_o\;

ww_LEDG(2) <= \LEDG[2]~output_o\;

ww_LEDG(3) <= \LEDG[3]~output_o\;

ww_LEDG(4) <= \LEDG[4]~output_o\;

ww_LEDG(5) <= \LEDG[5]~output_o\;

ww_LEDG(6) <= \LEDG[6]~output_o\;

ww_LEDG(7) <= \LEDG[7]~output_o\;

ww_LEDG(8) <= \LEDG[8]~output_o\;

ww_LEDG(9) <= \LEDG[9]~output_o\;
END structure;


