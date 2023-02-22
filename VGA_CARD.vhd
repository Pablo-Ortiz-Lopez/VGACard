----------------------------------------------------------------------------------
-- Company: CoopWork Electronics
-- Engineer: Pablo Ortiz López	
-- 
-- Create Date: 19:32:55 02/12/2023 
-- Design Name: VGA Card
-- Module Name: VGA_CARD - Behavioral 
-- Project Name: VGA Card
-- Target Devices: Xilinx Spartan-6
-- Tool versions: ISE 14.7
-- Description: Receives input from SPI and produces a video signal out of a VGA port
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

--library UNISIM;
--use UNISIM.VComponents.all;

use work.all;

entity VGA_CARD is
	port ( 
		CLK : in  STD_LOGIC;
		RED : out  STD_LOGIC_VECTOR (3 downto 0) := (others => '0');
		GREEN : out  STD_LOGIC_VECTOR (3 downto 0) := (others => '0');
		BLUE : out  STD_LOGIC_VECTOR (3 downto 0) := (others => '0');
		HSYNC : out  STD_LOGIC := '0';
		VSYNC : out  STD_LOGIC := '0';
		SCLK : in STD_LOGIC;
		MOSI : in STD_LOGIC;
		CS   : in STD_LOGIC
	);
end VGA_CARD;

architecture Behavioral of VGA_CARD is
	
	signal PIXEL 	: unsigned (10 downto 0) := (others => '0');
	signal LINE 	: unsigned (9 downto 0) := (others => '0');
	signal BG_COLOR : std_logic_vector(11 downto 0) := (others => '0');
	signal VISIBLE_INTERNAL : std_logic := '0';
	signal CLK50, CLK108	: std_logic;

begin

	U1 : entity CLOCK_BLOCK port map(
		CLKIN => CLK,
		CLKOUT0 => CLK50,
		CLKOUT1 => CLK108
	);
	
	U2 : entity SYNC_MODULE port map(
		CLK => CLK108,
		HSYNC => HSYNC,
		VSYNC => VSYNC,
		VISIBLE => VISIBLE_INTERNAL,
		PIXEL => PIXEL,
		LINE => LINE
	);
	
	U3 : entity FRAMEBUFFER port map(
		CLK => CLK108,
		RED => RED,
		GREEN => GREEN,
		BLUE => BLUE,
		VISIBLE => VISIBLE_INTERNAL,
		PIXEL => PIXEL,
		LINE => LINE,
		BG_COLOR => BG_COLOR
	);
	
	U4 : entity DATA_IN  port map (
		CLK => CLK108,
		SCLK => SCLK,
		CS => CS,
		MOSI => MOSI,
		BG_COLOR => BG_COLOR
	);

end Behavioral;