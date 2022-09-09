library IEEE;
use IEEE.STD_LOGIC_1164.all;
entity uartRecieve is
    generic (
        dataBitNumber : in integer := 8; -- Data bit number which transmitted in UART
        stopBitNumber : in integer := 2; -- Stop bit number
        baudRate      : in integer := 9600; -- Baudrate : The bit number sended per second 9600, 115200 vb !!Warning : The clockFrequency must be bigger 100 times than baudrate.
        clockRate     : in integer := 100_000_000 -- The frequency of clock
    );
    port (
        clock    : in std_logic; -- Clcok
        reset    : in std_logic; -- Reset (locked)
        RX_pin   : in std_logic; -- uartType : 1
        RX_port  : in std_logic; -- uartType : 0
        uartType : in std_logic := '0'; -- Uart type to determine which method will be used in communication
        enable   : in std_logic := '0'; -- Enable pin to turn on the UART IP => Enable: HIGH
        dataOut  : out std_logic_vector (dataBitNumber - 1 downto 0); -- Data which will be sended 
        done     : out std_logic := '0'; -- if transmitting data is done, done pin will be HIGH
        busy     : out std_logic := '1' -- When data transmitted, the busy pin HIGH  
    );
end uartRecieve;
architecture Behavioral of uartRecieve is
    type state is (startMode, stopMode, transmissionMode, freeMode); -- State machine structure 
    signal status : state := freeMode;
begin
    process is
        variable count   : integer := 0;
        variable index   : integer := 0;
        variable stopBit : integer := 0;
    begin
        if (reset = '0') then
        elsif (rising_edge(clock)) then
            count := count + 1; -- Counter 
            case status is
                when startMode => -- Start mode : In the UART protocol, the level of line is HIGH normally. When state is start, the level of line convert LOW.
                    if count = (clockRate/(baudRate * 2)) then
                        if (uartType = '1') then
                            if (RX_pin = '0') then -- If the level of line is low , the transmission start 
                                status <= transmissionMode; -- state changes 
                                count := 0;
                            else
                                status <= freeMode;
                            end if;
                        elsif (uartType = '0') then -- If the level of line is low , the transmission start 
                            if (RX_port = '0') then
                                status <= transmissionMode; -- state changes 
                                count := 0;
                            else
                                status <= freeMode;
                            end if;
                        end if;
                    end if;
                when transmissionMode =>
                    if count = (clockRate/baudRate) then
                        if (uartType = '1') then
                            dataOut(dataBitNumber - 1 - index) <= RX_pin; -- Data read 
                        elsif (uartType = '0') then
                            dataOut(dataBitNumber - 1 - index) <= RX_port; -- Data read
                        end if;
                        count := 0;
                        index := index + 1;
                        if index = dataBitNumber then -- If the bits received equal the databitnumber variable, condition true 
                            status <= stopMode; -- mode change 
                            index := 0;
                            done <= '1';
                        end if;
                    end if;
                when stopMode =>
                    count := count + 1;
                    if count = (clockRate/baudRate) then
                        count := 0;
                        if (uartType = '1') then
                            if (RX_pin = '1') then
                                stopBit := stopBit + 1;
                            end if;
                        elsif (uartType = '0') then
                            if (RX_port = '1') then
                                stopBit := stopBit + 1;
                            end if;
                        end if;
                    end if;
                    if stopBit = stopBitNumber then -- stop bit number equals the variable stopbitnumber, condition true
                        status <= freeMode; -- mode change 
                        stopBit := 0;
                    end if;
                when freeMode =>
                    busy <= '0';
                    done <= '0';
                    count := 0;
                    if enable = '1' then
                        if (uartType = '1') then
                            if (RX_pin = '0') then
                                status <= startMode;
                                busy   <= '1';
                            end if;
                        elsif (uartType = '0') then
                            if (RX_port = '0') then
                                status <= startMode;
                                busy   <= '1';
                            end if;
                        end if;
                    end if;
            end case;
        end if;
    end process;
end Behavioral;