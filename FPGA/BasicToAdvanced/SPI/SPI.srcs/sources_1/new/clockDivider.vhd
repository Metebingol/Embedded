
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity clockDivider is
    port (
        clock      : in std_logic;
        reset_D    : in std_logic;
        clockOut_D : inout std_logic
    );
end clockDivider;

architecture Behavioral of clockDivider is

begin
    process is
    begin
        if (reset_D = '0') then
        elsif (rising_edge(clock)) then
            clockOut_D <= not clockOut_D;
        end if;
    end process;

end Behavioral;