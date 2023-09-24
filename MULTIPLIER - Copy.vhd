library ieee; -- Library declaration
use ieee.std_logic_1164.all; -- Use std_logic_1164 package from ieee library 
use work.ee_232.all;

entity MULTIPLIER is -- Entity declaration
port(A, B : in std_logic_vector(3 downto 0); -- Inputs of the multiplier
     P : out std_logic_vector(7 downto 0)); -- Output of the multiplier

end MULTIPLIER;

architecture STRUCTURE of MULTIPLIER is   

 signal G0, G1, G2, G3, K : std_logic_vector(3 downto 0);
 signal H0, H1, H2 : std_logic_vector(4 downto 0);
	
begin

 A0 : AND_2 port map(A(0), B(0), G0(0));
 A1 : AND_2 port map(A(1), B(0), G0(1));
 A2 : AND_2 port map(A(2), B(0), G0(2));
 A3 : AND_2 port map(A(3), B(0), G0(3));
	
 A4 : AND_2 port map(A(0), B(1), G1(0));
 A5 : AND_2 port map(A(1), B(1), G1(1));
 A6 : AND_2 port map(A(2), B(1), G1(2));
 A7 : AND_2 port map(A(3), B(1), G1(3));
	
 K <= ('0', G0(3), G0(2), G0(1));
 FBA0 : nibble_adder port map(G1, K, '0', H0);
	
 A8 : AND_2 port map(A(0), B(2), G2(0));
 A9 : AND_2 port map(A(1), B(2), G2(1));
 A10 : AND_2 port map(A(2), B(2), G2(2));
 A11 : AND_2 port map(A(3), B(2), G2(3));
	
 FBA1 : nibble_adder port map(G2, H0(4 downto 1), '0', H1);
	
 A12 : AND_2 port map(A(0), B(3), G3(0));
 A13 : AND_2 port map(A(1), B(3), G3(1));
 A14 : AND_2 port map(A(2), B(3), G3(2));
 A15 : AND_2 port map(A(3), B(3), G3(3));
	
 FBA2 : nibble_adder port map(G3, H1(4 downto 1), '0', H2);
	
 P <= (H2(4), H2(3), H2(2), H2(1), H2(0), H1(0), H0(0), G0(0));
	
end STRUCTURE;
