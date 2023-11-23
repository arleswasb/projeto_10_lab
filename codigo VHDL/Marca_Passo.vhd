library ieee ;
use ieee.std_logic_1164 .all;

---------------------------------
entity Marca_Passo is
port(
		SA, SV, SW16, Reset, Clock 	: in std_logic;
		PA, PV								: out std_logic
);
end Marca_Passo ;
----------------------------------
architecture logica of Marca_Passo is
---------------------------------
Component Contador_20Bits is
port(
		CLock, Clear, Enable : in std_logic ;
		s							: out std_logic_vector (19 downto 0)
);
end Component;
----------------------------------
signal Pulsos_Atrio, Pulsos_Ventriculo :	std_logic_vector(19 downto 0);
signal SWA, SWV, ATR_N, VTR_N :	std_logic;

	begin
	
	Sinal_Atrio: Contador_20Bits Port map(CLock, SWA, SW16, Pulsos_Atrio);
	Sinal_Ventriculo: Contador_20Bits Port map(CLock, SWV, SW16, Pulsos_Ventriculo);
	
	
	
	ATR_N <= Pulsos_Atrio(3) and  (not Pulsos_Atrio(4)) and Pulsos_Atrio(0);
	SWA <= SA or Reset or (Pulsos_Atrio(3) and  (not Pulsos_Atrio(4)) and Pulsos_Atrio(1)) or SWV;
	
	
	VTR_N <= (Pulsos_Ventriculo(3)) and (not Pulsos_Ventriculo(4)) and Pulsos_Ventriculo(1);
	SWV <= SV or ((Pulsos_Ventriculo(3)) and  (not Pulsos_Ventriculo(4)) and Pulsos_Ventriculo(0) and Pulsos_Ventriculo(1)) or Reset;
	
	
	PA <= not SA and ATR_N;
	PV <= not SV and VTR_N;	

end logica;
	