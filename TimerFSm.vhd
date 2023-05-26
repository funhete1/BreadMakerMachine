library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity TimerFSM is
    generic(timeValue : integer := 6);
		port( newTime     : in std_logic;
            timerEnable : in std_logic;
            reset       : in std_logic;
            clk         : in std_logic;
            timeExp     : out std_logic);
end TimerFSM;

architecture Behavioral of TimerFSM is 
    signal s_counter : integer := 0;
begin
    process(clk)
    begin
          if (rising_edge(clk)) then
            if(reset = '1')then 
                s_counter <= 0;
                timeExp <= '0';
            elsif (s_counter = 0) then
                 if ((newTime and timerEnable) = '1') then
                      s_counter <= s_counter + 1;
                      timeExp <= '1';
                 end if;
            elsif(s_counter < timeValue) then
                 s_counter <= s_counter + 1;
            else 
                 s_counter <= 0;
                 timeExp <= '0';
            end if;
        end if;
    end process;
end Behavioral;