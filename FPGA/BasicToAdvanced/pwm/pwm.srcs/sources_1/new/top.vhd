library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity top is
    Port ( 
        clk             : in    std_logic;
        pwmPin          : out   std_logic
    );
end top;

architecture rtl of top is
    component clockSetup is 
        port(
            clk_in1     : in    std_logic;
            clk_out1    : out   std_logic;
            locked      : out   std_logic
        );
    end component;
    signal clockOut     : std_logic;
    signal reset        : std_logic;
begin
    clock   : clockSetup port map( 
        clk_in1     => clk,
        clk_out1    => clockOut,
        locked      => reset
    );


end rtl;
