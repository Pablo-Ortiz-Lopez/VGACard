
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity SPI_SLAVE is
	generic(
		CPOL : std_logic := '0'   -- clock polarity
	);
	port (
		DATA_PRESENT    : out std_logic := '0';  -- Read byte on falling edge
		RECEIVED_BYTE   : out std_logic_vector(7 downto 0);  -- received byte
		ADDRESS			 : out std_logic_vector(31 downto 0);  -- received address
		SCLK            : in  std_logic;
		CS              : in  std_logic;
		MOSI            : in  std_logic
  );
end SPI_SLAVE;

architecture Behavioral of SPI_SLAVE is

	-- stores every first 7 bits in data phase
	signal shift_register   : std_logic_vector(6 downto 0);
	
	-- address counter
	signal address_internal : unsigned(31 downto 0) := (others => '0');
	
	-- stores first 31 bits of transaction
	signal address_shift_register : std_logic_vector(30 downto 0);  
	
	-- bit counter
	signal bitpos : integer range 0 to 7 := 0;
	
	-- determines if we're in N-Address phase or Data phase.
	signal spi_phase : integer range 0 to 4 := 0;
	
begin
	ADDRESS <= std_logic_vector(address_internal);
	
	process(SCLK,CS) begin
		if(CS='1') then -- CS = '1'
			-- Reset state when transaction finishes
			bitpos <= 0;
			spi_phase <= 0;
			shift_register <= (others => '0');
			address_shift_register <= (others => '0');
			address_internal <= (others => '0');
			DATA_PRESENT <= '0';
		elsif(SCLK'event and SCLK= not CPOL) then
			if(CS='0') then -- SCLK Sample time while CS = '0'
				
				if(spi_phase = 4) then -- receiving data
					shift_register <= shift_register(5 downto 0)&MOSI;
				else -- receiving address
					address_shift_register <= address_shift_register(29 downto 0)&MOSI;
				end if;
				
				if(bitpos = 7) then -- We got a byte
					bitpos <= 0;
					if (spi_phase = 4) then -- Byte is data
						-- increment address counter
						address_internal <= address_internal + 1; 
						RECEIVED_BYTE <= shift_register &MOSI;
						DATA_PRESENT <= '1';
					else -- Byte is address
						if(spi_phase = 3) then 
							-- Address is complete, save -1 because it will increment on first byte
							address_internal <= unsigned(address_shift_register &MOSI) -1;
						end if;
						spi_phase <= spi_phase +1;
					end if;
				else
					bitpos <= bitpos +1;
					DATA_PRESENT <= '0';
				end if;

			 end if;
		end if;
		
	end process;
	
end Behavioral;