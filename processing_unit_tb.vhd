-------------------------------------------------------
-- Processing Unit test bech
-- Cristian Durán
--	Organización de computadores
--	01-04-2022
-------------------------------------------------------
LIBRARY IEEE;
USE ieee.std_logic_1164.all;
-------------------------------------------------------
ENTITY processing_unit_tb IS
END ENTITY;

ARCHITECTURE testbench OF processing_unit_tb IS


-------------------------------------------------------
	SIGNAL		dataa_tb		:	STD_LOGIC_VECTOR(7 DOWNTO 0);
	SIGNAL		datab_tb		:	STD_LOGIC_VECTOR(7 DOWNTO 0);
	SIGNAL		selop_tb		:	STD_LOGIC_VECTOR(2 Downto 0);
	SIGNAL		result_tb	:	STD_LOGIC_VECTOR(7 DOWNTO 0);
	SIGNAL		cout_tb		:	STD_LOGIC;
-------------------------------------------------------

BEGIN

	DUT: ENTITY work.processing_unit 
	port map(
										dataa		=>	dataa_tb,
										datab		=>	datab_tb,
										selop		=>	selop_tb,
										result	=>	result_tb,
										cout		=>	cout_tb);
	signal_generation: PROCESS
	
	BEGIN
	--Vectores de prueba--
  
	--Test vector 1--
	selop_tb		<=	"000";
	dataa_tb		<=	"00010001";
	datab_tb		<=	"00100011";
	WAIT FOR 200 ns;
	
		--Test vector 2--
	selop_tb		<=	"001";
	dataa_tb		<=	"00010001";
	datab_tb		<=	"00100011";
	WAIT FOR 200 ns;
	
		--Test vector 3--
	selop_tb		<=	"010";
	dataa_tb		<=	"00010001";
	datab_tb		<=	"00100011";
	WAIT FOR 200 ns;
	
		--Test vector 4--
	selop_tb		<=	"011";
	dataa_tb		<=	"00010001";
	datab_tb		<=	"00100011";
	WAIT FOR 200 ns;
	
		--Test vector 5--
	selop_tb		<=	"100";
	dataa_tb		<=	"00010001";
	datab_tb		<=	"00100011";
	WAIT FOR 200 ns;
	
		--Test vector 6--
	selop_tb		<=	"101";
	dataa_tb		<=	"00010001";
	datab_tb		<=	"00100011";
	WAIT FOR 200 ns;
	
		--Test vector 7--
	selop_tb		<=	"110";
	dataa_tb		<=	"00010001";
	datab_tb		<=	"00100011";
	WAIT FOR 200 ns;
	
		--Test vector 8--
	selop_tb		<=	"111";
	dataa_tb		<=	"00010001";
	datab_tb		<=	"00100011";
	WAIT FOR 200 ns;

		--Test vector 9--
	selop_tb		<=	"101";
	dataa_tb		<=	"11111111";
	datab_tb		<=	"00000001";
	WAIT FOR 200 ns;	
	
   END PROCESS signal_generation;
END ARCHITECTURE;
