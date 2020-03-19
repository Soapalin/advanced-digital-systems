library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity graycodebcd is 
	PORT( clk: in std_logic;
	      graycode: in std_logic_vector(3 DOWNTO 0);
	      bcd: out std_logic_vector(6 DOWNTO 0));
end graycodebcd;


architecture behavioural of graycodebcd is 
begin
	--bcd(6) = (NOT graycode(0)) OR graycode(3) OR ((NOT graycode(2)) AND graycode(1)) OR (graycode(2) AND (NOT graycode(1)));
	--bcd(5) = (NOT graycode(2)) OR graycode(0);
	--bcd(4) = NOt graycode(1) OR NOT graycode(0) Or graycode(2);
	process(clk)
	BEGIN
	
	if (rising_edge(clk)) then 
		if (graycode = "0000") then bcd <= "1111110"; -- 0
		elsif (graycode = "0001") then bcd <= "0110000"; -- 1
		elsif (graycode = "0011") then bcd <= "1101101"; -- 2
		elsif (graycode = "0010") then bcd <= "1111001"; -- 3
		elsif (graycode = "0110") then bcd <= "0110011"; -- 4
		elsif (graycode = "0111") then bcd <= "1011011"; -- 5
		elsif (graycode = "0101") then bcd <= "1011111"; -- 6
		elsif (graycode = "0100") then bcd <= "1110000"; -- 7
		elsif (graycode = "1100") then bcd <= "1111111"; -- 8
		elsif (graycode = "1101") then bcd <= "1110011"; -- 9
      end if;
   end if;
	
	end process;


end behavioural;
	