library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sequential is
	PORT(
		clk, reset, input: IN STD_LOGIC;
		output: OUT STD_LOGIC_VECTOR( 1 DOWNTO 0)
	);
end sequential;

architecture behavioural of sequential is
	TYPE State_Type IS (A,B,C);
	SIGNAL current_state: State_Type;
BEGIN
	PROCESS (reset, clk)
	BEGIN
		IF (falling_edge(clk)) THEN
			IF reset = '1' THEN 
				current_state <= A;
				output <= "00";		
			ELSE 
				CASE current_state IS
					WHEN A =>
						IF input = '0' THEN 
							current_state <= B;
							output <= "10";
						ELSE 
							current_state <= C;
							output <= "00";
						END IF;
						
					WHEN B =>
						IF input = '0' THEN 
							current_state <= A;
							output <= "01";
						ELSE 
							current_state <= C;
							output <= "00";
						END IF;
					
					WHEN C =>
						IF input = '0' THEN 
							current_state <= A;
							output <= "01";
						ELSE 
							current_state <= C;
							output <= "11";
						END IF;
				END CASE;
			END IF;
		END IF;
	END PROCESS;
END behavioural;






				
				