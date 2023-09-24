library IEEE;
use IEEE.std_logic_1164.all;
use work.EE232.all;

entity DIGITAL_CLOCK is
port( CLK_OUT: in std_logic;
RSTN : in std_logic;
X1, X2, X3, X4: out std_logic_vector(6 downto 0));
end DIGITAL_CLOCK;

architecture func of DIGITAL_CLOCK is

--signal CLK_OUT: std_logic;
signal Q1, Q2, Q3, Q4: std_logic_vector(3 downto 0);
--signal X1, X2, X3, X4: std_logic_vector(6 downto 0);
signal F1, F2, F3, F4 ,QN1, QN2, QN3, QN4: std_logic;

begin

--U0: CLK_DVD port map(CLK, CLK_OUT);

--seconds
U1: MODULO_10 port map(CLK_OUT, RSTN, Q1);
U2: BCD2SSD port map(Q1, X1, F1);
U3: NOT_1 port map(Q1(3), QN1);

U4: MODULO_6 port map(CLK_OUT, QN1, Q2);
U5: BCD2SSD port map(Q2, X2, F2);
U6: NOT_1 port map(Q2(3), QN2);

--minutes
U7: MODULO_10 port map(CLK_OUT, QN2, Q3);
U8: BCD2SSD port map(Q3, X3, F3);
U9: NOT_1 port map(Q3(3), QN3);

U10: MODULO_6 port map(CLK_OUT, QN3, Q4);
U11: BCD2SSD port map(Q4, X4, F4);
U12: NOT_1 port map(Q4(3), QN4);


 


end func;