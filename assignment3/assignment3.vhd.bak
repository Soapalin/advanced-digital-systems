library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity assignment3 is
port(clk_in, startstop, updown, reset : in std_logic;
     digit1, digit2: out std_logic_vector(3 downto 0);
     bcd: out std_logic_vector(7 downto 0));
end assignment3;

architecture behavioural of assignment3 is 
signal slowclock, fastclock : std_logic;
signal counter1, counter2 : integer := 0;
signal upcount1, upcount2, downcount1, downcount2 : std_logic_vector(3 downto 0);

begin
	   frequency_divider : process(clk)
		begin 
			if (rising_edge(clk)) then 
				if (counter1 = 49999999) then
					slowclock <= NOT(slowclock);
					counter1 <= 0;
				else
					counter1 <= counter1 + 1;
				end if;
			end if;
		end process;
		
		frequency_divider2 : process(clk)
		begin 
			if (rising_edge(clk)) then 
				if (counter2 = 500) then
					fastclock <= NOT(fastclock);
					counter2 <= 0;
				else
					counter2 <= counter2 + 1;
				end if;
			end if;
		end process;
		
		if(updown = '0') then-- counting up
			if(rst = '0') then
             upcount1 = "0000";
				 upcount2 = "0000";
			end process; 
			 
			 
			 
	   elsif(updown = '1') then-- counting down
		    if(rst = '0') then 
			      downcount1 = "0000";
					downcount2 = "1101";
			 
		

		


end behavioural;




