-------------------------------------------------------
-- ADD SUB
-- Cristian Durán
--	Organización de computadores
--	01-04-2022
-------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
-------------------------------------------------------
ENTITY add_sub IS
	GENERIC(N1			:	INTEGER	:=8);
	PORT(	  a			:	IN		STD_LOGIC_VECTOR(N1-1 DOWNTO 0);
			  b			:	IN		STD_LOGIC_VECTOR(N1-1 DOWNTO 0);
			  addn_sub	:	IN 	STD_LOGIC;
			  s			:	OUT	STD_LOGIC_VECTOR(N1-1 DOWNTO 0);
			  cout		:	OUT	STD_LOGIC);
END ENTITY add_sub;

ARCHITECTURE rtl OF add_sub IS
	SIGNAL	bxor						:	STD_LOGIC_VECTOR(N1-1 DOWNTO 0);
	SIGNAL	add_nsub_vector		:	STD_LOGIC_VECTOR(N1-1	DOWNTO 0);
BEGIN

	vector_generation: FOR i in N1-1 DOWNTO 0 GENERATE
		add_nsub_vector(i)	<=	addn_sub;
	END GENERATE;
	
	bxor <=	b XOR	add_nsub_vector;
	
	adder: ENTITY work.n_bit_Adder
	GENERIC MAP	(N1		=>	N1)
	PORT MAP	(	 a			=>	a,
					 b			=>	bxor,
					 cin		=>	addn_sub,
					 s			=>	s,
					 cout		=>	cout);
END ARCHITECTURE;

