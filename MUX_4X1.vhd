LIBRARY IEEE;
use IEEE.std_logic_1164.all;
use work.ee_232.all;
entity MUX_4X1 is

	port(I : in std_logic_vector(3 downto 0); 

		S : in std_logic_vector(1 downto 0); 

		O0 : out std_logic); 

end MUX_4X1;


architecture STRUCTURE of MUX_4X1 is


signal Y0,Y1: std_logic;


begin

	U0 : MUX_2XI port map (I(0), I(1), S(0), Y0);

	U1 : MUX_2XI port map (I(2), I(3), S(0), Y1);

	U2 : MUX_2XI port map (Y0, Y1, S(1), O0);

	

end STRUCTURE;
