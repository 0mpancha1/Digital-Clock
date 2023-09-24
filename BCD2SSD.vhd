library IEEE;
use IEEE.std_logic_1164.all;
use work.EE_232.all;

entity BCD2SSD is -- Entity declaration
port(X : in std_logic_vector(3 downto 0); -- Input BCD number
	  Y : out std_logic_vector(6 downto 0); -- Output SSD code
	  F : out std_logic); -- Invalid input indicator
end BCD2SSD;

architecture STRUCTURE of BCD2SSD is
signal SN : std_logic_vector(3 downto 0);
signal S : std_logic_vector(17 downto 0);


begin

U0 : NOT_1 PORT MAP(X(0),SN(0));
U1 : NOT_1 PORT MAP(X(1),SN(1));
U2 : NOT_1 PORT MAP(X(2),SN(2));
U3 : NOT_1 PORT MAP(X(3),SN(3));--
U4 : AND_2 PORT MAP(SN(3),SN(2),S(0));--
U5 : AND_2 PORT MAP(S(0),SN(1),S(1));--
U6 : AND_2 PORT MAP(X(2),X(1),S(2));--
U7 : AND_2 PORT MAP(X(0),S(2),S(3));--
U8 : OR_2 PORT MAP(S(1),S(3),Y(0));--g verified
U9 : AND_2 PORT MAP(S(0),X(0),S(4));--
--U10 : AND_2 PORT MAP(SN(2),SN(0),S(5));
--U11 : AND_2 PORT MAP(S(5),X(3),S(6));
--U12 : AND_2 PORT MAP(SN(2),X(1),S(7));
--U13 : OR_2 PORT MAP(S(4),S(6),S(8));
--U14 : OR_2 PORT MAP(S(8),S(7),Y(1));
U10 : AND_2 PORT MAP(SN(2),X(1),S(5));--
U11 : AND_2 PORT MAP(X(1),X(0),S(6));--
U12: OR_2 PORT MAP(S(5),S(6),S(7));--
U13 : OR_2 PORT MAP(S(7),S(4),Y(1));--f verified
U15 : AND_2 PORT MAP(X(2),SN(1),S(8));--
U16 : OR_2 PORT MAP(S(8),X(0),Y(2));--e verified
U17 : AND_2 PORT MAP(X(0),S(1),S(9));--
U18 : XNOR_2 PORT MAP(X(1),X(0),S(10));--
U19 : AND_2 PORT MAP(S(10),X(2),S(11));--
U20 : OR_2 PORT MAP(S(11),S(9),Y(3));--d verified
U21 : AND_2 PORT MAP(SN(2),X(1),S(12));--
U22 : AND_2 PORT MAP(S(12),SN(0),Y(4));--c verified
U23 : XOR_2 PORT MAP(X(0),X(1),S(13));--
U24 : AND_2 PORT MAP(S(13),X(2),Y(5));--b verified
U25 : AND_2 PORT MAP(SN(1),SN(0),S(14));--
U26 : AND_2 PORT MAP(S(14),X(2),S(15));--
U27 : OR_2 PORT MAP(S(15),S(9),Y(6));--a verified
U28 : AND_2 PORT MAP(S(0),X(1),S(16));--
U29 : OR_2 PORT MAP(X(2),X(1),S(17));--
U30 : AND_2 PORT MAP(X(3),S(17),F);--F VERIFIED



end STRUCTURE;