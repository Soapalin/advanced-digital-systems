library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- entity combinational including 3 inputs and 1 output -- 
entity combinational is
	PORT( a, b, c : in STD_LOGIC;
			f : out STD_LOGIC
			);
end combinational;


-- behaviour of the combinational circuit -- 
architecture Behavioural of combinational is
begin
	f <= (NOT a AND b) OR (NOT a AND c) OR (NOT b AND c) OR (a AND NOT b); -- assign equation to f -- 
end Behavioural;


