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
-- Generated on "09/13/2019 17:18:35"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          assignment2
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY assignment2_vhd_vec_tst IS
END assignment2_vhd_vec_tst;
ARCHITECTURE assignment2_arch OF assignment2_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL output : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL rst : STD_LOGIC;
SIGNAL switch : STD_LOGIC;
COMPONENT assignment2
	PORT (
	clk : IN STD_LOGIC;
	output : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	rst : IN STD_LOGIC;
	switch : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : assignment2
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	output => output,
	rst => rst,
	switch => switch
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 20000 ps;
	clk <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- rst
t_prcs_rst: PROCESS
BEGIN
	rst <= '0';
	WAIT FOR 130000 ps;
	rst <= '1';
	WAIT FOR 350000 ps;
	rst <= '0';
WAIT;
END PROCESS t_prcs_rst;

-- switch
t_prcs_switch: PROCESS
BEGIN
	switch <= '0';
	WAIT FOR 80000 ps;
	switch <= '1';
	WAIT FOR 40000 ps;
	switch <= '0';
WAIT;
END PROCESS t_prcs_switch;
END assignment2_arch;
