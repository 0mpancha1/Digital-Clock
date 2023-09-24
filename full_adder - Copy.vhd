LIBRARY IEEE;
use IEEE.std_logic_1164.all;
use work.ee_232.all;

entity full_adder is 
	port(A, B,cI : in std_logic;
		  S, CO : out std_logic);
end full_adder ;

architecture structure of full_adder is 
	signal s0,c0,c1 : std_logic ;

begin
	HA0 : half_adder port map ( A,B,S0,C0);
	HA1 : half_adder port map (S0,cI,S,C1);
	U0 : or_2 port map (c0,c1,co);
 
end structure;
