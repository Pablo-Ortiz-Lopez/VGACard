----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:03:59 02/15/2023 
-- Design Name: 
-- Module Name:    FRAMEBUFFER - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

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

begin
	process(CLK) begin
		if(rising_edge(CLK)) then
			if(VISIBLE = '1') then
				if(BG_COLOR = "000000000000")then -- No background
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
						RED 	<= BG_COLOR(11 downto 8);
						GREEN <= BG_COLOR(7 downto 4);
						BLUE	<= BG_COLOR(3 downto 0);
				end if;
			else -- Non-visible parts of scanline
				RED 	<= "0000";
				GREEN <= "0000";
				BLUE	<= "0000";
			end if;
		end if;
	end process;
end Behavioral;

