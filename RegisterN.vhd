library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity RegisterN is 
    port (
        Reset        : in  std_logic;
        Selector     : in  std_logic; 
        Start_Stop   : in  std_logic; 
        Time_adjust  : in  unsigned(7 downto 0); -- Adicionei a restrição de tamanho
        clock        : in  std_logic;
        Time_extra   : out integer;
        Time_cozer   : out integer;
        Time_amassar : out integer;
        Time_levedar : out integer;
        Start_Stop_o : out std_logic;
        Mode1        : out std_logic;
        Mode2        : out std_logic
    );
end RegisterN;

architecture Behavioral of RegisterN is
begin
    process (clock)
    begin 
        if rising_edge(clock) then 
            if Reset = '0' then
                if Selector = '0' then 
                    Mode1 <= '1';
                    Time_cozer <= 10; 
                    Time_amassar <= 10;
                    Time_levedar <= 4; 
                elsif Selector = '1' then 
                    Mode2 <= '1'; 
                    Time_cozer <= 15; 
                    Time_amassar <= 8;
                    Time_levedar <= 10; 
                end if;
            elsif Reset = '1' then
                Start_Stop_o <= '0';
                Mode1 <= '0'; 
                Mode2 <= '0';
            end if;
        end if;
    end process;
end Behavioral;
