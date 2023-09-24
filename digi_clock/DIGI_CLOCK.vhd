library IEEE;
use IEEE.std_logic_1164.all;
use work.EE_232.all;

entity DIGI_CLOCK is
	port( CLK: in std_logic;
			UP_DN: in std_logic;--sw[1]
			LDN: in std_logic_vector(2 downto 0);--sw[3,4,5]
			E: in std_logic;--sw[2]
			D: in std_logic_vector(3 downto 0);--sw[6,7,8,9]
			S: in std_logic;--sw[0]
			D1, D2, D3, D4, D5, D6: out std_logic_vector(6 downto 0));--ssd
end DIGI_CLOCK;

architecture FUNC of DIGI_CLOCK is

	signal Q1, Q2, Q3, Q4, Q5, Q6: std_logic_vector(3 downto 0);
	signal PHY_RSTN: std_logic;
	signal RSTN1, RSTN2, RSTN3, RSTN4, RSTN5, RSTN6: std_logic;
	signal E1, E2, E3, E4, E5, E6: std_logic;
	signal LDN1, LDN2, LDN3, LDN4, LDN5, LDN6: std_logic;
	signal V1, V2, V3, V4, V5, V6: std_logic;
	
begin

--uncomment when using in the board
--U0: CLK_DVD port map(CLK, CLK_OUT);

PHY_RSTN<= (not(LDN(2))) or (not(LDN(1))) or (not(LDN(0))) or (not(S));

--first place of seconds
RSTN1 <= (Q1(2) or (NOT(Q1(3))) or (NOT(Q1(0))) or Q1(1)) and (PHY_RSTN);
LDN1 <= (LDN(2) or LDN(1) or (NOT(LDN(0)))) or (NOT(S)); 
U1 : GEN_COUNTER port map(CLK, RSTN1, UP_DN, LDN1, E, D, Q1);
U2 : BCD2SSD port map(Q1, D1, V1);

E1 <= Q1(3) and (not(Q1(2))) and (not(Q1(1))) and Q1(0);

--second place of second
RSTN2 <= (Q2(3) or (NOT(Q2(2))) or (NOT(Q2(0))) or Q2(1) OR RSTN1) and (PHY_RSTN); 
LDN2 <= (LDN(2) or LDN(0) or (NOT(LDN(1)))) or (NOT(S)); 
U3 : GEN_COUNTER port map(CLK, RSTN2, UP_DN, LDN2, E1, D, Q2);
U4 : BCD2SSD port map(Q2, D2, V2);

E2 <= E1 and ((not(Q2(3))) and Q2(2) and (not(Q2(1))) and Q2(0)); 

--first place of minute 
RSTN3 <= (Q3(2) or (NOT(Q3(3))) or (not(Q3(0))) or Q3(1) OR RSTN2) and (PHY_RSTN);
LDN3 <= (LDN(2) or (NOT(LDN(1))) or (NOT(LDN(0)))) or (NOT(s)); 
U5 : GEN_COUNTER port map(CLK, RSTN3, UP_DN, LDN3, E2, D, Q3);
U6 : BCD2SSD port map(Q3, D3, V3);

E3 <= E2 and Q3(3) and (not(Q3(2))) and (not(Q3(1))) and Q3(0); 

--second place of minute
RSTN4 <= (Q4(3) or (NOT(Q4(2))) or (NOT(Q4(0))) or Q4(1) OR RSTN3) and (PHY_RSTN); 
LDN4 <= (LDN(0) or LDN(1) or (NOT(LDN(2)))) or (NOT(s));  
U7 : GEN_COUNTER port map(CLK, RSTN4, UP_DN, LDN4, E3, D, Q4);
U8 : BCD2SSD port map(Q4, D4, V4);

E4 <= E3 and (not(Q4(3))) and Q4(2) and (not(Q4(1))) and Q4(0); 

--first place of hour
RSTN5 <= (((Q5(1) or (NOT(Q5(3))) or (NOT(Q5(0))) or Q5(2)) OR (RSTN4)) AND (RSTN6)) and (PHY_RSTN);  
LDN5 <= (LDN(1) or (NOT(LDN(2))) or (NOT(LDN(0)))) or (NOT(S)); 
U9 : GEN_COUNTER port map(CLK, RSTN5, UP_DN, LDN5, E4, D, Q5);
U10 : BCD2SSD port map(Q5, D5, V5);

E5 <= E4 and Q5(3) and (not(Q5(2))) and (not(Q5(1))) and Q5(0);  

--second place of hour 
RSTN6 <= ((Q6(3) or Q6(2) or (not(Q6(1))) or Q6(0)) OR (Q5(3) or (NOT(Q5(1))) or (NOT(Q5(0))) or Q5(2)) OR (RSTN4)) and (PHY_RSTN);
LDN6 <= (LDN(0) or (NOT(LDN(1))) or (NOT(LDN(2)))) or (NOT(S)); 
U11 : GEN_COUNTER port map(CLK, RSTN6, UP_DN, LDN6, E5, D, Q6);
U12 : BCD2SSD port map(Q6, D6, V6);

end FUNC;