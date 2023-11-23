library ieee ;
use ieee.std_logic_1164 .all;

entity botao is
 port(
	ck, Botao: in std_logic;
   saida: out std_logic
);
end botao;

architecture logica of botao is
---------------------------------------------------------------  
component FFD is
port(
		ck, Clear, Preset, Enable,D: in std_logic ;
		Q : 	out std_logic);
end component;
-------------------------------------------------------------------
signal Q1, Q2, n_q1: std_logic;

begin
  
  U1: FFD port map(ck, '0', '0', '1', Botao, Q1);
  n_q1 <= not Q1;
  U2: FFD port map(ck, '0', '0', '1',n_q1, Q2);
  saida <= Q2 and Q1;
  
end logica;