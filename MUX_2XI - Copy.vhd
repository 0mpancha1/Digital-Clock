LIBRARY IEEE;
use IEEE.std_logic_1164.all;
use work.ee_232.all;

entity MUX_2XI is
	port(x0,s,x1 : in std_logic;
	y : out std_logic);
	
end MUX_2XI;

architecture structure of MUX_2XI is

signal s1 : std_logic ;
signal s2 : std_logic ;
signal s3 : std_logic ;	

begin
u0 : and_2 port map(x0,s,s1);
u1 : not_1 port map(s,s2);
u3 : and_2 port map(s2,x1,s3);
u4 : or_2 port map(s1,s3,y);

end structure;
