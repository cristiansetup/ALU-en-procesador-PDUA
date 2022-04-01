-------------------------------------------------------
-- Flag register test bech
-- Cristian Durán
--	Organización de computadores
--	01-04-2022
-------------------------------------------------------
LIBRARY IEEE;
USE ieee.std_logic_1164.all;
-------------------------------------------------------
ENTITY flag_register_tb IS
END ENTITY;

ARCHITECTURE testbench OF flag_register_tb IS

-------------------------------------------------------
	SIGNAL		clk_tb		:	STD_LOGIC;
	SIGNAL		rst_tb		:	STD_LOGIC;
	SIGNAL		enaf_tb		:	STD_LOGIC;
	SIGNAL		dataa_tb		:	STD_LOGIC_VECTOR(7 DOWNTO 0);
	SIGNAL		carry_tb		:	STD_LOGIC;
	SIGNAL	   C_tb			:  STD_LOGIC;                     --Señal de test para C--
	SIGNAL		N_tb			:  STD_LOGIC;                     --Señal de test para N--
	SIGNAL		Z_tb			:  STD_LOGIC;                     --Señal de test para Z--
	SIGNAL 		P_tb			:  STD_LOGIC;                     --Señal de test para P--
-------------------------------------------------------

BEGIN
	DUT: ENTITY work.flag_register 
	port map(
										clk	=>	clk_tb,
										rst	=>	rst_tb,
										enaf	=>	enaf_tb,
										dataa	=>	dataa_tb,
										carry	=>	carry_tb,
										C		=>	C_tb,
										N		=>	N_tb,
										Z		=>	Z_tb,
										P		=>	P_tb);

	
	clock: process
	BEGIN
		clk_tb <= '1';
		WAIT FOR 10 ns;
		
		clk_tb <= '0';
		WAIT FOR 10 ns;

	END PROCESS;
	signal_generation: PROCESS		
	
	BEGIN
	
	--Vectores de prueba--
  
	--Test vector 1--
	dataa_tb		<=	"00010001";
	rst_tb		<=	'0';
	enaf_tb		<=	'1';
	carry_tb		<= '0';
	WAIT FOR 200 ns;

	--Test vector 2--	
	dataa_tb		<=	"00000000";
	rst_tb		<=	'0';
	enaf_tb		<=	'1';
	carry_tb		<= '0';
	WAIT FOR 200 ns;

	--Test vector 3--	
	dataa_tb		<=	"11111111";
	rst_tb		<=	'0';
	enaf_tb		<=	'1';
	carry_tb		<= '1';
	WAIT FOR 200 ns;

	--Test vector 4--
	dataa_tb		<=	"11111111";
	rst_tb		<=	'1';
	enaf_tb		<=	'1';
	carry_tb		<= '1';
	WAIT FOR 200 ns;

	--Test vector 5--
	
	dataa_tb		<=	"10000000";
	rst_tb		<=	'0';
	enaf_tb		<=	'1';
	carry_tb		<= '0';
	WAIT FOR 200 ns;
	
	--Test vector 6--
	dataa_tb		<=	"01100000";
	rst_tb		<=	'0';
	enaf_tb		<=	'1';
	carry_tb		<= '0';
	WAIT FOR 200 ns;
	
	
   END PROCESS signal_generation;
END ARCHITECTURE;


