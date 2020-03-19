-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "10/06/2019 14:09:53"

-- 
-- Device: Altera EP4CE6E22C8 Package TQFP144
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
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


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

ENTITY 	graycodebcd IS
    PORT (
	clk : IN std_logic;
	graycode : IN std_logic_vector(3 DOWNTO 0);
	bcd : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END graycodebcd;

-- Design Ports Information
-- bcd[0]	=>  Location: PIN_33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bcd[1]	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bcd[2]	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bcd[3]	=>  Location: PIN_34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bcd[4]	=>  Location: PIN_42,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bcd[5]	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bcd[6]	=>  Location: PIN_39,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- graycode[1]	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- graycode[3]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- graycode[0]	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- graycode[2]	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF graycodebcd IS
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
SIGNAL ww_graycode : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_bcd : std_logic_vector(6 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \bcd[0]~output_o\ : std_logic;
SIGNAL \bcd[1]~output_o\ : std_logic;
SIGNAL \bcd[2]~output_o\ : std_logic;
SIGNAL \bcd[3]~output_o\ : std_logic;
SIGNAL \bcd[4]~output_o\ : std_logic;
SIGNAL \bcd[5]~output_o\ : std_logic;
SIGNAL \bcd[6]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \graycode[1]~input_o\ : std_logic;
SIGNAL \graycode[2]~input_o\ : std_logic;
SIGNAL \graycode[3]~input_o\ : std_logic;
SIGNAL \graycode[0]~input_o\ : std_logic;
SIGNAL \bcd~0_combout\ : std_logic;
SIGNAL \bcd[0]~1_combout\ : std_logic;
SIGNAL \bcd[0]~reg0_q\ : std_logic;
SIGNAL \bcd~2_combout\ : std_logic;
SIGNAL \bcd[1]~reg0_q\ : std_logic;
SIGNAL \bcd~3_combout\ : std_logic;
SIGNAL \bcd[2]~reg0_q\ : std_logic;
SIGNAL \bcd~4_combout\ : std_logic;
SIGNAL \bcd[3]~reg0_q\ : std_logic;
SIGNAL \bcd~5_combout\ : std_logic;
SIGNAL \bcd[4]~reg0_q\ : std_logic;
SIGNAL \bcd~6_combout\ : std_logic;
SIGNAL \bcd[5]~reg0_q\ : std_logic;
SIGNAL \bcd~7_combout\ : std_logic;
SIGNAL \bcd[6]~reg0_q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_graycode <= graycode;
bcd <= ww_bcd;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y6_N23
\bcd[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd[0]~reg0_q\,
	devoe => ww_devoe,
	o => \bcd[0]~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\bcd[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd[1]~reg0_q\,
	devoe => ww_devoe,
	o => \bcd[1]~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\bcd[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd[2]~reg0_q\,
	devoe => ww_devoe,
	o => \bcd[2]~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\bcd[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd[3]~reg0_q\,
	devoe => ww_devoe,
	o => \bcd[3]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\bcd[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd[4]~reg0_q\,
	devoe => ww_devoe,
	o => \bcd[4]~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\bcd[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd[5]~reg0_q\,
	devoe => ww_devoe,
	o => \bcd[5]~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\bcd[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd[6]~reg0_q\,
	devoe => ww_devoe,
	o => \bcd[6]~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
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

-- Location: IOIBUF_X0_Y7_N1
\graycode[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_graycode(1),
	o => \graycode[1]~input_o\);

-- Location: IOIBUF_X0_Y8_N15
\graycode[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_graycode(2),
	o => \graycode[2]~input_o\);

-- Location: IOIBUF_X7_Y0_N1
\graycode[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_graycode(3),
	o => \graycode[3]~input_o\);

-- Location: IOIBUF_X13_Y0_N15
\graycode[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_graycode(0),
	o => \graycode[0]~input_o\);

-- Location: LCCOMB_X6_Y4_N0
\bcd~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd~0_combout\ = (\graycode[1]~input_o\) # ((\graycode[3]~input_o\) # ((\graycode[2]~input_o\ & \graycode[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \graycode[1]~input_o\,
	datab => \graycode[2]~input_o\,
	datac => \graycode[3]~input_o\,
	datad => \graycode[0]~input_o\,
	combout => \bcd~0_combout\);

-- Location: LCCOMB_X6_Y4_N14
\bcd[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd[0]~1_combout\ = ((!\graycode[1]~input_o\ & \graycode[2]~input_o\)) # (!\graycode[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \graycode[1]~input_o\,
	datac => \graycode[3]~input_o\,
	datad => \graycode[2]~input_o\,
	combout => \bcd[0]~1_combout\);

-- Location: FF_X6_Y4_N1
\bcd[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bcd~0_combout\,
	ena => \bcd[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bcd[0]~reg0_q\);

-- Location: LCCOMB_X6_Y4_N2
\bcd~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd~2_combout\ = (\graycode[3]~input_o\) # (\graycode[2]~input_o\ $ (((!\graycode[1]~input_o\ & !\graycode[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \graycode[1]~input_o\,
	datab => \graycode[2]~input_o\,
	datac => \graycode[3]~input_o\,
	datad => \graycode[0]~input_o\,
	combout => \bcd~2_combout\);

-- Location: FF_X6_Y4_N3
\bcd[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bcd~2_combout\,
	ena => \bcd[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bcd[1]~reg0_q\);

-- Location: LCCOMB_X6_Y4_N4
\bcd~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd~3_combout\ = (\graycode[3]~input_o\ & (((!\graycode[0]~input_o\)))) # (!\graycode[3]~input_o\ & ((\graycode[1]~input_o\ & (!\graycode[2]~input_o\ & \graycode[0]~input_o\)) # (!\graycode[1]~input_o\ & (\graycode[2]~input_o\ $ 
-- (!\graycode[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \graycode[1]~input_o\,
	datab => \graycode[2]~input_o\,
	datac => \graycode[3]~input_o\,
	datad => \graycode[0]~input_o\,
	combout => \bcd~3_combout\);

-- Location: FF_X6_Y4_N5
\bcd[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bcd~3_combout\,
	ena => \bcd[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bcd[2]~reg0_q\);

-- Location: LCCOMB_X6_Y4_N6
\bcd~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd~4_combout\ = (\graycode[2]~input_o\ & ((\graycode[3]~input_o\ $ (\graycode[0]~input_o\)))) # (!\graycode[2]~input_o\ & (((\graycode[1]~input_o\ & !\graycode[3]~input_o\)) # (!\graycode[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \graycode[1]~input_o\,
	datab => \graycode[2]~input_o\,
	datac => \graycode[3]~input_o\,
	datad => \graycode[0]~input_o\,
	combout => \bcd~4_combout\);

-- Location: FF_X6_Y4_N7
\bcd[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bcd~4_combout\,
	ena => \bcd[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bcd[3]~reg0_q\);

-- Location: LCCOMB_X6_Y4_N24
\bcd~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd~5_combout\ = ((\graycode[2]~input_o\) # ((\graycode[3]~input_o\) # (!\graycode[0]~input_o\))) # (!\graycode[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \graycode[1]~input_o\,
	datab => \graycode[2]~input_o\,
	datac => \graycode[3]~input_o\,
	datad => \graycode[0]~input_o\,
	combout => \bcd~5_combout\);

-- Location: FF_X6_Y4_N25
\bcd[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bcd~5_combout\,
	ena => \bcd[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bcd[4]~reg0_q\);

-- Location: LCCOMB_X6_Y4_N18
\bcd~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd~6_combout\ = ((\graycode[3]~input_o\) # (!\graycode[0]~input_o\)) # (!\graycode[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \graycode[2]~input_o\,
	datac => \graycode[3]~input_o\,
	datad => \graycode[0]~input_o\,
	combout => \bcd~6_combout\);

-- Location: FF_X6_Y4_N19
\bcd[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bcd~6_combout\,
	ena => \bcd[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bcd[5]~reg0_q\);

-- Location: LCCOMB_X6_Y4_N28
\bcd~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd~7_combout\ = (\graycode[3]~input_o\) # ((\graycode[1]~input_o\ & ((\graycode[0]~input_o\) # (!\graycode[2]~input_o\))) # (!\graycode[1]~input_o\ & ((\graycode[2]~input_o\) # (!\graycode[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \graycode[1]~input_o\,
	datab => \graycode[2]~input_o\,
	datac => \graycode[3]~input_o\,
	datad => \graycode[0]~input_o\,
	combout => \bcd~7_combout\);

-- Location: FF_X6_Y4_N29
\bcd[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bcd~7_combout\,
	ena => \bcd[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bcd[6]~reg0_q\);

ww_bcd(0) <= \bcd[0]~output_o\;

ww_bcd(1) <= \bcd[1]~output_o\;

ww_bcd(2) <= \bcd[2]~output_o\;

ww_bcd(3) <= \bcd[3]~output_o\;

ww_bcd(4) <= \bcd[4]~output_o\;

ww_bcd(5) <= \bcd[5]~output_o\;

ww_bcd(6) <= \bcd[6]~output_o\;
END structure;


