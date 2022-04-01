-------------------------------------------------------
-- N BIT ADDER test bech
-- Cristian Durán
--	Organización de computadores
--	01-04-2022
-------------------------------------------------------
LIBRARY IEEE;
USE ieee.std_logic_1164.all;
-------------------------------------------------------
ENTITY n_bit_adder_tb IS
END ENTITY;

ARCHITECTURE testbench OF n_bit_adder_tb IS
COMPONENT n_bit_adder IS
		PORT(	   a				:	IN		STD_LOGIC_VECTOR(7 DOWNTO 0);
					b				:	IN		STD_LOGIC_VECTOR(7 DOWNTO 0);
					cin			:	IN 	STD_LOGIC;
					s				:	OUT	STD_LOGIC_VECTOR(7 DOWNTO 0);
					cout			:	OUT	STD_LOGIC);
END COMPONENT;
-------------------------------------------------------
	SIGNAL		a_tb		:	STD_LOGIC_VECTOR(7 DOWNTO 0);
	SIGNAL		b_tb		:	STD_LOGIC_VECTOR(7 DOWNTO 0);
	SIGNAL		cin_tb	:	STD_LOGIC;
	SIGNAL		s_tb		:	STD_LOGIC_VECTOR(7 DOWNTO 0);
	SIGNAL		cout_tb	:	STD_LOGIC;
-------------------------------------------------------

BEGIN

	UUT: n_bit_adder port map(
										a_tb,
										b_tb,
										cin_tb,
										s_tb,
										cout_tb);
	signal_generation: PROCESS
	
	BEGIN
	
	--Vectores de prueba--
  
	--Test vector 1--
	a_tb		<=	"00010001";
	b_tb		<=	"00100011";
	cin_tb	<=	'1';
	cout_tb	<=	'1';
	s_tb		<=	"11111111"; 
	WAIT FOR 200 ns;

	--Test vector 2--
	a_tb		<=	"00010111";
	b_tb		<=	"00111111";
	cin_tb	<=	'0';
	cout_tb	<=	'0';
	s_tb		<=	"11111111"; 
	WAIT FOR 200 ns;
	
	--Test vector 3--
	a_tb		<=	"00010001";
	b_tb		<=	"00100011";
	cin_tb	<=	'0';
	cout_tb	<=	'1';
	s_tb		<=	"11111111"; 
	WAIT FOR 200 ns;

	--Test vector 4--
	a_tb		<=	"00010111";
	b_tb		<=	"00111111";
	cin_tb	<=	'1';
	cout_tb	<=	'0';
	s_tb		<=	"11111111"; 
	WAIT FOR 200 ns;
	
	
	
   END PROCESS signal_generation;
END ARCHITECTURE;
