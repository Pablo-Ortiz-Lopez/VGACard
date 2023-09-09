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
		CS   : in STD_LOGIC;
		mcb3_dram_dq                            : inout  std_logic_vector(15 downto 0);
		mcb3_dram_a                             : out std_logic_vector(13 downto 0);
		mcb3_dram_ba                            : out std_logic_vector(2 downto 0);
		mcb3_dram_ras_n                         : out std_logic;
		mcb3_dram_cas_n                         : out std_logic;
		mcb3_dram_we_n                          : out std_logic;
		mcb3_dram_odt                           : out std_logic;
		mcb3_dram_reset_n                       : out std_logic;
		mcb3_dram_cke                           : out std_logic;
		mcb3_dram_dm                            : out std_logic;
		mcb3_dram_udqs                          : inout  std_logic;
		mcb3_dram_udqs_n                        : inout  std_logic;
		mcb3_rzq                                : inout  std_logic;
		mcb3_zio                                : inout  std_logic;
		mcb3_dram_udm                           : out std_logic;
		mcb3_dram_dqs                           : inout  std_logic;
		mcb3_dram_dqs_n                         : inout  std_logic;
		mcb3_dram_ck                            : out std_logic;
		mcb3_dram_ck_n                          : out std_logic
	);
end VGA_CARD;

architecture Behavioral of VGA_CARD is
	
	signal PIXEL 	: unsigned (10 downto 0) := (others => '0');
	signal LINE 	: unsigned (9 downto 0) := (others => '0');
	signal BG_COLOR : std_logic_vector(11 downto 0) := (others => '0');
	signal VISIBLE_INTERNAL : std_logic := '0';
	signal CLK333, CLK108	: std_logic;

begin

	U1 : entity CLOCK_BLOCK port map(
		CLKIN => CLK,
		CLKOUT0 => CLK333,
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
	
	U4 : entity DATA_IN port map (
		CLK => CLK108,
		SCLK => SCLK,
		CS => CS,
		MOSI => MOSI,
		BG_COLOR => BG_COLOR
	);

	SRAM : entity SRAM_BLOCK(arc) port map(
		mcb3_dram_dq => mcb3_dram_dq,  
		mcb3_dram_a => mcb3_dram_a,  
		mcb3_dram_ba => mcb3_dram_ba,
		mcb3_dram_ras_n => mcb3_dram_ras_n,                        
		mcb3_dram_cas_n => mcb3_dram_cas_n,                        
		mcb3_dram_we_n => mcb3_dram_we_n,                          
		mcb3_dram_odt => mcb3_dram_odt,
		mcb3_dram_cke => mcb3_dram_cke,                          
		mcb3_dram_ck => mcb3_dram_ck,                          
		mcb3_dram_ck_n => mcb3_dram_ck_n,       
		mcb3_dram_dqs => mcb3_dram_dqs,                          
		mcb3_dram_dqs_n => mcb3_dram_dqs_n,
		mcb3_dram_reset_n => mcb3_dram_reset_n,
		mcb3_dram_udqs => mcb3_dram_udqs,     -- for X16 parts           
		mcb3_dram_udqs_n => mcb3_dram_udqs_n, -- for X16 parts
		mcb3_dram_udm => mcb3_dram_udm,       -- for X16 parts
		mcb3_dram_dm => mcb3_dram_dm,
		mcb3_rzq => mcb3_rzq,
		mcb3_zio => mcb3_zio,

		c3_sys_clk  => CLK333,
		c3_sys_rst_i => '0',      
		--c3_clk0	=> '0',
		--c3_rst0 => '0',
		--c3_calib_done => '0',    

		c3_p0_cmd_clk                           =>  CLK108,
		c3_p0_cmd_en                            =>  '0',
		c3_p0_cmd_instr                         =>  "000",
		c3_p0_cmd_bl                            =>  "00001",
		c3_p0_cmd_byte_addr                     =>  (others => '0'),
		--c3_p0_cmd_empty                         =>  '0',
		--c3_p0_cmd_full                          =>  '0',
		c3_p0_wr_clk                            =>  CLK108,
		c3_p0_wr_en                             =>  '0',
		c3_p0_wr_mask                           =>  "1100",
		c3_p0_wr_data                           =>  (others => '0'),
		--c3_p0_wr_full                           =>  '0',
		--c3_p0_wr_empty                          =>  '0',
		--c3_p0_wr_count                          =>  (others => '0'),
		--c3_p0_wr_underrun                       =>  '0',
		--c3_p0_wr_error                          =>  '0',
		c3_p0_rd_clk                            =>  CLK108,
		c3_p0_rd_en                             =>  '0',
		--c3_p0_rd_data                           =>  (others => '0'),
		--c3_p0_rd_full                           =>  '0',
		--c3_p0_rd_empty                          =>  '0',
		--c3_p0_rd_count                          =>  (others => '0'),
		--c3_p0_rd_overflow                       =>  '0',
		--c3_p0_rd_error                          =>  '0',

		c3_p1_cmd_clk                           =>  CLK108,
		c3_p1_cmd_en                            =>  '0',
		c3_p1_cmd_instr                         =>  (others => '0'),
		c3_p1_cmd_bl                            =>  (others => '0'),
		c3_p1_cmd_byte_addr                     =>  (others => '0'),
		--c3_p1_cmd_empty                         =>  '0',
		--c3_p1_cmd_full                          =>  '0',
		c3_p1_wr_clk                            =>  CLK108,
		c3_p1_wr_en                             =>  '0',
		c3_p1_wr_mask                           =>  (others => '0'),
		c3_p1_wr_data                           =>  (others => '0'),
		--c3_p1_wr_full                           =>  '0',
		--c3_p1_wr_empty                          =>  '0',
		--c3_p1_wr_count                          =>  (others => '0'),
		--c3_p1_wr_underrun                       =>  '0',
		--c3_p1_wr_error                          =>  '0',
		c3_p1_rd_clk                            =>  CLK108,
		c3_p1_rd_en                             =>  '0'
		--c3_p1_rd_data                           =>  (others => '0'),
		--c3_p1_rd_full                           =>  '0',
		--c3_p1_rd_empty                          =>  '0',
		--c3_p1_rd_count                          =>  (others => '0'),
		--c3_p1_rd_overflow                       =>  '0',
		--c3_p1_rd_error                          =>  '0'
	);

end Behavioral;