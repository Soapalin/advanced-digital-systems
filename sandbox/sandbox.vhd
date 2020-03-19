library IEEE;
use IEEE.STD-LOGIC-1164.ALL;


-- tutorial 3 -- 
ENTITY decoder is 
	PORT(
		a: IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		d: OUT STD_LOGIC_VECTOR(3 DOWNTO 0));
END decoder;


architecture xyz of decoder is 
begin
	d <= "0001" when a = "00" else
		  "0010" when a = "01" else
		  "0011" when a = "10" else
		  "0100" when a = "11";
end;
END architecture;



ENTITY multiplex is 
	PORT(
		b: IN STD_LOGIC_VECTOR(3 DOWNTO 1);
		s: IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		f: OUT STD_LOGIC
	);
end multiplex;

architecture behaviour of multiplex is 
begin 
	f <= b(3) when s = "00" else
	     b(2) when s = "01" else
		  b(1) when s = "10" else
		  b(0) when s = "11";
end;
end behaviour;

ENTITY fulladder is 
	PORT(
		x,y, cin: IN STD_LOGIC;
		sum, cout: OUT STD_LOGIC
	);
end fulladder;

architecture adding of fulladder is 
begin
	sum <= (x XOR y) XOR cin;
	cout <= ((x XOR y) AND cin) OR (x AND y);
end;
end adding;


ENTITY ALU is
	PORT(
	OPCODE: IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	x,y, sum,cin: IN STD_LOGIC;
	cout, z: OUT STD_LOGIC
	);
end ALU;


architecture behavioural of ALU is
begin 
	sum <= (x XOR y) XOR cin;
	cout <= ((x XOR y) AND cin) OR (x AND y);
	z <= x AND y when OPCODE = "00" else
		  x OR y when OPCODE = "01" else
		  sum when OPCODE = "10";
end;
end behavioural;


		
		