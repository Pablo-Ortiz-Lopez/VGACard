----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:15:50 02/15/2023 
-- Design Name: 
-- Module Name:    SYNC_MODULE - Behavioral 
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

entity SYNC_MODULE is
	Port ( 
		CLK : in  STD_LOGIC;
		HSYNC : out  STD_LOGIC := '0';
		VSYNC : out  STD_LOGIC := '0';
		VISIBLE : out  STD_LOGIC;
		PIXEL : out  unsigned (10 downto 0);
		LINE : out  unsigned (9 downto 0)
	);
end SYNC_MODULE;

architecture Behavioral of SYNC_MODULE is

	signal pixel_internal : unsigned (10 downto 0) := (others => '0');
	signal line_internal : unsigned (9 downto 0) := (others => '0');
	
	-- VGA Timings for 1600x900 60Hz
	-- Horizontal
	constant LINE_WIDTH : integer := 1800;
	constant VISIBLE_WIDTH : integer := 1600;
	constant HSYNC_START : integer := 1624;
	constant HSYNC_END : integer := 1704;
	-- Vertical
	constant SCAN_HEIGHT : integer := 1000;
	constant VISIBLE_HEIGHT : integer := 900;
	constant VSYNC_START : integer := 901;
	constant VSYNC_END : integer := 904;
	
begin

	PIXEL <= pixel_internal;
	LINE <= line_internal;
	
	process(CLK) begin
		if(rising_edge(CLK)) then
			if(pixel_internal = LINE_WIDTH) and (line_internal = SCAN_HEIGHT) then
				pixel_internal <= (others => '0');
				line_internal <= (others => '0');
			elsif (pixel_internal = LINE_WIDTH) then
				pixel_internal <= (others => '0');
				line_internal <= line_internal +1;
			else
				pixel_internal <= pixel_internal +1;
			end if;
			
			if (pixel_internal = 0) and (line_internal < VISIBLE_HEIGHT) then
				visible <= '1';
			elsif (pixel_internal = VISIBLE_WIDTH) then
				visible <= '0';
			end if;
			
			if (pixel_internal = HSYNC_START) then
				HSYNC <= '1';
			elsif (pixel_internal = HSYNC_END) then
				HSYNC <= '0';
			end if;
			
			
			if (line_internal = VSYNC_START) then
				VSYNC <= '1';
			elsif (line_internal = VSYNC_END) then
				VSYNC <= '0';
			end if;
		end if;
	end process;

end Behavioral;

