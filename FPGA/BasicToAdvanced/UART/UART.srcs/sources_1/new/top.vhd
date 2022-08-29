library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity top is
        Port(
            clk             : in    std_logic;
            uartTXpin       : out   std_logic;
            uartRXpin       : in    std_logic;
            uartTXport      : out   std_logic;
            uartRXport      : in    std_logic          
        );
end top;



architecture Behavioral of top is
    -- Clock Importing
    component clockSetup is 
        port(
            clk_in1         : in    std_logic;
            clk_out1        : out   std_logic; -- 100 MHz
            locked          : out   std_logic
        );
    end component;
    -- Signal Declaration 
    signal clockOut         : std_logic;
    signal reset            : std_logic;
    -- 

    -- uartTransmit
    component uartTransmit is 
        generic(
            baudRate            : in    integer := 9600; 
            clockRate           : in    integer := 100_000_000;           
            stopBitNumber       : in    integer := 2;
            dataBitNumber       : in    integer := 8 
        );
        port(
            clock               : in    std_logic;     
            reset               : in    std_logic;
            dataIn              : in    std_logic_vector (7 downto 0) := (others => '1'); 
            uartType            : in    std_logic := '0';
            enable              : in    std_logic := '0';
            done                : out   std_logic := '0';
            busy                : out   std_logic := '1';
            TX_pin              : out   std_logic := '1';
            TX_port             : out   std_logic := '1'
        );
    end component;
    signal doneSignal               : std_logic;
    signal busySignal               : std_logic;
    signal enableSignal             : std_logic :='0';
    signal data                     : std_logic_vector (7 downto 0) := (others => '1'); 
    --


    -- uartReciever 
    component uartRecieve is
        generic(
            dataBitNumber   : in    integer := 8;
            stopBitNumber   : in    integer := 2;
            baudRate        : in    integer := 9600;
            clockRate       : in    integer := 100_000_000
            );
       port (
            clock           : in    std_logic;
            reset           : in    std_logic;
            RX_pin          : in    std_logic;  -- uartType : 1
            RX_port         : in    std_logic;  -- uartType : 0
            uartType        : in    std_logic := '0';
            enable          : in    std_logic := '0';
            dataOut         : out   std_logic_vector (dataBitNumber-1 downto 0);
            done            : out   std_logic := '0';
            busy            : out   std_logic := '1'
            ); 
    end component;
    signal doneSignalRX               : std_logic;
    signal busySignalRX               : std_logic;
    signal enableSignalRX             : std_logic :='0';
    signal dataRX                     : std_logic_vector (7 downto 0) := (others => '1');
    --

    type dataBase is array (14 downto 0) of std_logic_vector(7 downto 0);
    signal dataSet   : dataBase := ("01001000","01000101","01001100","01001100","01001111","01011110","01010111","01001111","01010010","01001100","01000100","01011100","01110010","01011100","01101110");

    begin

        -- Clock Initialize 
        clock : clockSetup 
        port map(
            clk_in1     => clk,
            clk_out1    => clockOut, 
            locked      => reset
            );
        -- 

        -- Transmit Initialize 
        transmitter : uartTransmit 
        generic map(
            baudRate        => 9600,
            clockRate       => 100_000_000,
            stopBitNumber   => 2,
            dataBitNumber   => 8
        )
        port map(
            clock           => clockOut,
            reset           => reset,
            dataIn          => data,
            uartType        => '0',
            enable          => enableSignal,
            done            => doneSignal,
            busy            => busySignal,
            TX_pin          => uartTXpin,
            TX_port         => uartTXport
        );
        --

        -- Recieve Initialize 
        reciever    : uartRecieve
        generic map(
            baudRate        => 9600,
            clockRate       => 100_000_000,
            stopBitNumber   => 2,
            dataBitNumber   => 8
        )
        port map(
            clock           => clockOut,
            reset           => reset,
            RX_pin          => uartRXpin,
            RX_port         => uartRXport,
            uartType        => '0',
            enable          => enableSignalRX,
            dataOut         => dataRX,
            done            => doneSignalRX,
            busy            => busySignalRX
        );
        --
end Behavioral;
