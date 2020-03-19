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
-- Generated on "10/06/2019 14:09:52"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          graycodebcd
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY graycodebcd_vhd_vec_tst IS
END graycodebcd_vhd_vec_tst;
ARCHITECTURE graycodebcd_arch OF graycodebcd_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL bcd : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL clk : STD_LOGIC;
SIGNAL graycode : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT graycodebcd
	PORT (
	bcd : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	clk : IN STD_LOGIC;
	graycode : IN STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : graycodebcd
	PORT MAP (
-- list connections between master ports and signals
	bcd => bcd,
	clk => clk,
	graycode => graycode
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 1000 ps;
	clk <= '1';
	WAIT FOR 1000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;
-- graycode[3]
t_prcs_graycode_3: PROCESS
BEGIN
	FOR i IN 1 TO 3
	LOOP
		graycode(3) <= '0';
		WAIT FOR 160000 ps;
		graycode(3) <= '1';
		WAIT FOR 160000 ps;
	END LOOP;
	graycode(3) <= '0';
WAIT;
END PROCESS t_prcs_graycode_3;
-- graycode[2]
t_prcs_graycode_2: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		graycode(2) <= '0';
		WAIT FOR 80000 ps;
		graycode(2) <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	graycode(2) <= '0';
WAIT;
END PROCESS t_prcs_graycode_2;
-- graycode[1]
t_prcs_graycode_1: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		graycode(1) <= '0';
		WAIT FOR 40000 ps;
		graycode(1) <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	graycode(1) <= '0';
WAIT;
END PROCESS t_prcs_graycode_1;
-- graycode[0]
t_prcs_graycode_0: PROCESS
BEGIN
LOOP
	graycode(0) <= '0';
	WAIT FOR 20000 ps;
	graycode(0) <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_graycode_0;
END graycodebcd_arch;
