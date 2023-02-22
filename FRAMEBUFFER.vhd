
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity FRAMEBUFFER is
    Port ( PIXEL : in  unsigned (10 downto 0);
		LINE : in  unsigned (9 downto 0);
		BG_COLOR : in std_logic_vector(11 downto 0);
		VISIBLE : in STD_LOGIC;
		CLK : in  STD_LOGIC;
		RED : out  STD_LOGIC_VECTOR (3 downto 0) := (others => '0');
		GREEN : out  STD_LOGIC_VECTOR (3 downto 0) := (others => '0');
		BLUE : out  STD_LOGIC_VECTOR (3 downto 0) := (others => '0'));
end FRAMEBUFFER;

architecture Behavioral of FRAMEBUFFER is
	signal current_bg_color : std_logic_vector(11 downto 0) := (others => '0');
begin
	process(CLK) begin
		if(rising_edge(CLK)) then

			if(line > 900) then
				current_bg_color <= BG_COLOR;
			end if;

			if(VISIBLE = '1') then
				if(current_bg_color = "000000000000")then -- No background
					if(pixel < 228) then -- white
						RED 	<= "1111";
						GREEN <= "1111";
						BLUE	<= "1111";
					elsif(pixel < 456) then -- yellow
						RED 	<= "1111";
						GREEN <= "1111";
						BLUE	<= "0000";
					elsif(pixel < 684) then -- magenta
						RED 	<= "1111";
						GREEN <= "0000";
						BLUE	<= "1111";
					elsif(pixel < 912) then -- red
						RED 	<= "1111";
						GREEN <= "0000";
						BLUE	<= "0000";
					elsif(pixel < 1140) then -- cyan 
						RED 	<= "0000";
						GREEN <= "1111";
						BLUE	<= "1111";
					elsif(pixel < 1368) then -- green
						RED 	<= "0000";
						GREEN <= "1111";
						BLUE	<= "0000";
					else -- blue
						RED 	<= "0000";
						GREEN <= "0000";
						BLUE	<= "1111";
					end if;
				else -- visible background
					RED 	<= current_bg_color(11 downto 8);
					GREEN <= current_bg_color(7 downto 4);
					BLUE	<= current_bg_color(3 downto 0);
				end if;
			else -- Non-visible parts of scanline
				RED 	<= "0000";
				GREEN <= "0000";
				BLUE	<= "0000";
			end if;
		end if;
	end process;
end Behavioral;

