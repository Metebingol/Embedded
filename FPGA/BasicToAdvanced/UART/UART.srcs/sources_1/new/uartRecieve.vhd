library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity uartRecieve is
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
end uartRecieve;
architecture Behavioral of uartRecieve is
    type state is (startMode , stopMode, transmissionMode, freeMode);
    signal status           : state := freeMode;
begin
    process is 
    variable count          : integer   := 0;
    variable index          : integer   := 0;
    variable stopBit        : integer   := 0;
    begin
        if (reset = '0') then
        elsif (rising_edge(clock)) then
            count := count + 1;
            case status is 
                when startMode =>
                    if count = (clockRate/(baudRate*2)) then
                        if (uartType = '1') then
                            if (RX_pin = '0') then
                                status <= transmissionMode;
                                count :=0;
                            else 
                                status <= freeMode;
                            end if;
                        elsif (uartType = '0') then
                            if (RX_port = '0') then
                                status <= transmissionMode;
                                count :=0;
                            else 
                                status <= freeMode;
                            end if;
                        end if;
                    end if;    
                when transmissionMode =>
                    if count = (clockRate/baudRate) then
                        if (uartType = '1') then
                            dataOut(dataBitNumber-1-index) <= RX_pin;
                        elsif (uartType = '0') then
                            dataOut(dataBitNumber-1-index) <= RX_port;
                        end if;
                        count :=0;
                        index := index + 1;
                        if index = dataBitNumber then
                            status <= stopMode;
                            index :=0;
                            done <= '1'; 
                        end if;
                    end if;
                when stopMode           =>
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
                    if stopBit = stopBitNumber then
                        status <= freeMode;
                        stopBit := 0;
                    end if;
                when freeMode           =>
                    busy <= '0';
                    done <= '0';
                    count :=0;
                    if enable = '1' then
                        if (uartType = '1') then
                            if (RX_pin = '0') then
                                status <= startMode;
                                busy <= '1';
                            end if;
                        elsif (uartType = '0') then
                            if (RX_port = '0') then
                                status <= startMode;
                                busy <= '1';
                            end if;
                        end if;
                    end if;
            end case;
        end if;
    end process;
end Behavioral;
