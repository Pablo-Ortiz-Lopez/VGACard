
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.all;

entity DATA_IN is
	port (
		SCLK : in  std_logic;
		CS   : in  std_logic;
		MOSI : in  std_logic;
		BG_COLOR  : out std_logic_vector(11 downto 0)
  );
end DATA_IN;

architecture Behavioral of DATA_IN is
	
	--debug
	signal bg_color_signal : std_logic_vector(11 downto 0);

	-- SPI Outputs
	signal DATA_PRESENT    : std_logic;
	signal RECEIVED_BYTE   : std_logic_vector(7 downto 0);
	signal ADDRESS			  : std_logic_vector(31 downto 0);
	
begin
	BG_COLOR <= bg_color_signal;
	
	SPI : entity SPI_SLAVE
	generic map (
		CPOL => '0'
	)
	port map(
		SCLK => SCLK,
		CS => CS,
		MOSI => MOSI,
		DATA_PRESENT => DATA_PRESENT,
		ADDRESS => ADDRESS,
		RECEIVED_BYTE => RECEIVED_BYTE
	);
	
	process(DATA_PRESENT) begin
		if(DATA_PRESENT'event AND DATA_PRESENT = '0') then -- Read data on falling edge
			if(unsigned(ADDRESS) = 1) then
				bg_color_signal <= RECEIVED_BYTE(3 downto 0) & bg_color_signal(7 downto 0);
			elsif (unsigned(ADDRESS) = 2) then
				bg_color_signal <= bg_color_signal(11 downto 8) & RECEIVED_BYTE(7 downto 0);
			end if;
		end if;
	end process;
	
end Behavioral;