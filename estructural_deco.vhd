library ieee;
use ieee.std_logic_1164.all;

entity practica_1 is
port (y: in std_logic_vector(3 downto 0);
 z: out std_logic_vector(3 downto 0));
end practica_1;

architecture estructural_deco of practica_1 is
signal x: std_logic_vector(7 downto 0);
begin
	deco_1: entity work.deco3a8 (funcional) port map ('1', y (2 downto 0), x);
	z(2)<=  (x(0) and '0') or
		(x(1) and '1') or
		(x(2) and '1') or
		(x(3) and '1') or
		(x(4) and y(3)) or
		(x(5) and y(3)) or
		(x(6) and y(3)) or
		(x(7) and y(3));
end estructural_deco;
