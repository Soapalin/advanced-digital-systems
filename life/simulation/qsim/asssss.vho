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

-- DATE "09/17/2019 21:44:00"

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

ENTITY 	asssss IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	switch : IN std_logic;
	output : OUT std_logic_vector(2 DOWNTO 0);
	output1 : OUT std_logic
	);
END asssss;

-- Design Ports Information
-- output[0]	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[1]	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[2]	=>  Location: PIN_85,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output1	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch	=>  Location: PIN_89,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF asssss IS
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
SIGNAL ww_rst : std_logic;
SIGNAL ww_switch : std_logic;
SIGNAL ww_output : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_output1 : std_logic;
SIGNAL \clktemp1~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \output[0]~output_o\ : std_logic;
SIGNAL \output[1]~output_o\ : std_logic;
SIGNAL \output[2]~output_o\ : std_logic;
SIGNAL \output1~output_o\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \switch~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \counter1~9_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \counter1~8_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \counter1~10_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \counter1~11_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \counter1~12_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \counter1~13_combout\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \counter1~14_combout\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \counter1~15_combout\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \counter1~16_combout\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \Add0~51\ : std_logic;
SIGNAL \Add0~52_combout\ : std_logic;
SIGNAL \counter1~17_combout\ : std_logic;
SIGNAL \Add0~53\ : std_logic;
SIGNAL \Add0~54_combout\ : std_logic;
SIGNAL \Add0~55\ : std_logic;
SIGNAL \Add0~56_combout\ : std_logic;
SIGNAL \Add0~57\ : std_logic;
SIGNAL \Add0~58_combout\ : std_logic;
SIGNAL \Add0~59\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \Add0~61\ : std_logic;
SIGNAL \Add0~62_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \clktemp1~0_combout\ : std_logic;
SIGNAL \clktemp1~feeder_combout\ : std_logic;
SIGNAL \clktemp1~q\ : std_logic;
SIGNAL \clktemp1~clkctrl_outclk\ : std_logic;
SIGNAL \startup~0_combout\ : std_logic;
SIGNAL \startup~q\ : std_logic;
SIGNAL \count_out[2]~14_combout\ : std_logic;
SIGNAL \count_out[0]~1_combout\ : std_logic;
SIGNAL \firststatecondition~0_combout\ : std_logic;
SIGNAL \firststatecondition~q\ : std_logic;
SIGNAL \count_out[0]~3_combout\ : std_logic;
SIGNAL \count_out[0]~0_combout\ : std_logic;
SIGNAL \count_out[0]~_emulated_q\ : std_logic;
SIGNAL \count_out[0]~2_combout\ : std_logic;
SIGNAL \count_out[1]~5_combout\ : std_logic;
SIGNAL \count_out[1]~_emulated_q\ : std_logic;
SIGNAL \count_out[1]~4_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \count_out[2]~7_combout\ : std_logic;
SIGNAL \count_out[2]~_emulated_q\ : std_logic;
SIGNAL \count_out[2]~6_combout\ : std_logic;
SIGNAL \process_2~0_combout\ : std_logic;
SIGNAL \count_out1~0_combout\ : std_logic;
SIGNAL \count_out1~q\ : std_logic;
SIGNAL counter1 : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_count_out[0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_count_out1~0_combout\ : std_logic;
SIGNAL \ALT_INV_count_out[2]~6_combout\ : std_logic;
SIGNAL \ALT_INV_count_out[1]~4_combout\ : std_logic;
SIGNAL \ALT_INV_count_out[0]~2_combout\ : std_logic;
SIGNAL \ALT_INV_switch~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_switch <= switch;
output <= ww_output;
output1 <= ww_output1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clktemp1~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clktemp1~q\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_count_out[0]~0_combout\ <= NOT \count_out[0]~0_combout\;
\ALT_INV_count_out1~0_combout\ <= NOT \count_out1~0_combout\;
\ALT_INV_count_out[2]~6_combout\ <= NOT \count_out[2]~6_combout\;
\ALT_INV_count_out[1]~4_combout\ <= NOT \count_out[1]~4_combout\;
\ALT_INV_count_out[0]~2_combout\ <= NOT \count_out[0]~2_combout\;
\ALT_INV_switch~input_o\ <= NOT \switch~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X34_Y10_N9
\output[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_count_out[0]~2_combout\,
	devoe => ww_devoe,
	o => \output[0]~output_o\);

-- Location: IOOBUF_X34_Y9_N2
\output[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_count_out[1]~4_combout\,
	devoe => ww_devoe,
	o => \output[1]~output_o\);

-- Location: IOOBUF_X34_Y9_N9
\output[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_count_out[2]~6_combout\,
	devoe => ww_devoe,
	o => \output[2]~output_o\);

-- Location: IOOBUF_X34_Y9_N16
\output1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \count_out1~q\,
	devoe => ww_devoe,
	o => \output1~output_o\);

-- Location: IOIBUF_X0_Y11_N22
\rst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: IOIBUF_X34_Y12_N15
\switch~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch,
	o => \switch~input_o\);

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

-- Location: LCCOMB_X16_Y2_N0
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = counter1(0) $ (VCC)
-- \Add0~1\ = CARRY(counter1(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter1(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: FF_X16_Y2_N1
\counter1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter1(0));

-- Location: LCCOMB_X16_Y2_N2
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (counter1(1) & (!\Add0~1\)) # (!counter1(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!counter1(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter1(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: FF_X16_Y2_N3
\counter1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter1(1));

-- Location: LCCOMB_X16_Y2_N4
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (counter1(2) & (\Add0~3\ $ (GND))) # (!counter1(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((counter1(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter1(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: FF_X16_Y2_N5
\counter1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter1(2));

-- Location: LCCOMB_X16_Y2_N6
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (counter1(3) & (!\Add0~5\)) # (!counter1(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!counter1(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter1(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: FF_X16_Y2_N7
\counter1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter1(3));

-- Location: LCCOMB_X16_Y2_N8
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (counter1(4) & (\Add0~7\ $ (GND))) # (!counter1(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((counter1(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter1(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: FF_X16_Y2_N9
\counter1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter1(4));

-- Location: LCCOMB_X16_Y2_N10
\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (counter1(5) & (!\Add0~9\)) # (!counter1(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!counter1(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter1(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: FF_X16_Y2_N11
\counter1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter1(5));

-- Location: LCCOMB_X16_Y2_N12
\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (counter1(6) & (\Add0~11\ $ (GND))) # (!counter1(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((counter1(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter1(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X17_Y2_N22
\counter1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter1~9_combout\ = (\Add0~12_combout\ & ((!\Equal0~4_combout\) # (!\Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~12_combout\,
	datac => \Equal0~9_combout\,
	datad => \Equal0~4_combout\,
	combout => \counter1~9_combout\);

-- Location: FF_X17_Y2_N23
\counter1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter1(6));

-- Location: LCCOMB_X16_Y2_N14
\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (counter1(7) & (!\Add0~13\)) # (!counter1(7) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!counter1(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter1(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X17_Y2_N10
\counter1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter1~8_combout\ = (\Add0~14_combout\ & ((!\Equal0~9_combout\) # (!\Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~4_combout\,
	datac => \Equal0~9_combout\,
	datad => \Add0~14_combout\,
	combout => \counter1~8_combout\);

-- Location: FF_X16_Y2_N29
\counter1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter1~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter1(7));

-- Location: LCCOMB_X16_Y2_N16
\Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (counter1(8) & (\Add0~15\ $ (GND))) # (!counter1(8) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((counter1(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter1(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: FF_X16_Y2_N17
\counter1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter1(8));

-- Location: LCCOMB_X16_Y2_N18
\Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (counter1(9) & (!\Add0~17\)) # (!counter1(9) & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!counter1(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter1(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: FF_X16_Y2_N19
\counter1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter1(9));

-- Location: LCCOMB_X16_Y2_N20
\Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (counter1(10) & (\Add0~19\ $ (GND))) # (!counter1(10) & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((counter1(10) & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter1(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: FF_X16_Y2_N21
\counter1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter1(10));

-- Location: LCCOMB_X16_Y2_N22
\Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (counter1(11) & (!\Add0~21\)) # (!counter1(11) & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!counter1(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter1(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCCOMB_X17_Y2_N30
\counter1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter1~10_combout\ = (\Add0~22_combout\ & ((!\Equal0~9_combout\) # (!\Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~4_combout\,
	datac => \Equal0~9_combout\,
	datad => \Add0~22_combout\,
	combout => \counter1~10_combout\);

-- Location: FF_X17_Y2_N31
\counter1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter1(11));

-- Location: LCCOMB_X16_Y2_N24
\Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (counter1(12) & (\Add0~23\ $ (GND))) # (!counter1(12) & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((counter1(12) & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter1(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: FF_X16_Y2_N25
\counter1[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter1(12));

-- Location: LCCOMB_X16_Y2_N26
\Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (counter1(13) & (!\Add0~25\)) # (!counter1(13) & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!counter1(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter1(13),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCCOMB_X17_Y1_N6
\counter1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter1~11_combout\ = (\Add0~26_combout\ & ((!\Equal0~4_combout\) # (!\Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~9_combout\,
	datac => \Equal0~4_combout\,
	datad => \Add0~26_combout\,
	combout => \counter1~11_combout\);

-- Location: FF_X17_Y1_N7
\counter1[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter1~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter1(13));

-- Location: LCCOMB_X16_Y2_N28
\Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (counter1(14) & (\Add0~27\ $ (GND))) # (!counter1(14) & (!\Add0~27\ & VCC))
-- \Add0~29\ = CARRY((counter1(14) & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter1(14),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X17_Y1_N20
\counter1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter1~12_combout\ = (\Add0~28_combout\ & ((!\Equal0~4_combout\) # (!\Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~9_combout\,
	datac => \Add0~28_combout\,
	datad => \Equal0~4_combout\,
	combout => \counter1~12_combout\);

-- Location: FF_X17_Y1_N21
\counter1[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter1~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter1(14));

-- Location: LCCOMB_X16_Y2_N30
\Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (counter1(15) & (!\Add0~29\)) # (!counter1(15) & ((\Add0~29\) # (GND)))
-- \Add0~31\ = CARRY((!\Add0~29\) # (!counter1(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter1(15),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: FF_X16_Y2_N31
\counter1[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter1(15));

-- Location: LCCOMB_X17_Y2_N26
\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!counter1(12) & (!counter1(15) & (counter1(14) & counter1(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter1(12),
	datab => counter1(15),
	datac => counter1(14),
	datad => counter1(13),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X17_Y2_N24
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (counter1(5) & (counter1(7) & (!counter1(6) & counter1(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter1(5),
	datab => counter1(7),
	datac => counter1(6),
	datad => counter1(4),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X17_Y2_N4
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (counter1(1) & (counter1(2) & (counter1(0) & counter1(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter1(1),
	datab => counter1(2),
	datac => counter1(0),
	datad => counter1(3),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X17_Y2_N28
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (counter1(11) & (!counter1(9) & (!counter1(8) & !counter1(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter1(11),
	datab => counter1(9),
	datac => counter1(8),
	datad => counter1(10),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X17_Y2_N12
\Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~3_combout\ & (\Equal0~1_combout\ & (\Equal0~0_combout\ & \Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~3_combout\,
	datab => \Equal0~1_combout\,
	datac => \Equal0~0_combout\,
	datad => \Equal0~2_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X16_Y1_N0
\Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (counter1(16) & (\Add0~31\ $ (GND))) # (!counter1(16) & (!\Add0~31\ & VCC))
-- \Add0~33\ = CARRY((counter1(16) & !\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter1(16),
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: FF_X16_Y1_N1
\counter1[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter1(16));

-- Location: LCCOMB_X16_Y1_N2
\Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (counter1(17) & (!\Add0~33\)) # (!counter1(17) & ((\Add0~33\) # (GND)))
-- \Add0~35\ = CARRY((!\Add0~33\) # (!counter1(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter1(17),
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: FF_X16_Y1_N3
\counter1[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter1(17));

-- Location: LCCOMB_X16_Y1_N4
\Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (counter1(18) & (\Add0~35\ $ (GND))) # (!counter1(18) & (!\Add0~35\ & VCC))
-- \Add0~37\ = CARRY((counter1(18) & !\Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter1(18),
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: FF_X16_Y1_N5
\counter1[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter1(18));

-- Location: LCCOMB_X16_Y1_N6
\Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (counter1(19) & (!\Add0~37\)) # (!counter1(19) & ((\Add0~37\) # (GND)))
-- \Add0~39\ = CARRY((!\Add0~37\) # (!counter1(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter1(19),
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: LCCOMB_X17_Y1_N30
\counter1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter1~13_combout\ = (\Add0~38_combout\ & ((!\Equal0~4_combout\) # (!\Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~9_combout\,
	datac => \Add0~38_combout\,
	datad => \Equal0~4_combout\,
	combout => \counter1~13_combout\);

-- Location: FF_X17_Y1_N31
\counter1[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter1~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter1(19));

-- Location: LCCOMB_X16_Y1_N8
\Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (counter1(20) & (\Add0~39\ $ (GND))) # (!counter1(20) & (!\Add0~39\ & VCC))
-- \Add0~41\ = CARRY((counter1(20) & !\Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter1(20),
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: LCCOMB_X17_Y1_N4
\counter1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter1~14_combout\ = (\Add0~40_combout\ & ((!\Equal0~4_combout\) # (!\Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~9_combout\,
	datac => \Equal0~4_combout\,
	datad => \Add0~40_combout\,
	combout => \counter1~14_combout\);

-- Location: FF_X17_Y1_N5
\counter1[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter1~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter1(20));

-- Location: LCCOMB_X16_Y1_N10
\Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (counter1(21) & (!\Add0~41\)) # (!counter1(21) & ((\Add0~41\) # (GND)))
-- \Add0~43\ = CARRY((!\Add0~41\) # (!counter1(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter1(21),
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: LCCOMB_X17_Y1_N26
\counter1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter1~15_combout\ = (\Add0~42_combout\ & ((!\Equal0~4_combout\) # (!\Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~9_combout\,
	datac => \Equal0~4_combout\,
	datad => \Add0~42_combout\,
	combout => \counter1~15_combout\);

-- Location: FF_X17_Y1_N27
\counter1[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter1~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter1(21));

-- Location: LCCOMB_X16_Y1_N12
\Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = (counter1(22) & (\Add0~43\ $ (GND))) # (!counter1(22) & (!\Add0~43\ & VCC))
-- \Add0~45\ = CARRY((counter1(22) & !\Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter1(22),
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

-- Location: LCCOMB_X17_Y1_N22
\counter1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter1~16_combout\ = (\Add0~44_combout\ & ((!\Equal0~4_combout\) # (!\Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~9_combout\,
	datac => \Equal0~4_combout\,
	datad => \Add0~44_combout\,
	combout => \counter1~16_combout\);

-- Location: FF_X17_Y1_N23
\counter1[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter1~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter1(22));

-- Location: LCCOMB_X16_Y1_N14
\Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (counter1(23) & (!\Add0~45\)) # (!counter1(23) & ((\Add0~45\) # (GND)))
-- \Add0~47\ = CARRY((!\Add0~45\) # (!counter1(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter1(23),
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

-- Location: FF_X16_Y1_N15
\counter1[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter1(23));

-- Location: LCCOMB_X17_Y1_N12
\Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (counter1(22) & (counter1(20) & (counter1(21) & !counter1(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter1(22),
	datab => counter1(20),
	datac => counter1(21),
	datad => counter1(23),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X17_Y1_N8
\Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (counter1(19) & (!counter1(18) & (!counter1(16) & !counter1(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter1(19),
	datab => counter1(18),
	datac => counter1(16),
	datad => counter1(17),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X16_Y1_N16
\Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = (counter1(24) & (\Add0~47\ $ (GND))) # (!counter1(24) & (!\Add0~47\ & VCC))
-- \Add0~49\ = CARRY((counter1(24) & !\Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter1(24),
	datad => VCC,
	cin => \Add0~47\,
	combout => \Add0~48_combout\,
	cout => \Add0~49\);

-- Location: FF_X16_Y1_N17
\counter1[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter1(24));

-- Location: LCCOMB_X16_Y1_N18
\Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = (counter1(25) & (!\Add0~49\)) # (!counter1(25) & ((\Add0~49\) # (GND)))
-- \Add0~51\ = CARRY((!\Add0~49\) # (!counter1(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter1(25),
	datad => VCC,
	cin => \Add0~49\,
	combout => \Add0~50_combout\,
	cout => \Add0~51\);

-- Location: FF_X16_Y1_N19
\counter1[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter1(25));

-- Location: LCCOMB_X16_Y1_N20
\Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~52_combout\ = (counter1(26) & (\Add0~51\ $ (GND))) # (!counter1(26) & (!\Add0~51\ & VCC))
-- \Add0~53\ = CARRY((counter1(26) & !\Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter1(26),
	datad => VCC,
	cin => \Add0~51\,
	combout => \Add0~52_combout\,
	cout => \Add0~53\);

-- Location: LCCOMB_X17_Y1_N18
\counter1~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter1~17_combout\ = (\Add0~52_combout\ & ((!\Equal0~4_combout\) # (!\Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~9_combout\,
	datac => \Equal0~4_combout\,
	datad => \Add0~52_combout\,
	combout => \counter1~17_combout\);

-- Location: FF_X17_Y1_N19
\counter1[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter1~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter1(26));

-- Location: LCCOMB_X16_Y1_N22
\Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~54_combout\ = (counter1(27) & (!\Add0~53\)) # (!counter1(27) & ((\Add0~53\) # (GND)))
-- \Add0~55\ = CARRY((!\Add0~53\) # (!counter1(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter1(27),
	datad => VCC,
	cin => \Add0~53\,
	combout => \Add0~54_combout\,
	cout => \Add0~55\);

-- Location: FF_X16_Y1_N23
\counter1[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter1(27));

-- Location: LCCOMB_X16_Y1_N24
\Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~56_combout\ = (counter1(28) & (\Add0~55\ $ (GND))) # (!counter1(28) & (!\Add0~55\ & VCC))
-- \Add0~57\ = CARRY((counter1(28) & !\Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter1(28),
	datad => VCC,
	cin => \Add0~55\,
	combout => \Add0~56_combout\,
	cout => \Add0~57\);

-- Location: FF_X16_Y1_N25
\counter1[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter1(28));

-- Location: LCCOMB_X16_Y1_N26
\Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~58_combout\ = (counter1(29) & (!\Add0~57\)) # (!counter1(29) & ((\Add0~57\) # (GND)))
-- \Add0~59\ = CARRY((!\Add0~57\) # (!counter1(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter1(29),
	datad => VCC,
	cin => \Add0~57\,
	combout => \Add0~58_combout\,
	cout => \Add0~59\);

-- Location: FF_X16_Y1_N27
\counter1[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter1(29));

-- Location: LCCOMB_X16_Y1_N28
\Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~60_combout\ = (counter1(30) & (\Add0~59\ $ (GND))) # (!counter1(30) & (!\Add0~59\ & VCC))
-- \Add0~61\ = CARRY((counter1(30) & !\Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter1(30),
	datad => VCC,
	cin => \Add0~59\,
	combout => \Add0~60_combout\,
	cout => \Add0~61\);

-- Location: FF_X16_Y1_N29
\counter1[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter1(30));

-- Location: LCCOMB_X16_Y1_N30
\Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~62_combout\ = counter1(31) $ (\Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter1(31),
	cin => \Add0~61\,
	combout => \Add0~62_combout\);

-- Location: FF_X16_Y1_N31
\counter1[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter1(31));

-- Location: LCCOMB_X17_Y1_N14
\Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (!counter1(29) & (!counter1(30) & (!counter1(28) & !counter1(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter1(29),
	datab => counter1(30),
	datac => counter1(28),
	datad => counter1(31),
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X17_Y1_N10
\Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (!counter1(24) & (counter1(26) & (!counter1(25) & !counter1(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter1(24),
	datab => counter1(26),
	datac => counter1(25),
	datad => counter1(27),
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X17_Y1_N0
\Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (\Equal0~6_combout\ & (\Equal0~5_combout\ & (\Equal0~8_combout\ & \Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~6_combout\,
	datab => \Equal0~5_combout\,
	datac => \Equal0~8_combout\,
	datad => \Equal0~7_combout\,
	combout => \Equal0~9_combout\);

-- Location: LCCOMB_X17_Y1_N28
\clktemp1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clktemp1~0_combout\ = \clktemp1~q\ $ (((\Equal0~9_combout\ & \Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~9_combout\,
	datac => \clktemp1~q\,
	datad => \Equal0~4_combout\,
	combout => \clktemp1~0_combout\);

-- Location: LCCOMB_X17_Y1_N24
\clktemp1~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \clktemp1~feeder_combout\ = \clktemp1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clktemp1~0_combout\,
	combout => \clktemp1~feeder_combout\);

-- Location: FF_X17_Y1_N25
clktemp1 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clktemp1~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clktemp1~q\);

-- Location: CLKCTRL_G5
\clktemp1~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clktemp1~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clktemp1~clkctrl_outclk\);

-- Location: LCCOMB_X32_Y9_N12
\startup~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \startup~0_combout\ = (\startup~q\) # ((\rst~input_o\ & !\switch~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datac => \startup~q\,
	datad => \switch~input_o\,
	combout => \startup~0_combout\);

-- Location: FF_X32_Y9_N13
startup : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clktemp1~clkctrl_outclk\,
	d => \startup~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \startup~q\);

-- Location: LCCOMB_X32_Y9_N24
\count_out[2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_out[2]~14_combout\ = (\switch~input_o\ & (\rst~input_o\ & !\startup~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \switch~input_o\,
	datac => \rst~input_o\,
	datad => \startup~q\,
	combout => \count_out[2]~14_combout\);

-- Location: LCCOMB_X32_Y9_N16
\count_out[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_out[0]~1_combout\ = (\rst~input_o\ & ((\count_out[2]~14_combout\) # (\count_out[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \count_out[2]~14_combout\,
	datac => \rst~input_o\,
	datad => \count_out[0]~1_combout\,
	combout => \count_out[0]~1_combout\);

-- Location: LCCOMB_X32_Y9_N20
\firststatecondition~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \firststatecondition~0_combout\ = (\firststatecondition~q\) # ((\rst~input_o\ & !\switch~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datac => \firststatecondition~q\,
	datad => \switch~input_o\,
	combout => \firststatecondition~0_combout\);

-- Location: FF_X32_Y9_N21
firststatecondition : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clktemp1~clkctrl_outclk\,
	d => \firststatecondition~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \firststatecondition~q\);

-- Location: LCCOMB_X32_Y9_N8
\count_out[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_out[0]~3_combout\ = \count_out[0]~1_combout\ $ (((!\count_out[0]~2_combout\) # (!\firststatecondition~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \firststatecondition~q\,
	datac => \count_out[0]~1_combout\,
	datad => \count_out[0]~2_combout\,
	combout => \count_out[0]~3_combout\);

-- Location: LCCOMB_X32_Y9_N14
\count_out[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_out[0]~0_combout\ = (\count_out[2]~14_combout\) # (!\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst~input_o\,
	datad => \count_out[2]~14_combout\,
	combout => \count_out[0]~0_combout\);

-- Location: FF_X32_Y9_N9
\count_out[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clktemp1~clkctrl_outclk\,
	d => \count_out[0]~3_combout\,
	clrn => \ALT_INV_count_out[0]~0_combout\,
	ena => \ALT_INV_switch~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count_out[0]~_emulated_q\);

-- Location: LCCOMB_X32_Y9_N22
\count_out[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_out[0]~2_combout\ = (\rst~input_o\ & ((\count_out[2]~14_combout\) # (\count_out[0]~1_combout\ $ (\count_out[0]~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \count_out[0]~1_combout\,
	datac => \count_out[0]~_emulated_q\,
	datad => \count_out[2]~14_combout\,
	combout => \count_out[0]~2_combout\);

-- Location: LCCOMB_X32_Y9_N4
\count_out[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_out[1]~5_combout\ = \count_out[0]~1_combout\ $ (((\count_out[1]~4_combout\ $ (!\count_out[0]~2_combout\)) # (!\firststatecondition~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100110010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count_out[0]~1_combout\,
	datab => \firststatecondition~q\,
	datac => \count_out[1]~4_combout\,
	datad => \count_out[0]~2_combout\,
	combout => \count_out[1]~5_combout\);

-- Location: FF_X32_Y9_N5
\count_out[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clktemp1~clkctrl_outclk\,
	d => \count_out[1]~5_combout\,
	clrn => \ALT_INV_count_out[0]~0_combout\,
	ena => \ALT_INV_switch~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count_out[1]~_emulated_q\);

-- Location: LCCOMB_X32_Y9_N10
\count_out[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_out[1]~4_combout\ = (\rst~input_o\ & ((\count_out[2]~14_combout\) # (\count_out[0]~1_combout\ $ (\count_out[1]~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \count_out[0]~1_combout\,
	datac => \count_out[1]~_emulated_q\,
	datad => \count_out[2]~14_combout\,
	combout => \count_out[1]~4_combout\);

-- Location: LCCOMB_X32_Y9_N2
\Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (!\count_out[0]~2_combout\ & !\count_out[1]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \count_out[0]~2_combout\,
	datad => \count_out[1]~4_combout\,
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X32_Y9_N28
\count_out[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_out[2]~7_combout\ = \count_out[0]~1_combout\ $ (((\firststatecondition~q\ & (\count_out[2]~6_combout\ $ (\Equal2~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count_out[0]~1_combout\,
	datab => \firststatecondition~q\,
	datac => \count_out[2]~6_combout\,
	datad => \Equal2~0_combout\,
	combout => \count_out[2]~7_combout\);

-- Location: FF_X32_Y9_N29
\count_out[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clktemp1~clkctrl_outclk\,
	d => \count_out[2]~7_combout\,
	clrn => \ALT_INV_count_out[0]~0_combout\,
	ena => \ALT_INV_switch~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count_out[2]~_emulated_q\);

-- Location: LCCOMB_X32_Y9_N18
\count_out[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_out[2]~6_combout\ = (\rst~input_o\ & ((\count_out[2]~14_combout\) # (\count_out[2]~_emulated_q\ $ (\count_out[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \count_out[2]~_emulated_q\,
	datac => \count_out[0]~1_combout\,
	datad => \count_out[2]~14_combout\,
	combout => \count_out[2]~6_combout\);

-- Location: LCCOMB_X33_Y9_N4
\process_2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_2~0_combout\ = (\startup~q\ & ((\count_out[1]~4_combout\) # ((\count_out[0]~2_combout\) # (\count_out[2]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count_out[1]~4_combout\,
	datab => \startup~q\,
	datac => \count_out[0]~2_combout\,
	datad => \count_out[2]~6_combout\,
	combout => \process_2~0_combout\);

-- Location: LCCOMB_X32_Y9_N30
\count_out1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_out1~0_combout\ = (\switch~input_o\) # (!\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst~input_o\,
	datad => \switch~input_o\,
	combout => \count_out1~0_combout\);

-- Location: FF_X33_Y9_N5
count_out1 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clktemp1~clkctrl_outclk\,
	d => \process_2~0_combout\,
	clrn => \ALT_INV_count_out1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count_out1~q\);

ww_output(0) <= \output[0]~output_o\;

ww_output(1) <= \output[1]~output_o\;

ww_output(2) <= \output[2]~output_o\;

ww_output1 <= \output1~output_o\;
END structure;


