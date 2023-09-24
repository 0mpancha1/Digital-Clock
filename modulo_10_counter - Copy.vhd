library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;


entity MODULO_10_COUNTER is -- Entity declaration
	port(CLK : in std_logic; -- Clock input of the counter
		  RSTN : in std_logic; -- Active low reset input of the counter
		  Q : inout std_logic_vector(3 downto 0);
		  FQ : inout std_logic_vector(3 downto 0)); -- Output state of the counter
end entity;

architecture FUNCTIONALITY of MODULO_10_COUNTER is 

begin 
	process(CLK,RSTN)
	begin
		if RSTN = '0' then
			Q <= "0000" ;
		elsif CLK'event and CLK = '1' then
			Q <= Q + '1' ;
		end if;
	end process;
	
	process(Q(3))
	begin
		if RSTN = '0' or FQ <= "1010" then
			FQ <= "0000" ;
		elsif Q(3)'event and Q(3) = '1' then
			FQ <= FQ + '1' ;
		end if;
	end process;
		

end FUNCTIONALITY;

			