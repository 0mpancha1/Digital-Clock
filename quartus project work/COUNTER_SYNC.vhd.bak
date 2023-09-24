library IEEE;
use IEEE.std_logic_1164.all;
USE WORK.EE_232.ALL;

entity COUNTER_SYNC is 
	port(CLK : in std_logic;
		  RSTN : in std_logic;
		  UP_DN : in std_logic;
		  LDN : in std_logic; 
		  E : in std_logic;
		  D : in std_logic_vector(3 downto 0);
		  Q : inout std_logic_vector(3 downto 0));
end entity;

architecture STRUCTURE of COUNTER_SYNC is 

signal S,S1,S2,S3,QN,C : std_logic_vector(3 downto 0);
signal R : std_logic_vector(3 downto 0);
SIGNAL S4 : std_logic_vector(5 downto 0);
signal CN_1 : std_logic;

begin 
	U13 : OR_2 PORT MAP(Q(1),Q(2),S4(0));
	U14 : OR_2 PORT MAP(S4(0),Q(0),S4(1));
	U15 : AND_2 PORT MAP(Q(3),S4(1),S4(2));
	U16 : AND_2 PORT MAP(S4(2),UP_DN,S4(3));
	U17 : NOT_1 PORT MAP(S4(3),S4(4));
	U18 : NOT_1 PORT MAP(RSTN,S4(5));
	U19 : OR_2 PORT MAP(S4(4),S4(5),CN_1);
	
	

	
	U0 : XOR_2 port map (E,Q(0),S(0));
	U1 : MUX_2XI PORT MAP(D(0),S(0),LDN,S1(0));
	U2 : MUX_2XI PORT MAP(R(0),S1(0),RSTN,S2(0));
	U3 : D_FF port map(D => S2(0),CLRN => CN_1,PREN => '1',CLK => CLK, Q => Q(0),QN => QN(0));
	U4 : MUX_2XI PORT MAP(QN(0),Q(0),UP_DN,S3(0));
	U5 : AND_2 PORT MAP(S3(0),E,C(0));
	
   R(2 downto 1)<= ('0', '0');
	U6 : MUX_2XI port map('1', '0', UP_DN, R(0));
	U7 : MUX_2XI port map('1', '0', UP_DN, R(3));
	
			
	MUX_bank_1:
	 for i in 1 to 3 GENERATE
	  W0 : MUX_2XI PORT MAP(Q(i),QN(i),UP_DN,S3(i));
	  W1 : AND_2 PORT MAP(S3(i), C(i-1), C(i));
	  W2 : XOR_2 PORT MAP(C(i-1),Q(i),S(i));
	  W3 : MUX_2XI PORT MAP(D(i),S(i),LDN,S1(i));
	  W4 : MUX_2XI PORT MAP(R(i),S1(i),RSTN,S2(i));
	  W5 : D_FF port map(D => S2(i),CLRN => CN_1,PREN => '1',CLK => CLK, Q => Q(i),QN => QN(i));
	 end generate;
		
		
		
end STRUCTURE;