
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library UNISIM;
use UNISIM.VComponents.all;

entity CLOCK_BLOCK is
	Port ( 
		CLKIN : in  STD_LOGIC;
		CLKOUT0 : out  STD_LOGIC;
		CLKOUT1 : out  STD_LOGIC
	);
end CLOCK_BLOCK;

architecture Behavioral of CLOCK_BLOCK is

	signal CLKFBOUT, CLKIN_CMT : std_logic;
	
begin

	IBUFG1 : IBUFG
		port map(
			I => CLKIN,
			O => CLKIN_CMT
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
			CLKOUT0_DIVIDE => 13,
			CLKOUT0_DUTY_CYCLE => 0.500,
			CLKOUT0_PHASE => 0.000,
			CLKOUT1_DIVIDE => 6,
			CLKOUT1_DUTY_CYCLE => 0.500,
			CLKOUT1_PHASE => 0.000,
			RESET_ON_LOSS_OF_LOCK => FALSE
		)
		port map (
			CLKIN => CLKIN_CMT,
			CLKFBIN => CLKFBOUT,
			CLKFBOUT => CLKFBOUT,
			RST => '0',
			CLKOUT0 => CLKOUT0,
			CLKOUT1 => CLKOUT1
		);
	

end Behavioral;

