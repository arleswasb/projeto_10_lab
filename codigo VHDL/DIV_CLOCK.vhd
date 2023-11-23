library ieee;
use ieee.std_logic_1164.all;

entity DIV_CLOCK is
   port (ck_in : in  std_logic;
         ck_out: out std_logic);
end DIV_CLOCK;

architecture logica of DIV_CLOCK is
signal ax : std_logic := '0';

begin 
   process(ck_in)
      variable cnt: integer range 0 to 13500000 := 0;
   begin
      if (rising_edge(ck_in)) then
         if (cnt=3) then
            cnt:=0;
            ax <= not ax;
         else
            cnt:=cnt+1;
         end if;
      end if;
   end process;
   ck_out<=ax;

end logica;