library IEEE;
use IEEE.STD_LOGIC_1164.all;
entity uartTransmit is
    generic (
        baudRate      : in integer := 9600; -- Baudrate : the bits number transmitted per second 
        clockRate     : in integer := 100_000_000; -- Clock frequency 
        stopBitNumber : in integer := 2; -- stop bit number 
        dataBitNumber : in integer := 8 -- data bit number 
    );
    port (
        clock    : in std_logic; -- clock
        reset    : in std_logic; -- locked 
        dataIn   : in std_logic_vector ((dataBitNumber - 1) downto 0) := (others => '1'); -- data transmitted vector 
        uartType : in std_logic                                       := '0'; -- Uart type to determine which method will be used in communication
        enable   : in std_logic                                       := '0'; -- Enable pin to turn on the UART IP => Enable: HIGH
        done     : out std_logic                                      := '0'; -- if transmitting data is done, done pin will be HIGH
        busy     : out std_logic                                      := '1'; -- When data transmitted, the busy pin HIGH 
        TX_pin   : out std_logic                                      := '1'; -- uartType : 1
        TX_port  : out std_logic                                      := '1' -- uartType : 0
    );
end uartTransmit;
architecture Behavioral of uartTransmit is
    type state is (startMode, stopMode, TransmissionMode, freeMode); -- State machine structure
    signal status     : state := freeMode;
    signal dataSended : std_logic_vector (7 downto 0);
begin
    process is
        variable count   : integer := 0;
        variable index   : integer := 0;
        variable stopNum : integer := 0;
    begin
        if (reset = '0') then
        elsif (rising_edge(clock)) then
            count := count + 1; -- counter 
            if (count >= clockRate/baudRate) then
                count := 0;
                case status is
                    when startMode => -- Start mode : In the UART protocol, the level of line is HIGH normally. When state is start, the level of line convert LOW.
                        if uartType = '1' then
                            TX_pin <= '0'; -- If the level of line is low , the transmission start 
                        elsif uartType = '0' then
                            TX_port <= '0'; -- If the level of line is low , the transmission start
                        end if;
                        busy   <= '1';
                        status <= TransmissionMode; -- state changes
                        index := 0; -- state changes
                    when TransmissionMode =>
                        if uartType = '1' then
                            TX_pin <= dataSended(dataBitNumber - 1 - index); -- Data transmit
                        elsif uartType = '0' then
                            TX_port <= dataSended(dataBitNumber - 1 - index); -- Data transmit 
                        end if;
                        index := index + 1;
                        if index = dataBitNumber then
                            status <= stopMode; -- state changes
                        end if;
                        stopNum := 0;
                    when stopMode =>
                        if uartType = '1' then
                            TX_pin <= '1';
                        elsif uartType = '0' then
                            TX_port <= '1';
                        end if;
                        stopNum := stopNum + 1;
                        if stopNum = stopBitNumber then -- the number of count equals the variable stopbitnum, condition true
                            status <= freeMode; -- state changes
                            done   <= '1';
                        end if;
                    when freeMode =>
                        if enable = '1' then
                            status     <= startMode; -- state changes
                            dataSended <= dataIn;
                        end if;
                        busy    <= '0';
                        done    <= '0';
                        TX_port <= '1';
                        TX_pin  <= '1';
                end case;
            end if;
        end if;
    end process;
end Behavioral;