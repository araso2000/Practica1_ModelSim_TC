library ieee;
use ieee.std_logic_1164.all;

entity practica_1 is
port (y: in std_logic_vector(3 downto 0);
 z: out std_logic_vector(3 downto 0));
end practica_1;

architecture concurrente_pds of practica_1 is
begin
	Z(1)<=  (not y(3) or y(2) or not y(0)) and
		(not y(3) or y(2) or not y(1)) and
		(y(3) or y(1));
end concurrente_pds;