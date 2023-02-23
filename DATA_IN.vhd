
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.all;

entity DATA_IN is
	port (
		CLK  : in  std_logic;
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
	signal ADDRESS		   : std_logic_vector(31 downto 0);

	-- SPI DFF
	signal DATA_PRESENT_F1  : std_logic;
	signal RECEIVED_BYTE_F1 : std_logic_vector(7 downto 0);
	signal ADDRESS_F1	    : std_logic_vector(31 downto 0);
	signal DATA_PRESENT_F2  : std_logic;
	signal RECEIVED_BYTE_F2 : std_logic_vector(7 downto 0);
	signal ADDRESS_F2	    : std_logic_vector(31 downto 0);
	
begin
	
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
	
	process(CLK) begin
		-- Double flopping
		if(rising_edge(CLK)) then
			DATA_PRESENT_F1 <= DATA_PRESENT;
			DATA_PRESENT_F2 <= DATA_PRESENT_F1;

			RECEIVED_BYTE_F1 <= RECEIVED_BYTE;
			RECEIVED_BYTE_F2 <= RECEIVED_BYTE_F1;

			ADDRESS_F1 <= ADDRESS;
			ADDRESS_F2 <= ADDRESS_F1;
		end if;

		if(rising_edge(CLK)) then
			if(DATA_PRESENT_F2 = '1') then
				if(unsigned(ADDRESS_F2) = 0) then
					bg_color_signal <= RECEIVED_BYTE_F2(3 downto 0) & bg_color_signal(7 downto 0);
				elsif (unsigned(ADDRESS_F2) = 1) then
					bg_color_signal <= bg_color_signal(11 downto 8) & RECEIVED_BYTE_F2(7 downto 0);
				end if;
				BG_COLOR <= bg_color_signal;
			end if;
		end if;
	end process;
	
end Behavioral;