library IEEE;
use IEEE.std_logic_1164.all;
use work.ee_232.all;

entity BCD_ADD_SUB is -- Entity declaration
	port(A, B : in std_logic_vector(3 downto 0);                               -- Input BCD numbers
		A_SBAR : in std_logic;								   -- 1 for addition, 0 for subtraction
            Y : out std_logic_vector(7 downto 0);                                -- Output XS3 number
            INVA : out std_logic;                                                           -- Invalid input A 
            INVB : out std_logic);                                                          -- Invalid input B 
end BCD_ADD_SUB; 

architecture Functionality of BCD_ADD_SUB is 

signal A_XS3, B_XS3,XS3, B_BIN, A_BIN, B_SUM,XS31 : std_logic_vector(3 downto 0);
signal S1 : std_logic_vector(4 downto 0);

signal T1, T2,T3,T4,T6,T5,T8,T7,T9,T10 : std_logic;
signal A_SBARN , A_VALID, B_VALID ,AB_VALID : std_logic;
signal SUM_ADD,SUM_ADD1, SUM_ADD2, SUM_ADD3, SUM_ADD4,SUM_ADD21, SUM_ADD22, SUM_ADD_21, SUM_ADD_22, VALID_SUM : std_logic_vector(7 downto 0);

begin

	V0 : VALID_BCD port map (A, A_VALID);
	V1 : VALID_BCD port map (B, B_VALID);	
	V2 : AND_2 port map (A_VALID, B_VALID, AB_VALID);

	INV0 : NOT_1 port map (A_VALID, INVA);
	INV1 : NOT_1 port map (B_VALID, INVB);
	
	A_XS3(0) <= not A(0);
	A_XS3(1) <= not A(1);
	A_XS3(2) <= A(2);
	A_XS3(3) <= A(3);
	
	B_XS3(0) <= not B(0);
	B_XS3(1) <= not B(1);
	B_XS3(2) <= B(2);
	B_XS3(3) <= B(3);
	
	XS3 <= '1' & '1' & '0' & '1';
	XS31<= '0' & '0' & '1' & '1';

	FA0 : nibble_adder port map(B_XS3,XS3,CIN => '0', SUM(3 downto 0) => B_BIN ,  SUM(4) => T2);
	FA1 : nibble_adder port map(A_XS3,XS3,CIN => '0' , SUM(3 downto 0) => A_BIN ,  SUM(4) => T1);
		
	A_SBARN <= not A_SBAR;


	P1 : for i in 0 to 3 generate 
	   X0 : XOR_2 port map(B_BIN(i), A_SBARN, B_SUM(i));
	end generate;
	
	FA2 : nibble_adder port map(A_BIN, B_SUM, CIN => A_SBARN, SUM => S1);
	FA3 : nibble_adder port map(S1(3 downto 0), XS31 , CIN => '0',SUM(4) => T9, SUM(3 downto 0) => SUM_ADD1(3 downto 0));
	SUM_ADD1(7 downto 4) <= '0' & '0' & '1' & '1';
	
	
	
	FA4 : nibble_adder port map (A_XS3, B_XS3, CIN => '0', SUM => SUM_ADD(4 downto 0));
      
    	FA5 : nibble_adder port map( SUM_ADD(3 downto 0), XS31, CIN => '0',SUM(4) =>T3, SUM(3 downto 0) => SUM_ADD21(3 downto 0));
    	FA6 : nibble_adder port map(A(0) => '1',A(1) => '0',A(2) => '0', A(3) => '0', B => XS31, CIN => '0', SUM(4) => T4, SUM(3 downto 0) => SUM_ADD21(7 downto 4));
  
	P2 : for i in 0 to 7 generate
		SUM_ADD_21(i) <= SUM_ADD(4) and SUM_ADD21(i);
	end generate;

    	FA7 : nibble_adder port map (SUM_ADD(3 downto 0), XS3, CIN => '0',SUM(4) => T10, SUM(3 downto 0) => SUM_ADD22(3 downto 0));
    	SUM_ADD22(7 downto 4) <= '0' & '0' & '1' & '1';
	
	P3 : for i in 0 to 7 generate
		SUM_ADD_22(i) <= (not SUM_ADD(4)) and SUM_ADD22(i);
	end generate;
	
	F10 : nibble_adder port map (SUM_ADD_21(3 downto 0), SUM_ADD_22(3 downto 0), CIN => '0', SUM(4) => T7, SUM(3 downto 0) => SUM_ADD2(3 downto 0));
	F11 : nibble_adder port map (SUM_ADD_21(7 downto 4), SUM_ADD_22(7 downto 4), CIN => '0', SUM(4) => T8, SUM(3 downto 0) => SUM_ADD2(7 downto 4));
    	
	P4 : for i in 0 to 7 generate 
		SUM_ADD3(i) <= A_SBARN and SUM_ADD1(i);
		SUM_ADD4(i) <= A_SBAR and SUM_ADD2(i);
	end generate;

	FA8 : nibble_adder port map (SUM_ADD3(3 downto 0), SUM_ADD4(3 downto 0), CIN => '0',SUM(4) => T5, SUM(3 downto 0) => VALID_SUM(3 downto 0));
	FA9 : nibble_adder port map (SUM_ADD3(7 downto 4), SUM_ADD4(7 downto 4), CIN => '0',SUM(4) => T6, SUM(3 downto 0) => VALID_SUM(7 downto 4));
	
	P5 : for i in 0 to 7 generate 
		FNL: AND_2 port map (VALID_SUM(i), AB_VALID, Y(i));
	end generate;

end Functionality;
