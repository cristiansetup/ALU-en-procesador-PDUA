-------------------------------------------------------
-- ADD SUB test bech
-- Cristian Durán
--	Organización de computadores
--	01-04-2022
-------------------------------------------------------
LIBRARY IEEE;
USE ieee.std_logic_1164.all;
-------------------------------------------------------
ENTITY add_sub_tb IS
END ENTITY;

ARCHITECTURE testbench OF add_sub_tb IS
COMPONENT add_sub IS
	PORT(	  a			:	IN		STD_LOGIC_VECTOR(7 DOWNTO 0);
			  b			:	IN		STD_LOGIC_VECTOR(7 DOWNTO 0);
			  addn_sub	:	IN 	STD_LOGIC;
			  s			:	OUT	STD_LOGIC_VECTOR(7 DOWNTO 0);
			  cout		:	OUT	STD_LOGIC);
END COMPONENT;

	SIGNAL		a_tb			:	STD_LOGIC_VECTOR(7 DOWNTO 0);
	SIGNAL		b_tb			:	STD_LOGIC_VECTOR(7 DOWNTO 0);
	SIGNAL		addn_sub_tb	:	STD_LOGIC;
	SIGNAL		s_tb			:	STD_LOGIC_VECTOR(7 DOWNTO 0);
	SIGNAL		cout_tb		:	STD_LOGIC;
	
BEGIN

	UUT: add_sub port map(
										a_tb,
										b_tb,
										addn_sub_tb,
										s_tb,
										cout_tb);
	signal_generation: PROCESS
	
	BEGIN

	--Test vector 1--
	a_tb				<=	"00010001";
	b_tb				<=	"00100011";
	addn_sub_tb		<=	'1';
	cout_tb			<=	'1';
	s_tb				<=	"11111111"; 
	WAIT FOR 200 ns;


   END PROCESS signal_generation;
END ARCHITECTURE;

	