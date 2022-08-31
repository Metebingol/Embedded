
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity spiMaster is
    port (
        clock : in std_logic;
        reset : in std_logic
    );
end spiMaster;

architecture Behavioral of spiMaster is

    component clockDivider is
        port (
            clock      : in std_logic;
            reset_D    : in std_logic;
            clockOut_D : inout std_logic
        );
    end component;
    signal clock_D_2 : std_logic;

begin
    clockDivide : clockDivider port map(
        clock      => clock,
        reset_D    => reset,
        clockOut_D => clock_D_2
    );
end Behavioral;