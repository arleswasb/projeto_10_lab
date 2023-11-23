library ieee;
use ieee.std_logic_1164.all;

entity Main_div_clk is
  port(
		SW0, SW1, SW3, Reset, Clock 	: in std_logic; --SW3 É O ENABLE DO ffjk E FfdE DIVIDE O CLOCK 23MHZ
		Atrio, Ventriculo, MPA, MPV	: out std_logic
);
end Main_div_clk;

architecture ckt of Main_div_clk is

component Main is
port(	SW0, SW1, SW16, Reset, Clock 	: in std_logic;
	Atrio, Ventriculo, MPA, MPV	: out std_logic
);
end component ;

component DIV_CLOCK is
   port (ck_in : in  std_logic;
         ck_out: out std_logic);
end component;

signal DIV_CLK, Clock_div: std_logic;

begin 

U0: DIV_CLOCK PORT MAP (Clock,Clock_div); 

process (SW3,DIV_CLK,Clock_div)
	begin
	if SW3 = '1' then
		DIV_CLK <= Clock_div;
	else DIV_CLK <= Clock;
	end if; 
end process;

main0: Main port map (SW0, SW1, SW3, Reset, DIV_CLK, Atrio, Ventriculo, MPA, MPV);

end ckt;
