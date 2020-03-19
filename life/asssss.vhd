library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity asssss is
Port (clk, rst, switch : in std_logic;
output : out std_logic_vector (2 downto 0);
output1 : out std_logic);
end asssss;

architecture behavioural of asssss is
signal count_out : std_logic_vector (2 downto 0); -- 1,2,3 LED
signal count_out1 : std_logic; -- 4th LED for 3 seconds
signal count_out2: std_logic; -- 4th LED for 5 seconds 
signal firststatecondition : std_logic := '1'; -- to start counter at 011 
signal fiveseconds : std_logic := '0'; -- to turn on 4th LED for 5 seconds
signal threeseconds : std_logic := '0'; -- to turn on 4th LED for 3 seconds
signal startup : std_logic := '1'; -- On startup, what to do

signal clktemp1, clktemp2 : std_logic; -- clktemp1 = 3 seconds, clktemp2 = 5 secs
signal counter1, counter2 : integer := 0;-- 1: 3seconds, 2: 5 seconds

begin 
	
	frequency_divider : process(clk) -- frequency divider for 3 seconds period
		begin 
			if (rising_edge(clk)) then 
				if (counter1 = 74999999) then -- every time counter reach that value
					clktemp1 <= NOT(clktemp1); -- clock pulse
					counter1 <= 0; -- reset counter
				else
					counter1 <= counter1 + 1;
				end if;
			end if;
		end process;
		
		frequency_divider2 : process(clk) -- frequency divider for 5 seconds period
		begin 
			if (rising_edge(clk)) then 
				if (counter2 = 149999999) then -- every time counter reach that value
					clktemp2 <= NOT(clktemp2); -- clock pulse
					counter2 <= 0; -- reset counter
				else
					counter2 <= counter2 + 1;
				end if;
			end if;
		end process;

		process(clktemp1, rst, switch)
			begin
				if (rst = '0' ) then -- if rst is pressed
					count_out <= "000"; -- reset the counter 
					count_out1 <= '1'; -- turn on 4th LED 
				
	
				elsif(switch = '1' AND startup = '1') then -- if startup
					count_out <= "111"; -- turn all LEDs on 
					count_out1 <= '1'; -- as well as 4th LED 
					
				elsif(switch = '1') then -- if switch goes to zero
					count_out1 <= '1'; -- turn on 4th LED
					threeseconds <= '1'; -- trigger the threeseconds condition
					-- threeseconds condition will turn on 4thLED for 3 secs
				
					
				elsif (switch = '0' and rising_edge(clktemp1)) then
					count_out <= "011"; -- start first state counter at 3
					
					count_out <= count_out - 1; -- decrement (down counter)
					
					if(threeseconds = '1') then -- if threeseconds is on 
						count_out1 <= '0'; -- turn off 4th LED 
						threeseconds <= '0'; -- reset threeseconds
					end if;
					
					if(count_out = "000" OR startup = '1') then -- if counter reach 000 
						threeseconds <= '1';  -- set threeseconds condition
						count_out1 <= '1'; -- turn on 4th LED
						startup <= '0'; -- clear startup condition 
					end if;
					
					if(count_out /= "000" AND startup = '0') then
						count_out1 <= '0'; -- turn off 4th LED when counter isn't 000
					end if;
					
					
					if (firststatecondition = '1') then  --start first state at 011
						count_out <= "011";
						firststatecondition <= '0';
					elsif(count_out = "000" and firststatecondition = '0') then
						count_out <= "111"; -- when counter reaches 000, go to 111
							
					end if;						
				end if;
		end process;
		output <= NOT(count_out);  -- invert the output 
		
		
		process(clktemp2, rst, switch)
		begin
			if(rst = '0') then -- when rst button is pressed 
				 fiveseconds <= '1'; -- five seconds before turning off 4th LED
			elsif(falling_edge(clktemp2) AND fiveseconds = '1') then
				count_out2 <= '0'; -- turn off 4th LED
				fiveseconds <= '0'; -- clear fiveseconds condition
			end if;		
		end process;
		output1 <= NOT(count_out1 OR count_out2); -- inverting the two count 
	
end behavioural;
