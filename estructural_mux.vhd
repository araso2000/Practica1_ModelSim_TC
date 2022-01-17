library ieee;
use ieee.std_logic_1164.all;

entity practica_1 is
port (y: in std_logic_vector(3 downto 0);
 z: out std_logic_vector(3 downto 0));
end practica_1;

architecture estructural_mux of practica_1 is
signal h: std_logic_vector(7 downto 0);
signal sel: std_logic_vector(2 downto 0);

begin
	mux: entity work.mux8a1(funcional) port map('1',h,sel,z(1));	
	sel(2) <= y(2);
	sel(1) <= y(1);
	sel(0) <= y(0);
	h(0) <= y(3);
	h(1) <= '0';
	h(2) <= not y(3);
	h(3) <= not y(3);
	h(4) <= y(3);
	h(5) <= y(3);
	h(6) <= '1';
	h(7) <= '1';
end estructural_mux;
