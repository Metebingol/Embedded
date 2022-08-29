library IEEE;
use IEEE.STD_LOGIC_1164.all;
entity adcDriver is

    port (
        analogP      : in std_logic;
        analogN      : in std_logic;
        clock        : in std_logic;
        dataOut      : out std_logic_vector(15 downto 0);
        adcBusy      : out std_logic;
        auxSelection : in std_logic_vector (6 downto 0);
        doneWritten  : out std_logic
    );
end adcDriver;

architecture Behavioral of adcDriver is
    --For all information below, Links:
    -- Website 1 / Xlinx :https://docs.xilinx.com/r/en-US/ug480_7Series_XADC/7-Series-FPGAs-and-Zynq-7000-SoC-XADC-Dual-12-Bit-1-MSPS-Analog-to-Digital-Converter-User-Guide-UG480
    -- Website 2 / Digilent :https://digilent.com/reference/programmable-logic/basys-3/demos/xadc
    -- Website 3 / Digilent Githup : https://github.com/Digilent/Basys-3?_ga=2.213084948.1861971376.1659943613-2124132299.1659342944
    component xadcSetup
        port (
            di_in       : in std_logic_vector(15 downto 0); -- Data Input : No info needed 
            daddr_in    : in std_logic_vector(6 downto 0); -- The register adress of the ADC channel used in
            den_in      : in std_logic; -- Data read enable 
            dwe_in      : in std_logic; -- Data write enable
            drdy_out    : out std_logic; -- Data writing done
            do_out      : out std_logic_vector(15 downto 0); -- Data out 
            dclk_in     : in std_logic; -- Clock
            vp_in       : in std_logic; -- No info needed
            vn_in       : in std_logic; -- No info needed
            vauxp6      : in std_logic; -- Analog Positive 
            vauxn6      : in std_logic; -- Analog Negative 
            channel_out : out std_logic_vector(4 downto 0); -- No info needed 
            eoc_out     : out std_logic; -- Channel Out, Done conversion
            alarm_out   : out std_logic; -- Alarm out warning
            eos_out     : out std_logic; -- Sequantial Done conversion
            busy_out    : out std_logic -- Busy ADC
        );
    end component;
    signal DoneConversion : std_logic := '1';
begin

    adc : xadcSetup
    port map(
        di_in => (others => '0'),
        daddr_in    => auxSelection,
        den_in      => DoneConversion,
        dwe_in      => DoneConversion,
        drdy_out    => doneWritten,
        do_out      => dataOut,
        dclk_in     => clock,
        vp_in       => '0',
        vn_in       => '0',
        vauxp6      => analogP,
        vauxn6      => analogN,
        channel_out => open,
        eoc_out     => DoneConversion,
        alarm_out   => open,
        eos_out     => open,
        busy_out    => adcBusy
    );
end Behavioral;