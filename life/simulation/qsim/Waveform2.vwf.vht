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
-- Generated on "09/14/2019 21:09:02"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          asssss
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY asssss_vhd_vec_tst IS
END asssss_vhd_vec_tst;
ARCHITECTURE asssss_arch OF asssss_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL output : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL output1 : STD_LOGIC;
SIGNAL rst : STD_LOGIC;
SIGNAL switch : STD_LOGIC;
COMPONENT asssss
	PORT (
	clk : IN STD_LOGIC;
	output : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	output1 : OUT STD_LOGIC;
	rst : IN STD_LOGIC;
	switch : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : asssss
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	output => output,
	output1 => output1,
	rst => rst,
	switch => switch
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
	clk <= 'X';
WAIT;
END PROCESS t_prcs_clk;

-- rst
t_prcs_rst: PROCESS
BEGIN
	rst <= '0';
WAIT;
END PROCESS t_prcs_rst;

-- switch
t_prcs_switch: PROCESS
BEGIN
	switch <= '1';
WAIT;
END PROCESS t_prcs_switch;
END asssss_arch;
