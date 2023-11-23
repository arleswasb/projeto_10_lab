library ieee ;
use ieee . std_logic_1164 .all;

entity FFD is
port(
	ck, Clear, Preset, Enable, D 	:in std_logic ;
	Q 				:out std_logic
);
end FFD;

architecture logica of FFD is
-------------------------------------------------
Component FFJK is
port(
	ck, Clear, Preset, Enable, J, K 	: in std_logic ;
	q 					: out std_logic
);
end Component;
--------------------------------------------------
signal qS, K : std_logic ;

begin

K <= not D;

Flip_FD : FFJK Port map (ck, Clear, Preset, Enable, D, K, qS);

Q <= qS;
end logica;