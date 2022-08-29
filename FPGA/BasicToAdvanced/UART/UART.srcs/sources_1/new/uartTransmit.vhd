library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity uartTransmit is
    generic(
        baudRate            : in    integer := 9600; 
        clockRate           : in    integer := 100_000_000;           
        stopBitNumber       : in    integer := 2;
        dataBitNumber       : in    integer := 8
    );
    port (
        clock               : in    std_logic;     
        reset               : in    std_logic;
        dataIn              : in    std_logic_vector ((dataBitNumber-1) downto 0) := (others => '1'); 
        uartType            : in    std_logic := '0';
        enable              : in    std_logic := '0';
        done                : out   std_logic := '0';
        busy                : out   std_logic := '1';
        TX_pin              : out   std_logic := '1';   -- uartType : 1
        TX_port             : out   std_logic := '1'    -- uartType : 0
    );
end uartTransmit;
architecture Behavioral of uartTransmit is
    type state is (startMode, stopMode , TransmissionMode, freeMode);
    signal status       : state := freeMode;
    signal dataSended   : std_logic_vector (7 downto 0);
begin
    process is 
        variable count      : integer   := 0;
        variable index      : integer   := 0;
        variable stopNum    : integer   := 0;
    begin
        if (reset = '0') then
        elsif (rising_edge(clock)) then
            count := count + 1;
            if (count >= clockRate/baudRate) then
                count :=0;
                case status is
                    when startMode => 
                        if uartType = '1' then
                            TX_pin <= '0';
                        elsif uartType = '0' then
                            TX_port <= '0';
                        end if;
                        busy <= '1';
                        status <= TransmissionMode;
                        index :=0;
                    when TransmissionMode =>
                        if uartType = '1' then
                            TX_pin <= dataSended(dataBitNumber-1-index);
                        elsif uartType = '0' then
                            TX_port <= dataSended(dataBitNumber-1-index);
                        end if;
                        index := index + 1;
                        if index = dataBitNumber then
                            status <= stopMode;
                        end if;
                        stopNum := 0;
                    when stopMode =>
                        if uartType = '1' then
                            TX_pin <=  '1';
                        elsif uartType = '0' then
                            TX_port <= '1';
                        end if;
                        stopNum := stopNum + 1;
                        if stopNum = stopBitNumber then
                            status  <= freeMode;
                            done    <= '1';
                        end if; 
                    when freeMode =>
                        if enable = '1' then
                            status <= startMode;
                            dataSended <= dataIn;
                        end if;
                        busy <= '0';
                        done <= '0';
                        TX_port <= '1';
                        TX_pin  <= '1';
                end case;
            end if;
        end if; 
    end process;
end Behavioral;
