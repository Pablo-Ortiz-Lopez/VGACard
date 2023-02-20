----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:56:33 02/14/2023 
-- Design Name: 
-- Module Name:    CLOCK_BLOCK - Behavioral 
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
library UNISIM;
use UNISIM.VComponents.all;

entity CLOCK_BLOCK is
	Port ( 
		CLK_IN : in  STD_LOGIC;
		CLK_OUT0 : out  STD_LOGIC;
		CLK_OUT1 : out  STD_LOGIC
	);
end CLOCK_BLOCK;

architecture Behavioral of CLOCK_BLOCK is

	signal 
		CLKFBOUT,
		CLK_IN_CMT, 
		CLK_OUT1_CMT : std_logic;
	
begin

	IBUFG1 : IBUFG
		port map(
			I => CLK_IN,
			O => CLK_IN_CMT
		);
	PLL1 : PLL_BASE
		generic map (
			BANDWIDTH => "OPTIMIZED",
			CLKFBOUT_MULT => 13,
			CLKFBOUT_PHASE => 0.000,
			CLK_FEEDBACK => "CLKFBOUT",
			CLKIN_PERIOD => 20.000,
			COMPENSATION => "INTERNAL",
			DIVCLK_DIVIDE => 1,
			REF_JITTER => 0.010,
			CLKOUT0_DIVIDE => 6,
			CLKOUT0_DUTY_CYCLE => 0.500,
			CLKOUT0_PHASE => 0.000,
			RESET_ON_LOSS_OF_LOCK => FALSE
		)
		port map (
			CLKIN => CLK_IN_CMT,
			CLKFBIN => CLKFBOUT,
			CLKFBOUT => CLKFBOUT,
			RST => '0',
			CLKOUT0 => CLK_OUT1_CMT
		);
		
	BUFG0 : BUFG
		port map(
			I => CLK_IN_CMT,
			O => CLK_OUT0
		);
	BUFG1 : BUFG
		port map(
			I => CLK_OUT1_CMT,
			O => CLK_OUT1
		);
	

end Behavioral;

