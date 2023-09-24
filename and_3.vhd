LIBRARY IEEE;
use IEEE.std_logic_1164.all;

entity and_3 is
	port(I0, I1, I2 : in std_logic;
		O0 : out std_logic);
end and_3 ;

architecture structure of and_3 is
component and_2 is
	port(I0,I1 : in std_logic;
		o0 :out std_logic) ;
 
end component;

signal s1 : std_logic ;

begin 
	U0 : and_2 port map ( I0, I1 , s1) ;
	U1 : and_2 port map (s1 , I2 , o0) ;
	
end structure;
