library ieee ;
use ieee.std_logic_1164 .all;

entity Main is
port(
		SW0, SW1, SW16, Reset, Clock 	: in std_logic;
		Atrio, Ventriculo, MPA, MPV	: out std_logic
);
end Main ;

architecture ckt of Main is

Component Coracao is
port(
		SW0, SW1, SW16, Reset, Clock	: in std_logic;
		Atrio, Ventriculo		: out std_logic
);
end Component ;

Component Marca_Passo is
port(
		SA, SV, SW16, Reset, Clock	: in std_logic;
		PA, PV				: out std_logic
);
end Component ;

Component botao is
 port(
	ck, Botao: 	in std_logic;
   	saida: 		out std_logic
);
end Component;

Signal Clr, SA, SV, PWA, PWV: std_logic;


	Begin
	
	Bottom: botao Port map(Clock, Reset, Clr);
	
	M_P: Marca_Passo Port map(SA, SV, SW16, Clr, Clock, PWA, PWV);
	
	Heart: Coracao Port map(SW0, SW1, SW16, Clr, Clock, SA, SV);
	
	Atrio <= SA;
	Ventriculo <= SV;
	MPA <= PWA;
	MPV <= PWV;

end ckt;