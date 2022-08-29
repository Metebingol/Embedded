library IEEE;
use IEEE.STD_LOGIC_1164.all;
entity top is
    port (
        analogP : in std_logic;
        analogN  : in std_logic;
        clk     : in std_logic;
        aux6P   : in std_logic;
        led     : out std_logic_vector (15 downto 0);
        aux6N   : in std_logic
    );
end top;

architecture Behavioral of top is


    
    component clockSetup is
        port (
            clk_in1  : in std_logic;
            clk_out1 : out std_logic;
            locked   : out std_logic
        );
    end component;
    signal clockOut : std_logic;
    signal reset    : std_logic;

    component adcDriver is
        port (
            analogP     : in std_logic;
            analogN     : in std_logic;
            auxSelection : in std_logic_vector (6 downto 0);
            clock       : in std_logic;
            dataOut     : out std_logic_vector(15 downto 0);
            adcBusy     : out std_logic;
            doneWritten : out std_logic
        );
    end component;
    signal dataDir      : std_logic_vector (15 downto 0);
    signal busy      : std_logic;
    signal done     : std_logic;
begin

    clock : clockSetup port map(
        clk_in1  => clk,
        clk_out1 => clockOut,
        locked   => reset
    );

    adc : adcDriver
    port map(
        analogP     => analogP,
        analogN     => analogN,
        auxSelection => "0010110",
        clock       => clockOut,
        dataOut     => dataDir,
        adcBusy     => busy,
        doneWritten => done
    );

    process is 
    begin 
        if (reset = '0') then
        elsif (rising_edge(clockOut)) then
            if done = '1' then
                led <= dataDir;
            end if;
        end if;
    end process;

end Behavioral;