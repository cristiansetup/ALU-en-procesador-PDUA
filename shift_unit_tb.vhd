-------------------------------------------------------
-- Shift Unit test bech
-- Cristian Durán
--	Organización de computadores
--	01-04-2022
-------------------------------------------------------
LIBRARY IEEE;
USE ieee.std_logic_1164.all;
-------------------------------------------------------
ENTITY shift_unit_tb IS
END ENTITY;

ARCHITECTURE testbench OF shift_unit_tb IS


-------------------------------------------------------
	SIGNAL		shamt_tb			:	STD_LOGIC_VECTOR(1 DOWNTO 0);
	SIGNAL		dataa_tb			:	STD_LOGIC_VECTOR(7 DOWNTO 0);
	SIGNAL		busC_tb		:	STD_LOGIC_VECTOR(7 Downto 0);
-------------------------------------------------------

BEGIN

	DUT: ENTITY work.shift_unit 
	port map(
										shamt	=>	shamt_tb,
										dataa	=>	dataa_tb,
										busC	=>	busC_tb);
										
	signal_generation: PROCESS
	
	BEGIN
	--Vectores de prueba--
  
	--Test vector 1--
	shamt_tb		<=	"00";
	dataa_tb		<=	"00010001";
	WAIT FOR 200 ns;
	
		--Test vector 2--
	shamt_tb		<=	"01";
	dataa_tb		<=	"00010001";
	WAIT FOR 200 ns;
	
		--Test vector 3--
	shamt_tb		<=	"10";
	dataa_tb		<=	"00010001";
	WAIT FOR 200 ns;
	
		--Test vector 4--
	shamt_tb		<=	"11";
	dataa_tb		<=	"00010001";
	WAIT FOR 200 ns;

   END PROCESS signal_generation;
END ARCHITECTURE;
