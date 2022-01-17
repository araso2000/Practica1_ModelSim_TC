library ieee;
use ieee.std_logic_1164.all;

entity practica_1 is
port (y: in std_logic_vector(3 downto 0);
 z: out std_logic_vector(3 downto 0));
end practica_1;

architecture estructural_nor of practica_1 is
begin
	z(0)<=  not(not(y(2) or y(1) or not y(0)) or
		not(not y(3) or not y(2) or y(1)) or
		not(y(3) or y(0)));
		
end estructural_nor;