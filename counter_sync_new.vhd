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

architecture structure of couNTER_SYNC_new is

signal QN : std_logic_vector(3 downto 0) ;
signal QD : std_logic_vector(3 downto 0) ;
signal CLK_D,INV_UP, INV_DN  : std_logic ;
signal INV_UP_RST, INV_DN_RST, RSTN_MUX_UPDN,  RSTN_MUX_UP,  RSTN_MUX_DN : std_logic_vector(3 downto 0);

signal Q_UD, C, QE_XOR, LDN_MUX, R0, R9 ,RSTN_MUX : std_logic_vector( 3 downto 0);

begin 

R0 <= '0' & '0' & '0' & '0';
R9 <= '1' & '0' & '0' & '1';



