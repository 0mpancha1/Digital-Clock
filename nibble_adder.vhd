library ieee ;
use ieee.std_logic_1164.all ;
use work.ee_232.all ;

entity nibble_adder is
	port(A : in std_logic_vector(3 downto 0); -- First operand
			B : in std_logic_vector(3 downto 0); -- Second operand
			CIN : in std_logic; -- Carry-in to the first bit
			SUM : out std_logic_vector(4 downto 0)); -- 5 bit output
end nibble_ADDER;

architecture structure of nibble_ADDER is
	signal sig_c :std_logic_vector(4 downto 0) ;
	
begin
	fa_bank :
	for i in 0 to 3 generate
		fao : full_adder port map (a(i),b(i),sig_c(i),sum(i),sig_c(i+1) );
	end generate ;
	
	sig_c(0) <= cin;
	sum(4) <= sig_c(4);
	
end structure;
