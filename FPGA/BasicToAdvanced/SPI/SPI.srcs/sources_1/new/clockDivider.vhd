
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity clockDivider is
    generic (
        ClockLevel_P : in std_logic := '0';
        clockFreSys  : in integer   := 100_000_000;
        clockFreOut  : in integer   := 1_000_000
    );
    port (
        clockSys        : in std_logic;
        resetSys        : in std_logic;
        clockOutDivided : out std_logic := ClockLevel_P
    );
end clockDivider;

architecture Behavioral of clockDivider is

begin
    process is
        variable count : integer := 0;
    begin
        if (resetSys = '0') then
        elsif (rising_edge(clockSys)) then
            count := count + 1;
            if (count = (clockFreSys/(clockFreOut * 2))) then
                count := 0;
                clockOutDivided <= not clockOutDivided;
            end if;
        end if;
    end process;

end Behavioral;