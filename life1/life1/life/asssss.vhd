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
signal count_out : std_logic_vector (2 downto 0);
signal count_out1 : std_logic;
signal count_out2: std_logic;
signal firststatecondition : std_logic := '1';
signal fiveseconds : std_logic := '0';
signal threeseconds : std_logic := '0';
signal startup : std_logic := '1';

signal clktemp1, clktemp2 : std_logic;
signal counter1, counter2 : integer := 0;

begin 
	
	frequency_divider : process(clk)
		begin 
			if (rising_edge(clk)) then 
				if (counter1 = 74999999) then
					clktemp1 <= NOT(clktemp1);
					counter1 <= 0;
				else
					counter1 <= counter1 + 1;
				end if;
			end if;
		end process;
		
		frequency_divider2 : process(clk)
		begin 
			if (rising_edge(clk)) then 
				if (counter2 = 149999999) then
					clktemp2 <= NOT(clktemp2);
					counter2 <= 0;
				else
					counter2 <= counter2 + 1;
				end if;
			end if;
		end process;

		process(clktemp1, rst, switch)
			begin
				if (rst = '0' ) then 
					count_out <= "000";
					count_out1 <= '1';
				
	
				elsif(switch = '1' AND startup = '1') then
					count_out <= "111";
					count_out1 <= '1';
					
				elsif(switch = '1') then 
					count_out1 <= '1';
					
					
				elsif (switch = '0' and rising_edge(clktemp1)) then
					count_out <= "011";
					
					count_out <= count_out - 1;
					
					if(threeseconds = '1') then
						count_out1 <= '0';
						threeseconds <= '0';
					end if;
					
					if(count_out = "000" OR startup = '1') then 
						threeseconds <= '1';
						count_out1 <= '1';
						startup <= '0';
					end if;
					
					if(count_out /= "000" AND startup = '0') then
						count_out1 <= '0';
					end if;
					
					
					if (firststatecondition = '1') then  -- count_out = "000" and 
						count_out <= "011";
						firststatecondition <= '0';
					elsif(count_out = "000" and firststatecondition = '0') then
						count_out <= "111";
							
					end if;
			
					
				end if;
		end process;
		output <= NOT(count_out); 
		
		
		process(clktemp2, rst, switch)
		begin
			if(switch = '1' OR rst = '0') then
				 fiveseconds <= '1';
			elsif(falling_edge(clktemp2) AND fiveseconds = '1') then
				count_out2 <= '0';
				fiveseconds <= '0';
			end if;		
		end process;
		output1 <= NOT(count_out1 OR count_out2);
	
end behavioural;
