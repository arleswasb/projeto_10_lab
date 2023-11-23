library ieee ;
use ieee.std_logic_1164 .all;

---------------------------------
entity Contador_20Bits is
port(
		Clock, Clear, Enable : in std_logic ;
		s	: out std_logic_vector (19 downto 0)
);
end Contador_20Bits ;
----------------------------------

architecture logica of Contador_20Bits is
----------------------------------------------------
component FFJK is
port(
	ck, Clear, Preset, Enable, J, K 	: 	in std_logic ;
	q 								: 	out std_logic := '0'
);
end component;
----------------------------------------------------
signal Q, Q_Barra :	std_logic_vector(19 downto 0);
begin

  	Q_Barra(0) <= (not Q(0));
	Q_Barra(1) <= (not Q(1));
	Q_Barra(2) <= (not Q(2));
	Q_Barra(3) <= (not Q(3));
	Q_Barra(4) <= (not Q(4));
	Q_Barra(5) <= (not Q(5));
	Q_Barra(6) <= (not Q(6));
	Q_Barra(7) <= (not Q(7));
	Q_Barra(8) <= (not Q(8));
	Q_Barra(9) <= (not Q(9));
	Q_Barra(10) <= (not Q(10));
	Q_Barra(11) <= (not Q(11));
	Q_Barra(12) <= (not Q(12));
	Q_Barra(13) <= (not Q(13));
	Q_Barra(14) <= (not Q(14));
	Q_Barra(15) <= (not Q(15));
	Q_Barra(16) <= (not Q(16));
	Q_Barra(17) <= (not Q(17));
	Q_Barra(18) <= (not Q(18));
	Q_Barra(19) <= (not Q(19));
	
	s0: FFJK port map(Clock, Clear, '0', Enable, '1', '1', Q(0)); 
	s1: FFJK port map(Q_Barra(0), Clear, '0', Enable, '1', '1', Q(1)); 
	s2: FFJK port map(Q_Barra(1), Clear, '0', Enable, '1', '1', Q(2)); 
	s3: FFJK port map(Q_Barra(2), Clear, '0', Enable, '1', '1', Q(3)); 
	s4: FFJK port map(Q_Barra(3), Clear, '0', Enable, '1', '1', Q(4)); 
	s5: FFJK port map(Q_Barra(4), Clear, '0', Enable, '1', '1', Q(5)); 
	s6: FFJK port map(Q_Barra(5), Clear, '0', Enable, '1', '1', Q(6)); 
	s7: FFJK port map(Q_Barra(6), Clear, '0', Enable, '1', '1', Q(7)); 
	s8: FFJK port map(Q_Barra(7), Clear, '0', Enable, '1', '1', Q(8)); 
	s9: FFJK port map(Q_Barra(8), Clear, '0', Enable, '1', '1', Q(9));
	s10: FFJK port map(Q_Barra(10), Clear, '0', Enable, '1', '1', Q(10)); 
	s11: FFJK port map(Q_Barra(11), Clear, '0', Enable, '1', '1', Q(11)); 
	s12: FFJK port map(Q_Barra(12), Clear, '0', Enable, '1', '1', Q(12)); 
	s13: FFJK port map(Q_Barra(13), Clear, '0', Enable, '1', '1', Q(13)); 
	s14: FFJK port map(Q_Barra(14), Clear, '0', Enable, '1', '1', Q(14)); 
	s15: FFJK port map(Q_Barra(15), Clear, '0', Enable, '1', '1', Q(15)); 
	s16: FFJK port map(Q_Barra(16), Clear, '0', Enable, '1', '1', Q(16)); 
	s17: FFJK port map(Q_Barra(17), Clear, '0', Enable, '1', '1', Q(17)); 
	s18: FFJK port map(Q_Barra(18), Clear, '0', Enable, '1', '1', Q(18)); 
	s19: FFJK port map(Q_Barra(19), Clear, '0', Enable, '1', '1', Q(19)); 
	
	s(0) <= Q(0);
	s(1) <= Q(1);
	s(2) <= Q(2);
	s(3) <= Q(3);
	s(4) <= Q(4);
	s(5) <= Q(5);
	s(6) <= Q(6);
	s(7) <= Q(7);
	s(8) <= Q(8);
	s(9) <= Q(9);
	s(10) <= Q(10);
	s(11) <= Q(11);
	s(12) <= Q(12);
	s(13) <= Q(13);
	s(14) <= Q(14);
	s(15) <= Q(15);
	s(16) <= Q(16);
	s(17) <= Q(17);
	s(18) <= Q(18);
	s(19) <= Q(19);


end logica;