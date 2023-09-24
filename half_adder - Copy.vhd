LIBRARY IEEE;
use IEEE.std_logic_1164.all;
use work.ee_232.all;


entity half_adder is 
	port(A, B : in std_logic;
		  S, C : out std_logic);
end half_adder ;

architecture structure of half_adder is 
	
	
	
begin	
	u0 :xor_2 port map(A,B,S) ;
	u1 :AND_2 port map(A,B,C) ;

end structure ;

