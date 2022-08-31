library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity spiMaster is
    generic (
        slaveNumber : in integer := 1; -- Number of slave connected
        sysClock    : in integer := 100_000_000; -- Clock frequency of system
        sclk        : in integer := 1_000_000 -- Clock frequency of system
    );
    port (
        enableSystem : in std_logic := '0'; -- enable pin to activate the SPI master : HIGH active
        clockIN      : in std_logic;
        resetClock   : in std_logic;
        ClockLevel_P : in std_logic := '0'; -- Clock start level configuration parameter : Low => clock Low
        ClockEgde_P  : in std_logic := '0'; -- Clock Edge configuaration parameter: Low => Rising Edge
        dataout      : in std_logic_vector (7 downto 0); -- Data to send slave with MOSI
        slaveSelect  : in std_logic_vector (slaveNumber - 1 downto 0) -- array to active transmission
    );
end spiMaster;

architecture Behavioral of spiMaster is
    type states is (Ready, Transmission);
    signal stateMaster : states := Ready;
begin

    process is
    begin
        if (resetClock = '0') then
        elsif (rising_edge(clockIn)) then

        end if;

    end process;

end Behavioral;