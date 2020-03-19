library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity assignment2 is
port(clk_in, start_stop, reset : in std_logic;
     output: out std_logic);
end assignment2;

architecture behavioural of assignment2 is
--component threebitcount port (clk, rst, switch : in std_logic;
--										output : out std_logic_vector (2 downto 0));
--end component;
--
--component onebitcount port(clk, rst, switch : in std_logic;
--									output : out std_logic);
--end component;

signal clktemp1, clktemp2 : std_logic;
signal counter1, counter2 : integer range 0 to 24999999 := 0;

	begin 
	
	frequency_divider : process(clk_in)
		begin 
			if (rising_edge(clk_in)) then 
				if (counter1 = 24999999) then
					clktemp1 <= NOT(clktemp1);
					counter1 <= 0;
					output <= clktemp1;
				else
					counter1 <= counter1 + 1;
				end if;
			end if;
		end process;
		
--	frequency_divider2 : process(clk_in)
--		begin 
--			if (rising_edge(clk_in)) then 
--				if (counter2 = 24999999) then
--					clktemp2 <= NOT(clktemp1);
--					counter2 <= 0;
--				else
--					counter2 <= counter2 + 1;
--				end if;
--			end if;
--		end process;
--		
--	FASTBITCOUNTER : threebitcount
--		port map (clk => clktemp1,
--					switch => start_stop,
--					rst => reset,
--					output => LED);
--					
--	SLOWBITCOUNTER: onebitcount
--		port map (clk => clktemp2,
--					switch => start_stop,
--					rst => reset,
--					output => LED4);
end behavioural;

