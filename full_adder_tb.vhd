-------------------------------------------------------
-- FULL ADDER test bech
-- Cristian Durán
--	Organización de computadores
--	01-04-2022
-------------------------------------------------------
LIBRARY IEEE;
USE ieee.std_logic_1164.all;
-------------------------------------------------------
ENTITY full_adder_tb IS
END ENTITY;
-------------------------------------------------------
ARCHITECTURE testbench OF full_adder_tb IS
-------------------------------------------------------
	SIGNAL	x_tb		:	STD_LOGIC	:= '0';
	SIGNAL	y_tb		:	STD_LOGIC	:= '0';
	SIGNAL	cin_tb	:	STD_LOGIC	:= '0';
	SIGNAL	s_tb		:	STD_LOGIC;
	SIGNAL	cout_tb	:	STD_LOGIC;
-------------------------------------------------------
BEGIN

	DUT: ENTITY work.full_adder
	PORT MAP(		x		=>	x_tb,
						y		=> y_tb,
						cin	=> cin_tb,
						s		=> s_tb,
						cout	=> cout_tb);
	
	signal_generation: PROCESS
	BEGIN
		-- TEST VECTOR 1
		x_tb 		<= '0';
		y_tb 		<= '0';
		cin_tb 	<= '0';
		WAIT FOR 200 ns;
		-- TEST VECTOR 2
		x_tb 		<= '0';
		y_tb 		<= '1';
		cin_tb 	<= '0';
		WAIT FOR 200 ns;
		-- TEST VECTOR 3
		x_tb 		<= '1';
		y_tb 		<= '0';
		cin_tb 	<= '0';
		WAIT FOR 200 ns;
		-- TEST VECTOR 4
		x_tb 		<= '1';
		y_tb 		<= '1';
		cin_tb 	<= '0';
		WAIT FOR 200 ns;
		-- TEST VECTOR 5
		x_tb 		<= '0';
		y_tb 		<= '0';
		cin_tb 	<= '1';
		WAIT FOR 200 ns;
		-- TEST VECTOR 6
		x_tb 		<= '0';
		y_tb 		<= '1';
		cin_tb 	<= '1';
		WAIT FOR 200 ns;
		-- TEST VECTOR 7
		x_tb 		<= '1';
		y_tb 		<= '0';
		cin_tb 	<= '1';
		WAIT FOR 200 ns;
		-- TEST VECTOR 8
		x_tb 		<= '1';
		y_tb 		<= '1';
		cin_tb 	<= '1';
		WAIT FOR 200 ns;
		----------------
	END PROCESS signal_generation;
	
END ARCHITECTURE;
-------------------------------------------------------


