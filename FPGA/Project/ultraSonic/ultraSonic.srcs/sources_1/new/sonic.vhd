----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/04/2022 11:14:37 AM
-- Design Name: 
-- Module Name: sonic - rtl
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity sonic is
  Port (
  clk  : in   std_logic;
  sw   : in   std_logic_vector (15 downto 0);
  btnC : in   std_logic;
  btnD : in   std_logic;
  btnU : in   std_logic;
  btnL : in   std_logic;
  btnR : in   std_logic;
  JA   : inout   std_logic_vector (2 downto 0);
  led  : out  std_logic_vector (15 downto 0);
  seg  : out std_logic_vector (6 downto 0)
   );
end sonic;


architecture rtl of sonic is
    component clkSetup 
    port(
    clk25   : out std_logic;
    clk50   : out std_logic;
    clk100  : out std_logic;
    locked  : out std_logic;
    clk_in1 : in  std_logic  
    );
    end component;
    signal clock25  : std_logic;
    signal clock50  : std_logic;
    signal clock100 : std_logic;
    signal reset    : std_logic;
    signal value    : std_logic_vector (3 downto 0) := "0000";
begin
    i_clock : clkSetup port map(
    clk25 => clock25,
    clk50 => clock50,
    clk100 => clock100,
    clk_in1 => clk,
    locked => reset
    );
    
    -- Distance Estimation
    -- Linear System Equation : y = Ax + B
    -- Distance Calculation  :  Time Elapsed * Speed of sound = Distance => 0.2 m / 340 m/s = 0,0006 second. 0,0006 second will be elapsed to calculated 10 cm. (becasue sound refledted Moedling);
    -- Sensor ))))   |:wall => the distance betwwen wall and sensor x => 2x : total distance.
    -- (0.0006) / (1/100,000,000) = 60000 => 60000 cycle equals 10 cm.
    process is 
    variable countForEcho : integer :=0; -- Variable for Contour 
    variable constantdir : integer  := 1; -- B 
    variable constantAddition : integer  := 52000; -- A Warning Not 600000 52000 because of sensor dimension.
    begin 
    -- switch to activate displayer switch code:14  
        if (sw(14) = '1') then 
            if (JA(2) = '1') then
                if reset = '0' then
                elsif (rising_edge(clock100)) then
                    countForEcho := countForEcho + 1; 
                    if (countForEcho < constantdir+constantAddition) then 
                        value <= "0000";
                     elsif countForEcho < (constantdir+constantAddition*2) then
                        value <= "0001";
                     elsif countForEcho < (constantdir+constantAddition*3) then
                        value <= "0010";
                     elsif countForEcho < (constantdir+constantAddition*4) then
                        value <= "0011";
                     elsif countForEcho < (constantdir+constantAddition*5) then
                        value <= "0100";
                     elsif countForEcho < (constantdir+constantAddition*6) then
                        value <= "0101";
                     elsif countForEcho < (constantdir+constantAddition*7) then
                        value <= "0110";
                     elsif countForEcho < (constantdir+constantAddition*8) then
                        value <= "0111";
                     elsif countForEcho < (constantdir+constantAddition*9) then
                        value <= "1000";
                     elsif countForEcho < (constantdir+constantAddition*10) then
                        value <= "1001";
                     elsif countForEcho < (constantdir+constantAddition*11) then
                        value <= "1010";
                     elsif countForEcho < (constantdir+constantAddition*12) then
                        value <= "1011";
                     elsif countForEcho < (constantdir+constantAddition*13) then
                        value <= "1100";
                     elsif countForEcho < (constantdir+constantAddition*14) then
                        value <= "1101";
                     elsif countForEcho < (constantdir+constantAddition*15) then
                        value <= "1110";
                     else
                     end if;
                else
                end if;  
            end if; 
        elsif (sw(14)= '1' and btnU = '1')then
        countForEcho := 0;
        value <= "1111";
        end if;
    end process;
    
    
-- Displayer Configuration 
process (value) is 
begin
    case value is
    when "0000" => seg <= "0000001"; -- "0"     
    when "0001" => seg <= "1001111"; -- "1" 
    when "0010" => seg <= "0010010"; -- "2" 
    when "0011" => seg <= "0000110"; -- "3" 
    when "0100" => seg <= "1001100"; -- "4" 
    when "0101" => seg <= "0100100"; -- "5" 
    when "0110" => seg <= "0100000"; -- "6" 
    when "0111" => seg <= "0001111"; -- "7" 
    when "1000" => seg <= "0000000"; -- "8"     
    when "1001" => seg <= "0000100"; -- "9" 
    when "1010" => seg <= "0000010"; -- a
    when "1011" => seg <= "1100000"; -- b
    when "1100" => seg <= "0110001"; -- C
    when "1101" => seg <= "1000010"; -- d
    when "1110" => seg <= "0110000"; -- E
    when "1111" => seg <= "0111000"; -- F
    end case;
end process;
-- 



    -- Triger ardunio 
    -- Procotol : if trigger(ja2) keep itself high voltage(level) more than 1 second, ardunio is triggered.
    -- Ardunio  : Ardunio Nano 
    -- Triger Pin: 2  From FPGA to Ardunio
    -- Triger Pin: 3  From Ardunio to Sensor
    -- Ardunio Code package:
                            --#define dataFromFPGA 2
                            --#define triger 3
                            --int val;
                            --void setup() {
                            --  pinMode(dataFromFPGA,INPUT);
                            --  pinMode(triger,OUTPUT);
                            --  Serial.begin(9600);
                            --  Serial.println("Hello\n");
                              
                            --}
                            
                            --void loop() {
                              
                            --  val = digitalRead(dataFromFPGA);
                              
                            --  if (val == 1){
                            --      Serial.println(val);
                            --      Serial.println("\n");
                            --      delay(1000);
                            --      val = digitalRead(dataFromFPGA);
                            --      if (val ==1){
                            --         digitalWrite(triger,HIGH);
                            --         delayMicroseconds(1);
                            --         digitalWrite(triger,LOW);
                            --         Serial.println("trigered\n");
                            --         delay(1000);
                            --        }
                            --    }
                            --  Serial.println(val);
                            --  Serial.println("\n");
                            --  delay(1);
                            --}
    process is 
    variable count : integer := 30000000;
    begin
    -- Time calculation : 30000000 * (1/25000000) = 1,2 second approximately
        if (sw(15) = '1') then
            if (reset = '0') then
            elsif (rising_edge(clock25)) then
                if (btnC = '1') then 
                    count := 0; -- Countour begining 
                    JA(1) <= '1'; -- Trigger : HIGH
                elsif count < 30000000 then
                    count := count + 1; -- Wait until time elapsed more than 1 second.
                elsif count = 30000000 then
                    JA(1) <= '0'; -- Trigger : Low 
                end if;
            end if;
        end if;
    end process;
    --
        
    
    -- Clock Check (outside led no:ja1)
    process is
    variable count : integer := 0;
    begin 
    -- Clock Calculation => Frequency :50 MHertz => Time elapsed for a wave cycle: 1 / 50 MHertz = 2 * 10^-8 second. 
    -- (2 * 10^-8) * 12,500,000 = 0.25 second => Led outside will blink each 0.5 second
        if reset ='0' then
        elsif rising_edge(clock50) then
            count := count + 1;
            if (count < 12500000) then 
                JA(0) <= '1';
            elsif (count < 25000000) then
                JA(0) <= '0';
            elsif (count = 25000000) then    
                count := 0; 
            end if;
        end if;
    end process;
    --
    
    
    
    
    -- Clock Check (inside led no:0)
    process is
    variable count : integer := 0;
    begin 
    -- Clock Calculation => Frequency :50 MHertz => Time elapsed for a wave cycle: 1 / 50 MHertz = 2 * 10^-8 second. 
    -- (2 * 10^-8) * 12,500,000 = 0.25 second => Led inside will blink each 0.5 second 
        if reset ='0' then
        elsif rising_edge(clock50) then
            count := count + 1;
            if (count < 12500000) then 
                led(0) <= '1';
            elsif (count < 25000000) then
                led(0) <= '0';
            elsif (count = 25000000) then    
                count := 0; 
            end if;
        end if;
    end process;
    --
end rtl;
