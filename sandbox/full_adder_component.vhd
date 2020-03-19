library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity full_adder is 
	PORT(
		In1,In2,c_in: IN STD_LOGIC;
		sum, c_out: OUT STD_LOGIC
		);
end full_adder;


architecture structural of full_adder is 
component half_adder
	PORT(
		a,b: IN STD_LOGIC;
		sum, carry: OUT STD_LOGIC
		);
end component;

component or_2
	PORT(
		a,b: in std_logic;
		c: out std_logic
		);
end component;

signal s1,s2,s3: std_logic;
begin
H1: half_adder port map(a=>In1, b=>In2, sum => s1,carry => s3);
H2: half_adder port map(a => s1, b => c_in, sum => sum, carry => s2);
O1: or_2 port map(a =< s2, b=> s3, c => c_out);



end structural;
