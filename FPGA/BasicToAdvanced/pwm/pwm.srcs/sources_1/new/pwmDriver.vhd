library IEEE;
use IEEE.STD_LOGIC_1164.all;
entity pwmDriver is
    generic (
        clockFrequency : in integer := 100_000_000; -- Clcok frequency  
        pwmPercent     : in integer := 0; -- 0-100
        pwmFrequency   : in integer := 40 -- PWM frequency 
    );
    port (
        clock         : in std_logic; -- clock
        reset         : in std_logic; -- locked 
        enable        : in std_logic; -- enable PWM IP
        feedbackpin   : in std_logic; -- 
        errorFeedback : out std_logic_vector (1 downto 0);
        feedback      : out integer;
        pwmPin        : out std_logic
    );
end pwmDriver;

architecture pwmDrive of pwmDriver is

    type ERRORLIST is (OverPercent, OverFrequency, Unknown, NoError); -- 11,10,01,00
    signal ErrorPWM     : ERRORLIST := NoError;
    signal InsideEnable : boolean   := TRUE;
begin

    process is
        variable count         : integer   := 0;
        variable countFeedback : integer   := 0;
        variable countstorer   : integer   := 0;
        variable signalstorer  : std_logic := '0';
        variable turnNumber    : integer   := 0;
    begin
        if (reset = '0') then
        elsif (rising_edge(clock) and InsideEnable and enable = '1') then
            count         := count + 1;
            countFeedback := countFeedback + 1;
            -- Error block
            if pwmPercent > 100 then
                InsideEnable <= FALSE;
                ErrorPWM     <= OverPercent;
            elsif (pwmFrequency * 4 > clockFrequency) then
                InsideEnable <= FALSE;
                ErrorPWM     <= OverFrequency;
            end if;
            -- 
            -- PWM block 
            if (count < ((clockFrequency/pwmFrequency) * (pwmPercent/100))) then
                pwmPin <= '1';
            elsif (count >= ((clockFrequency/pwmFrequency) * (pwmPercent/100)) and count < (clockFrequency/pwmFrequency)) then
                pwmPin <= '0';
            elsif (count >= (clockFrequency/pwmFrequency)) then
                count := 0;
            else
                InsideEnable <= FALSE;
            end if;
            -- PWM block
            -- Feedback block 
            if (abs(countstorer - countFeedback) > 10) then
                countstorer := countFeedback;
                if not (signalstorer = feedbackpin) then
                    turnNumber := turnNumber + 1;
                end if;
                signalstorer := feedbackpin;
            end if;
            --

            if (countFeedback = (clockFrequency/pwmFrequency) * 4) then
                feedback <= turnNumber;
                turnNumber    := 0;
                countFeedback := 0;
                signalStorer  := '0';
            end if;

            -- Error Handler 
            case ErrorPWM is
                when NoError       => errorFeedback       <= "00";
                when OverPercent   => errorFeedback   <= "11";
                when OverFrequency => errorFeedback <= "10";
                when Unknown       => errorFeedback       <= "01";
            end case;

        end if;
    end process;
end pwmDrive;