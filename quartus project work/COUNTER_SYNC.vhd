library IEEE;
use IEEE.std_logic_1164.all;
USE WORK.EE_232.ALL;

entity COUNTER_SYNC is 
	port(CLK : in std_logic;
		  RSTN : in std_logic;
		  UP_DN : in std_logic;
		  LDN : in std_logic; 
		  E : in std_logic;
		  D : in std_logic_vector(5 downto 0);
		  Q : inout std_logic_vector(5 downto 0));
end entity;

architecture STRUCTURE of COUNTER_SYNC is 

signal S,S1,S2,S3,QN,C : std_logic_vector(5 downto 0);
signal R : std_logic_vector(5 downto 0);
SIGNAL S4 : std_logic_vector(5 downto 0);
signal CN_1 : std_logic;

begin 
			
	MUX_bank_1:
	 for i in 1 to 5 GENERATE
	  W0 : MUX_2XI PORT MAP(Q(i),QN(i),UP_DN,S3(i));
	  W1 : AND_2 PORT MAP(S3(i), C(i-1), C(i));
	  W2 : XOR_2 PORT MAP(C(i-1),Q(i),S(i));
	  W3 : MUX_2XI PORT MAP(D(i),S(i),LDN,S1(i));
	  W4 : MUX_2XI PORT MAP(R(i),S1(i),RSTN,S2(i));
	  W5 : D_FF port map(D => S2(i),CLRN => CN_1,PREN => '1',CLK => CLK, Q => Q(i),QN => QN(i));
	 end generate;
		
		
		
end STRUCTURE;