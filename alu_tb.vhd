-------------------------------------------------------
-- ALU test bech
-- Cristian Durán
--	Organización de computadores
--	01-04-2022
-------------------------------------------------------
LIBRARY IEEE;
USE ieee.std_logic_1164.all;
-------------------------------------------------------
ENTITY alu_tb IS
END ENTITY;

ARCHITECTURE testbench OF alu_tb IS

-------------------------------------------------------
	SIGNAL		clk_tb		:	STD_LOGIC;
	SIGNAL		rst_tb		:	STD_LOGIC;
	SIGNAL		busA_tb		:	STD_LOGIC_VECTOR(7 DOWNTO 0);
	SIGNAL		busB_tb		:	STD_LOGIC_VECTOR(7 DOWNTO 0);
	SIGNAL		selop_tb		:	STD_LOGIC_VECTOR(2 DOWNTO 0);
	SIGNAL		shamt_tb		:	STD_LOGIC_VECTOR(1 DOWNTO 0);
	SIGNAL		enaf_tb		:	STD_LOGIC;
	SIGNAL		busC_tb		:	STD_LOGIC_VECTOR(7 DOWNTO 0);
	SIGNAL		C_tb			:	STD_LOGIC;
	SIGNAL		N_tb			:	STD_LOGIC;
	SIGNAL		P_tb			:	STD_LOGIC;
	SIGNAL		Z_tb			:	STD_LOGIC;

-------------------------------------------------------
BEGIN


	DUT: ENTITY work.alu 
	PORT MAP(					
									clk	=>	clk_tb,
									rst	=>	rst_tb,
									busA	=>	busA_tb,
									busB	=>	busB_tb,
									selop	=>	selop_tb,
									shamt	=>	shamt_tb,
									enaf	=>	enaf_tb,
									busC	=>	busC_tb,
									C		=>	C_tb,
									N		=>	N_tb,
									P		=>	P_tb,
									Z		=>	Z_tb);

	
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
	rst_tb		<=	'1';
	busA_tb		<=	"00000000";
	busB_tb		<=	"01110001";
	selop_tb		<= "000";
	shamt_tb		<= "00";
	enaf_tb		<=	'1';
	WAIT FOR 200 ns;
	
		--Test vector 2--
	rst_tb		<=	'1';
	busA_tb		<=	"00000000";
	busB_tb		<=	"01110001";
	selop_tb		<= "000";
	shamt_tb		<= "00";
	enaf_tb		<=	'1';
	WAIT FOR 200 ns;
	
		--Test vector 3--
	rst_tb		<=	'1';
	busA_tb		<=	"00000000";
	busB_tb		<=	"01110001";
	selop_tb		<= "000";
	shamt_tb		<= "00";
	enaf_tb		<=	'1';
	WAIT FOR 200 ns;
  
	--Test vector 4--
	rst_tb		<=	'0';
	busA_tb		<=	"00000000";
	busB_tb		<=	"01110001";
	selop_tb		<= "000";
	shamt_tb		<= "00";
	enaf_tb		<=	'1';
	WAIT FOR 200 ns;
	
	--Test vector 5--
	rst_tb		<=	'0';
	busA_tb		<=	"10010001";
	busB_tb		<=	"01110001";
	selop_tb		<= "000";
	shamt_tb		<= "00";
	enaf_tb		<=	'1';
	WAIT FOR 200 ns;
	
	--Test vector 6--
	rst_tb		<=	'0';
	busA_tb		<=	"00010001";
	busB_tb		<=	"01110001";
	selop_tb		<= "001";
	shamt_tb		<= "00";
	enaf_tb		<=	'1';
	WAIT FOR 200 ns;
	
	--Test vector 7--
	rst_tb		<=	'0';
	busA_tb		<=	"00010001";
	busB_tb		<=	"01110001";
	selop_tb		<= "010";
	shamt_tb		<= "00";
	enaf_tb		<=	'1';
	WAIT FOR 200 ns;
	
	--Test vector 8--
	rst_tb		<=	'0';
	busA_tb		<=	"00010001";
	busB_tb		<=	"01110001";
	selop_tb		<= "011";
	shamt_tb		<= "00";
	enaf_tb		<=	'1';
	WAIT FOR 200 ns;
	
	--Test vector 9--
	rst_tb		<=	'0';
	busA_tb		<=	"00010001";
	busB_tb		<=	"01110001";
	selop_tb		<= "100";
	shamt_tb		<= "00";
	enaf_tb		<=	'1';
	WAIT FOR 200 ns;
	
	--Test vector 10--
	rst_tb		<=	'0';
	busA_tb		<=	"00010001";
	busB_tb		<=	"01110001";
	selop_tb		<= "101";
	shamt_tb		<= "00";
	enaf_tb		<=	'1';
	WAIT FOR 200 ns;
	
	--Test vector 11--
	rst_tb		<=	'0';
	busA_tb		<=	"00010001";
	busB_tb		<=	"01110001";
	selop_tb		<= "110";
	shamt_tb		<= "00";
	enaf_tb		<=	'1';
	WAIT FOR 200 ns;
	
	--Test vector 12--
	rst_tb		<=	'0';
	busA_tb		<=	"00010001";
	busB_tb		<=	"01110001";
	selop_tb		<= "111";
	shamt_tb		<= "00";
	enaf_tb		<=	'1';
	WAIT FOR 200 ns;
	
	--Test vector 13--
	rst_tb		<=	'0';
	busA_tb		<=	"00010001";
	busB_tb		<=	"01110001";
	selop_tb		<= "111";
	shamt_tb		<= "00";
	enaf_tb		<=	'1';
	WAIT FOR 200 ns;
	
	--Test vector 14--
	rst_tb		<=	'0';
	busA_tb		<=	"00010001";
	busB_tb		<=	"01110001";
	selop_tb		<= "000";
	shamt_tb		<= "01";
	enaf_tb		<=	'1';
	WAIT FOR 200 ns;
	
	--Test vector 15--
	rst_tb		<=	'1';
	busA_tb		<=	"00010001";
	busB_tb		<=	"01110001";
	selop_tb		<= "000";
	shamt_tb		<= "01";
	enaf_tb		<=	'1';
	WAIT FOR 200 ns;
	
	--Test vector 16--
	rst_tb		<=	'0';
	busA_tb		<=	"00010001";
	busB_tb		<=	"01110001";
	selop_tb		<= "000";
	shamt_tb		<= "10";
	enaf_tb		<=	'1';
	WAIT FOR 200 ns;
	
	--Test vector 17--
	rst_tb		<=	'0';
	busA_tb		<=	"00010001";
	busB_tb		<=	"01110001";
	selop_tb		<= "000";
	shamt_tb		<= "11";
	enaf_tb		<=	'1';
	WAIT FOR 200 ns;
	
	--Test vector 18--
	rst_tb		<=	'0';
	busA_tb		<=	"00000000";
	busB_tb		<=	"00000000";
	selop_tb		<= "101";
	shamt_tb		<= "00";
	enaf_tb		<=	'1';
	WAIT FOR 200 ns;
	
	--Test vector 19--
	rst_tb		<=	'0';
	busA_tb		<=	"10000000";
	busB_tb		<=	"00000000";
	selop_tb		<= "101";
	shamt_tb		<= "00";
	enaf_tb		<=	'1';
	WAIT FOR 200 ns;
	
	--Test vector 20--
	rst_tb		<=	'0';
	busA_tb		<=	"01000000";
	busB_tb		<=	"00000000";
	selop_tb		<= "101";
	shamt_tb		<= "00";
	enaf_tb		<=	'1';
	WAIT FOR 200 ns;

	--Test vector 21--
	rst_tb		<=	'0';
	busA_tb		<=	"01100000";
	busB_tb		<=	"00000000";
	selop_tb		<= "101";
	shamt_tb		<= "00";
	enaf_tb		<=	'1';
	WAIT FOR 200 ns;
	
		--Test vector 22--
	rst_tb		<=	'0';
	busA_tb		<=	"11111111";
	busB_tb		<=	"00000001";
	selop_tb		<= "101";
	shamt_tb		<= "00";
	enaf_tb		<=	'1';
	WAIT FOR 200 ns;
	
   END PROCESS signal_generation;
END ARCHITECTURE;
	