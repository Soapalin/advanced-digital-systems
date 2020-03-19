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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "08/21/2019 16:10:29"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          sequential
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY sequential_vhd_vec_tst IS
END sequential_vhd_vec_tst;
ARCHITECTURE sequential_arch OF sequential_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL input : STD_LOGIC;
SIGNAL output : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL reset : STD_LOGIC;
COMPONENT sequential
	PORT (
	clk : IN STD_LOGIC;
	input : IN STD_LOGIC;
	output : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	reset : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : sequential
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	input => input,
	output => output,
	reset => reset
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
	FOR i IN 1 TO 9
	LOOP
		clk <= '0';
		WAIT FOR 5000 ps;
		clk <= '1';
		WAIT FOR 5000 ps;
	END LOOP;
	clk <= '0';
	WAIT FOR 5000 ps;
	clk <= '1';
WAIT;
END PROCESS t_prcs_clk;

-- input
t_prcs_input: PROCESS
BEGIN
	input <= '1';
	WAIT FOR 20000 ps;
	input <= '0';
	WAIT FOR 20000 ps;
	input <= '1';
	WAIT FOR 10000 ps;
	input <= '0';
	WAIT FOR 10000 ps;
	input <= '1';
	WAIT FOR 10000 ps;
	input <= '0';
WAIT;
END PROCESS t_prcs_input;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
	WAIT FOR 70000 ps;
	reset <= '1';
	WAIT FOR 20000 ps;
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;
END sequential_arch;
