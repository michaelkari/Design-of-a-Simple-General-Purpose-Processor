
LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY reg8 IS
	PORT ( D             : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	       Resetn, Latch : IN STD_LOGIC ;
	       Q             : OUT STD_LOGIC_VECTOR(7 DOWNTO 0) );
END reg8 ;

ARCHITECTURE Behavior OF reg8 IS
	BEGIN
		PROCESS ( Resetn, Latch )
		BEGIN
			IF Resetn = '0' THEN
				Q <= "00000000";
			ELSIF Latch'EVENT AND Latch = '1' THEN
				Q <= D;
			END IF ;
		END PROCESS ;
END Behavior ;
