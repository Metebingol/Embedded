library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity top is
    port (
        clk : in std_logic
    );
end top;

architecture Behavioral of top is

    component clockSetup is
        port (
            clk_in1  : in std_logic;
            locked   : out std_logic;
            clk_out1 : out std_logic;
            clk_out2 : out std_logic
        );
    end component;
    signal clockOut100 : std_logic;
    signal clockOut50  : std_logic;
    signal reset       : std_logic;
begin

    clock : clockSetup port map(
        clk_in1  => clk,
        clk_out1 => clockOut100,
        clk_out2 => clockOut50,
        locked   => reset
    );

end Behavioral;