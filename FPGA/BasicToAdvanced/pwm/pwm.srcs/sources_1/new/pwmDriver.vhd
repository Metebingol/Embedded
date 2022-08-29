library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity pwmDriver is
    generic(
        clockFrequency  : in    integer :=100_000_000;   -- 100_000_000 Hz 
        pwmPercent      : in    integer :=0;            -- over 100
        pwmFrequency    : in    integer :=40            -- kHz
    );
    Port ( 
        clock           : in    std_logic;
        reset           : in    std_logic;
        enable          : in    std_logic;
        feedbackpin     : in    std_logic;
        errorFeedback   : out   std_logic_vector (1 downto 0);
        feedback        : out   integer;
        pwmPin          : out   std_logic
    );
end pwmDriver;



architecture pwmDrive of pwmDriver is

    type ERRORLIST is (OverPercent, OverFrequency, Unknown, NoError); -- 11,10,01,00
    signal ErrorPWM             : ERRORLIST := NoError;
    signal InsideEnable         : boolean   := TRUE;
begin

    process is 
        variable count          : integer :=0;
        variable countFeedback  : integer :=0;
        variable countstorer    : integer :=0;
        variable signalstorer   : std_logic :='0';
        variable turnNumber     : integer :=0;
    begin
        if (reset = '0') then
        elsif (rising_edge(clock) and InsideEnable and enable ='1') then
            count := count + 1;
            countFeedback := countFeedback + 1;
            if pwmPercent > 100 then
                InsideEnable <= FALSE;
                ErrorPWM <= OverPercent;
            elsif (pwmFrequency *4 > clockFrequency ) then
                InsideEnable <= FALSE;
                ErrorPWM <= OverFrequency;
            end if;
            if (count < ((clockFrequency/pwmFrequency)*(pwmPercent/100))) then
                pwmPin <= '1';
            elsif (count >= ((clockFrequency/pwmFrequency)*(pwmPercent/100)) and count < (clockFrequency/pwmFrequency)) then
                pwmPin <= '0';
            elsif (count = (clockFrequency/pwmFrequency)) then
                count := 0;
            else 
                InsideEnable <= FALSE;
            end if;

            if (abs(countstorer - countFeedback ) >10) then
                countstorer := countFeedback;
                if not (signalstorer = feedbackpin) then
                    turnNumber := turnNumber + 1;
                end if;
                signalstorer := feedbackpin; 
            end if;
            if (countFeedback = (clockFrequency/pwmFrequency) * 4) then
                feedback <= turnNumber;
                turnNumber := 0;
                countFeedback :=0;
                signalStorer := '0';
            end if;

            case ErrorPWM is
                when NoError        => errorFeedback <= "00";
                when OverPercent    => errorFeedback <= "11";
                when OverFrequency  => errorFeedback <= "10";
                when Unknown        => errorFeedback <= "01";  
            end case; 
        
        end if;
    end process;






end pwmDrive;
