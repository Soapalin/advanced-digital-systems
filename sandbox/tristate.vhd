library IEEE;
use IEEE.STD-LOGIC-1164.ALL;

entity tristate is 
	PORT(
		control, input: IN STD_LOGIC;
		output: OUT STD_LOGIC
		);
END tristate;


architecture behaviour of tristate is 
BEGIN
	IF control = '0', THEN output <= 'z';
	IF control = '1', THEN output <= input;
END behaviour;
