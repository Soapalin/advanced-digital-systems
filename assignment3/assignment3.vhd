library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity assignment3 is
port(clk, startstop, updown, rst : in std_logic;
     digit1, digit2, digit3, digit4: out std_logic;
	  led: out std_logic_vector(3 downto 0);
	  output_bcd: out std_logic_vector(6 downto 0)
	  );
end assignment3;

architecture behavioural of assignment3 is 
signal fastclock : std_logic; -- 2 second clock
signal counter2 : integer := 0; -- counter for frequency divider2
signal g  : std_logic_vector (3 downto 0); -- signal for the first digit 
signal g2 : std_logic_vector (3 downto 0); -- signal for the second digit
signal seg3, seg4 : std_logic_vector(6 downto 0); -- to represent the digit in bcd
signal MUX: std_logic := '0'; -- used to alternates the display
signal d1, d2, d3, d4: std_logic; -- display used
signal veryfastclock: std_logic; -- clock used to alternate display
signal counter3: integer := 0; -- counter used to alternate display
signal counterdigit: integer := 0; -- counts to know when to change the state of 2nd digit
signal initialstate: std_logic := '1'; -- starting at 60 or 00
signal counter30: integer := 0;

begin	
		frequency_divider2 : process(clk)
		begin 
			if (rising_edge(clk)) then 
				if (counter2 = 49999999) then
					fastclock <= NOT(fastclock);
					counter2 <= 0;
				else
					counter2 <= counter2 + 1;
				end if;
			end if;
		end process;

		frequency_divider3 : process(clk)
		begin 
			if (rising_edge(clk)) then 
				if (counter3 = 249999) then
					veryfastclock <= NOT(veryfastclock);
					counter3 <= 0;
				else
					counter3 <= counter3 + 1;
				end if;
			end if;
		end process;


		process(fastclock, rst) -- used to change state of the digits
		begin
			if(updown = '0'and initialstate = '1') then 
			  g <= "0000";
			  g2 <= "0000";
			  led <= "1111";
			  initialstate <= '0';
			elsif(updown = '1' and initialstate = '1') then
			  g <= "0000";
			  g2 <= "0101";
			  led <= "1111";
			  counterdigit <= 9; -- to count down from 60 to 59 (not 60 to 69) 
			  initialstate <= '0';
		   elsif(rst = '0') then 
			  counterdigit <= 0;
			  counter30 <= 0;
			  led <= "1111";
			  if(updown = '0') then  -- count up from 00
			    g2 <= "0000";
				 g <= "0000";
		     elsif(updown = '1') then -- count down from 60
			    g2 <= "0000";
				 g <= "0101";
				 counterdigit <= 9;
			  end if;

			elsif(rising_edge(fastclock) AND startstop = '0' and counter30 <= 30) then
			  counterdigit <= counterdigit + 1 ;
			  if(counterdigit >= 9) then -- every 10 clock pulses, increase the 10s digit
			     counterdigit <= 0;
				  if(updown = '0') then -- counting up
					g(3 downto 0) <= "0000";
					if(g(3 downto 0) = "0000") then
						g(3 downto 0) <= "0001";			
					elsif(g(3 downto 0) = "0001") then
						g(3 downto 0) <= "0011";
					
					elsif(g(3 downto 0) = "0011") then
						g(3 downto 0) <= "0010";
						
					elsif(g(3 downto 0) = "0010") then
						g(3 downto 0) <= "0110";
						
					elsif(g(3 downto 0) = "0110") then
						g(3 downto 0) <= "0111";	
					
					elsif(g(3 downto 0) = "0111") then
						g(3 downto 0) <= "0101";
						
					elsif(g(3 downto 0) = "0101") then
						g(3 downto 0) <= "0100";
					
					elsif(g(3 downto 0) = "0100") then
						g(3 downto 0) <= "1100";
						
					elsif(g(3 downto 0) = "1100") then
						g(3 downto 0) <= "1101";
						
					elsif(g(3 downto 0) = "1101") then
						g(3 downto 0) <= "0000";
					end if;			  
				  elsif(updown = '1') then -- counting down
					g(3 downto 0) <= "0101"; 
					if(g(3 downto 0) = "0000") then
						g(3 downto 0) <= "1101";
						
					elsif(g(3 downto 0) = "1101") then
						g(3 downto 0) <= "1100";
						
					elsif(g(3 downto 0) = "1100") then
						g(3 downto 0) <= "0100";
						
					elsif(g(3 downto 0) = "0100") then
						g(3 downto 0) <= "0101";
						
					elsif(g(3 downto 0) = "0101") then
						g(3 downto 0) <= "0111";
						
					elsif(g(3 downto 0) = "0111") then
						g(3 downto 0) <= "0110";
						
					elsif(g(3 downto 0) = "0110") then
						g(3 downto 0) <= "0010";
					
					elsif(g(3 downto 0) = "0010") then
						g(3 downto 0) <= "0011";
						
					elsif(g(3 downto 0) = "0011") then
						g(3 downto 0) <= "0001";
						
					elsif(g(3 downto 0) = "0001") then
						g(3 downto 0) <= "0000";
					end if;	
				  end if;
	        end if;			  
			  if(updown = '0') then -- counting up the ones
			   g2(3 downto 0) <= "0000";
				if(g2(3 downto 0) = "0000") then
					g2(3 downto 0) <= "0001";
					
				elsif(g2(3 downto 0) = "0001") then
					g2(3 downto 0) <= "0011";
				
				elsif(g2(3 downto 0) = "0011") then
					g2(3 downto 0) <= "0010";
					
				elsif(g2(3 downto 0) = "0010") then
					g2(3 downto 0) <= "0110";
					
				elsif(g2(3 downto 0) = "0110") then
					g2(3 downto 0) <= "0111";	
				
				elsif(g2(3 downto 0) = "0111") then
					g2(3 downto 0) <= "0101";
					
				elsif(g2(3 downto 0) = "0101") then
					g2(3 downto 0) <= "0100";
				
				elsif(g2(3 downto 0) = "0100") then
					g2(3 downto 0) <= "1100";
					
				elsif(g2(3 downto 0) = "1100") then
					g2(3 downto 0) <= "1101";
					
				elsif(g2(3 downto 0) = "1101") then
					g2(3 downto 0) <= "0000";
				end if;			  
			  elsif(updown = '1') then -- counting down the ones
			   g2(3 downto 0) <= "0000";
				if(g2(3 downto 0) = "0000") then
					g2(3 downto 0) <= "1101";
					
				elsif(g2(3 downto 0) = "1101") then
					g2(3 downto 0) <= "1100";
					
				elsif(g2(3 downto 0) = "1100") then
					g2(3 downto 0) <= "0100";
					
				elsif(g2(3 downto 0) = "0100") then
					g2(3 downto 0) <= "0101";
					
				elsif(g2(3 downto 0) = "0101") then
					g2(3 downto 0) <= "0111";
					
				elsif(g2(3 downto 0) = "0111") then
					g2(3 downto 0) <= "0110";
					
				elsif(g2(3 downto 0) = "0110") then
					g2(3 downto 0) <= "0010";
				
				elsif(g2(3 downto 0) = "0010") then
					g2(3 downto 0) <= "0011";
					
				elsif(g2(3 downto 0) = "0011") then
					g2(3 downto 0) <= "0001";
					
				elsif(g2(3 downto 0) = "0001") then
					g2(3 downto 0) <= "0000";
				end if;				  
			end if;
			-- bcd converter, from graycode
				if (g2 = "0000") then seg3 <= "1111110"; -- 0
				elsif (g2 = "0001") then seg3 <= "0110000"; -- 1
				elsif (g2 = "0011") then seg3 <= "1101101"; -- 2
				elsif (g2 = "0010") then seg3 <= "1111001"; -- 3
				elsif (g2 = "0110") then seg3 <= "0110011"; -- 4
				elsif (g2 = "0111") then seg3 <= "1011011"; -- 5
				elsif (g2 = "0101") then seg3 <= "1011111"; -- 6
				elsif (g2 = "0100") then seg3 <= "1110000"; -- 7
				elsif (g2 = "1100") then seg3 <= "1111111"; -- 8
				elsif (g2 = "1101") then seg3 <= "1111011"; -- 9
				end if;
				if (g = "0000") then seg4 <= "1111110"; -- 0
				elsif (g = "0001") then seg4 <= "0110000"; -- 1
				elsif (g = "0011") then seg4 <= "1101101"; -- 2
				elsif (g = "0010") then seg4 <= "1111001"; -- 3
				elsif (g = "0110") then seg4 <= "0110011"; -- 4
				elsif (g = "0111") then seg4 <= "1011011"; -- 5
				elsif (g = "0101") then seg4 <= "1011111"; -- 6
				elsif (g = "0100") then seg4 <= "1110000"; -- 7
				elsif (g = "1100") then seg4 <= "1111111"; -- 8
				elsif (g = "1101") then seg4 <= "1111011"; -- 9
				end if;	
				counter30 <= counter30 + 1;
				if(counter30 = 29) then
				  led <= "0000";
				  g <= "0000";
				  g2 <= "0000";
				end if;
			end if;
		end process;
	
		process(veryfastclock) -- alternate display (fast enough to not see change)
		begin
		  if(rising_edge(veryfastclock)) then
		    if(MUX = '0') then -- MUX alternates the display
			   d3 <= '1';
				d4 <= '0';
				MUX <= not MUX;
				output_bcd <= not seg4; -- show ones digit
				
			 elsif(MUX = '1') then
			   d3 <= '0';
				d4 <= '1';
				MUX <= not MUX;
				output_bcd <= not seg3; -- show tens digit
		    end if;
		  end if;  
		end process;
		digit1 <= '1'; -- make sure the other digits are off
		digit2 <= '1'; -- make sure the other digits are off
		digit3 <= not d3;
		digit4 <= not d4;
end behavioural;




