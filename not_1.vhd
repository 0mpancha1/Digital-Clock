library ieee;
use ieee.std_logic_1164.all;

entity not_1 is

	port( I0 : in std_logic;
	O0 : out std_logic);
	
end entity;

architecture Functionality of not_1 is
begin
	O0 <= not I0 ;
	
end Functionality;




