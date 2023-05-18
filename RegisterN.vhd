library ieee;
use iee.std_logic_1164.all;
use iee.numeric_std.all;

entity RegisterN is 
	port(
		Reset        : in std_logic;
		P1/P2        : in std_logic;
		Start/Stop   : in std_logic;
		Time_adjust  : in std_logic;
		clock        : in std_logic;
		Time_extra   : out std_logic;
		Time_cozer   : out std_logic;
		Time_amassar : out std_logic;
		Time_levedar : out std_logic;
		Start/Stop   : out std_logic;
		Mode         : out std_
	);
end RegisterN;

architecture Behavioral of RegisterN is
	if risinf_a
	