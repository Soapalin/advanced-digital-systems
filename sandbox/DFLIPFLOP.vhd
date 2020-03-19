library IEEE;
use IEEE.STD-LOGIC-1164.ALL;



ENTITY DFLIPFLOP is 
	PORT(
		clock, d, reset: IN STD_LOGIC;
		q: OUT STD_LOGIC
		);
end DFLIPFLOP;

architecture behaviour of DFLIPFLOP is 
BEGIN 
	IF reset = '1' THEN q <= '0';
	ELSE
		PROCESS(clock)
		BEGIN
			if(rising_edge(clock))
				q <= d;
			end if;
		END PROCESS;
END behaviour;
	