library ieee;
use ieee.std_logic_1164.all;

entity or_2 is

	port( I0,I1: in std_logic;
	O0 : out std_logic);
	
end entity;

architecture Functionality of or_2 is
begin
	O0 <= I0 or I1;
	
end Functionality;
