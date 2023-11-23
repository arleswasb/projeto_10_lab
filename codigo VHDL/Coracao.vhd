library ieee ;
use ieee.std_logic_1164 .all;

---------------------------------
entity Coracao is
port(
		SW0, SW1, SW16, Reset, Clock 	: in std_logic;
		Atrio, Ventriculo					: out std_logic
);
end Coracao ;
----------------------------------
architecture logica of Coracao is
---------------------------------
Component Contador_20Bits is
port(
		CLock, Clear, Enable : in std_logic ;
		s							: out std_logic_vector (19 downto 0)
);
end Component;
----------------------------------
signal BatimentosA, BatimentosB :	std_logic_vector(19 downto 0);
signal ATR_P, VTR_P, ResetA, ResetB :	std_logic;

	begin
	
	BatidasA: Contador_20Bits Port map(CLock, ResetA, SW16, BatimentosA);
	BatidasB: Contador_20Bits Port map(CLock, ResetB, SW16, BatimentosB);

	
	ATR_P <= BatimentosA(3) and  (not BatimentosA(4)) and BatimentosA(0);
	ResetA <= (BatimentosA(3) and  (not BatimentosA(4)) and BatimentosA(1)) or ResetB;
	VTR_P <= (BatimentosB(3)) and (not BatimentosB(4)) and BatimentosB(1);
	ResetB <= ((BatimentosB(3)) and  (not BatimentosB(4)) and BatimentosB(0) and BatimentosB(1)) or Reset;
	
	Atrio <= ATR_P and SW0;
	Ventriculo <= VTR_P and SW1;
	

end logica;
	
	
	