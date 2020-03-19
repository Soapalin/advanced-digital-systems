library IEEE;
use IEEE.STD-LOGIC-1164.ALL;


entity DFF is 
	PORT(
		input, reset, clock: IN STD_LOGIC;
		output: OUT STD_LOGIC
		);
end DFF;

architecture behaviour of DFF is
BEGIN
	PROCESS(clock, reset)
	BEGIN 
		IF(rising_edge(clock))
			output <= NOT reset AND input;
	END PROCESS;
END behaviour;